/** @type {import('next').NextConfig} */
const nextConfig = {
  async redirects() {
    return [
      {
        source: '/nacionalizacion/doble-ciudadania',
        destination: '/nacionalizacion/doble-nacionalidad',
        permanent: true,
      },
      {
        source: '/herramientas/quiz-visas',
        destination: '/herramientas/calculadora-elegibilidad',
        permanent: true,
      },
      {
        source: '/residencia-temporal/responsabilidad-democratica',
        destination: '/residencia-temporal',
        permanent: true,
      },
      {
        source: '/paises/venezuela/visa-vrd',
        destination: '/paises/venezuela',
        permanent: true,
      },
    ]
  },
  async headers() {
    return [
      {
        source: '/(.*)',
        headers: [
          { key: 'X-Frame-Options', value: 'DENY' },
          { key: 'X-Content-Type-Options', value: 'nosniff' },
          { key: 'Referrer-Policy', value: 'strict-origin-when-cross-origin' },
          {
            key: 'Permissions-Policy',
            value: 'camera=(), microphone=(), geolocation=()',
          },
        ],
      },
    ]
  },
}

export default nextConfig
