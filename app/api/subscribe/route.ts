import { NextResponse } from 'next/server'
import { createClient } from '@supabase/supabase-js'

const EMAIL_RE = /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/

export async function POST(request: Request) {
  let body: { email?: string; source?: string }
  try {
    body = await request.json()
  } catch {
    return NextResponse.json({ error: 'Solicitud inválida' }, { status: 400 })
  }

  const email = body.email?.trim().toLowerCase() ?? ''
  const source = (body.source ?? 'unknown').slice(0, 100)

  if (!EMAIL_RE.test(email) || email.length > 254) {
    return NextResponse.json({ error: 'Email inválido' }, { status: 400 })
  }

  const url = process.env.NEXT_PUBLIC_SUPABASE_URL
  const key = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY
  if (!url || !key) {
    return NextResponse.json({ error: 'Servicio no disponible' }, { status: 503 })
  }

  const supabase = createClient(url, key)
  const { error } = await supabase.from('subscribers').insert({ email, source })

  // 23505 = unique_violation: ya estaba suscrito — lo tratamos como éxito
  if (error && error.code !== '23505') {
    return NextResponse.json({ error: 'No se pudo guardar. Intenta de nuevo.' }, { status: 500 })
  }

  return NextResponse.json({ ok: true })
}
