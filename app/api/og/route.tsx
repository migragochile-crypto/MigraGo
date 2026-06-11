import { ImageResponse } from 'next/og'

export const runtime = 'edge'

export async function GET(request: Request) {
  const { searchParams } = new URL(request.url)
  const title = (searchParams.get('title') ?? 'Tu guía migratoria en Chile').slice(0, 120)
  const section = (searchParams.get('section') ?? '').slice(0, 40)

  return new ImageResponse(
    (
      <div
        style={{
          width: '100%',
          height: '100%',
          display: 'flex',
          flexDirection: 'column',
          justifyContent: 'space-between',
          backgroundColor: '#0f3460',
          backgroundImage: 'linear-gradient(135deg, #0f3460 0%, #16213e 100%)',
          padding: '60px 70px',
          fontFamily: 'sans-serif',
        }}
      >
        {/* Marca */}
        <div style={{ display: 'flex', alignItems: 'center' }}>
          <span style={{ fontSize: 40, fontWeight: 700, color: '#ffffff' }}>Migra</span>
          <span style={{ fontSize: 40, fontWeight: 700, color: '#60a5fa' }}>Go</span>
          {section ? (
            <span
              style={{
                marginLeft: 24,
                fontSize: 22,
                color: '#93c5fd',
                backgroundColor: 'rgba(96,165,250,0.15)',
                padding: '6px 18px',
                borderRadius: 999,
              }}
            >
              {section}
            </span>
          ) : null}
        </div>

        {/* Título */}
        <div
          style={{
            display: 'flex',
            fontSize: title.length > 70 ? 44 : 54,
            fontWeight: 700,
            color: '#ffffff',
            lineHeight: 1.2,
            maxWidth: 1000,
          }}
        >
          {title}
        </div>

        {/* Pie */}
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
          <span style={{ fontSize: 24, color: '#93c5fd' }}>www.migrago.cl</span>
          <span style={{ fontSize: 22, color: 'rgba(255,255,255,0.6)' }}>
            Guías basadas en Ley 21.325 y fuentes oficiales
          </span>
        </div>
      </div>
    ),
    { width: 1200, height: 630 }
  )
}
