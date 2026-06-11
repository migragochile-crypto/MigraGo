'use client'

import { useState } from 'react'

interface Props {
  /** Identificador de la página/recurso para saber de dónde vino el suscriptor */
  source: string
  /** Título del recurso ofrecido */
  title?: string
  /** Descripción breve */
  description?: string
  /** URL de la versión imprimible que se desbloquea al suscribirse */
  downloadHref?: string
}

export default function LeadMagnet({
  source,
  title = 'Recibe avisos cuando cambie la normativa',
  description = 'Te avisamos por correo cuando el SERMIG cambie requisitos o plazos que afecten tu trámite. Sin spam.',
  downloadHref,
}: Props) {
  const [email, setEmail] = useState('')
  const [status, setStatus] = useState<'idle' | 'loading' | 'success' | 'error'>('idle')
  const [errorMsg, setErrorMsg] = useState('')

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault()
    setStatus('loading')
    setErrorMsg('')
    try {
      const res = await fetch('/api/subscribe', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ email, source }),
      })
      const data = await res.json()
      if (!res.ok) {
        setErrorMsg(data.error ?? 'Error inesperado. Intenta de nuevo.')
        setStatus('error')
        return
      }
      setStatus('success')
    } catch {
      setErrorMsg('Error de conexión. Intenta de nuevo.')
      setStatus('error')
    }
  }

  if (status === 'success') {
    return (
      <div className="rounded-2xl border border-green-200 bg-green-50 p-6 text-center">
        <p className="font-semibold text-green-800">¡Listo! Quedaste suscrito.</p>
        {downloadHref ? (
          <a
            href={downloadHref}
            target="_blank"
            rel="noopener noreferrer"
            className="mt-3 inline-block bg-primary text-white font-semibold px-6 py-3 rounded-xl hover:bg-primary-dark transition-colors text-sm"
          >
            📄 Abrir versión imprimible (PDF)
          </a>
        ) : (
          <p className="mt-1 text-sm text-green-700">
            Te avisaremos cuando haya cambios relevantes en la normativa.
          </p>
        )}
      </div>
    )
  }

  return (
    <div className="rounded-2xl border border-primary/20 bg-primary/5 p-6">
      <p className="font-semibold text-gray-900">{title}</p>
      <p className="mt-1 text-sm text-gray-600">{description}</p>
      <form onSubmit={handleSubmit} className="mt-4 flex flex-col sm:flex-row gap-3">
        <input
          type="email"
          required
          value={email}
          onChange={(e) => setEmail(e.target.value)}
          placeholder="tu@correo.com"
          className="flex-1 rounded-xl border border-border px-4 py-3 text-sm focus:outline-none focus:ring-2 focus:ring-primary/40 bg-white"
          aria-label="Tu correo electrónico"
        />
        <button
          type="submit"
          disabled={status === 'loading'}
          className="bg-primary text-white font-semibold px-6 py-3 rounded-xl hover:bg-primary-dark transition-colors text-sm disabled:opacity-60"
        >
          {status === 'loading' ? 'Enviando…' : downloadHref ? 'Descargar gratis' : 'Suscribirme'}
        </button>
      </form>
      {status === 'error' && <p className="mt-2 text-xs text-red-600">{errorMsg}</p>}
      <p className="mt-3 text-xs text-gray-400">
        Solo usamos tu correo para avisos del trámite. Puedes darte de baja cuando quieras.{' '}
        <a href="/privacidad" className="underline hover:text-gray-600">Política de privacidad</a>
      </p>
    </div>
  )
}
