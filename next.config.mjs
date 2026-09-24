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
      {
        source: '/actualidad/nuevo-sueldo-minimo-553553-mayo-2026',
        destination: '/actualidad/sueldo-minimo-2026-tramites',
        permanent: true,
      },
      {
        source: '/nacionalizacion/proceso-naturalizacion',
        destination: '/nacionalizacion/carta-naturalizacion',
        permanent: true,
      },
      {
        source: '/nacionalizacion/paso-a-paso',
        destination: '/nacionalizacion/carta-naturalizacion',
        permanent: true,
      },
      {
        source: '/nacionalizacion/requisitos',
        destination: '/nacionalizacion/requisitos-nacionalidad',
        permanent: true,
      },
      {
        source: '/vivir-en-chile/arriendo',
        destination: '/vivir-en-chile/arriendo-vivienda',
        permanent: true,
      },
      {
        source: '/vivir-en-chile/afp-extranjero',
        destination: '/vivir-en-chile/pension-afp',
        permanent: true,
      },
      {
        source: '/vivir-en-chile/fonasa-isapre',
        destination: '/vivir-en-chile/sistema-salud',
        permanent: true,
      },
      {
        source: '/autodenuncia/que-es-autodenuncia',
        destination: '/autodenuncia',
        permanent: true,
      },
      {
        source: '/autodenuncia/estado-tramite',
        destination: '/autodenuncia',
        permanent: true,
      },
      {
        source: '/residencia-definitiva/como-solicitarla',
        destination: '/residencia-definitiva',
        permanent: true,
      },
      {
        source: '/problemas',
        destination: '/problemas-migratorios',
        permanent: true,
      },
      {
        source: '/problemas-migratorios/antecedentes-penales',
        destination: '/problemas-migratorios/antecedentes-penales-chile',
        permanent: true,
      },
      {
        source: '/problemas-migratorios/expulsion',
        destination: '/problemas-migratorios/expulsion-administrativa',
        permanent: true,
      },
      {
        source: '/problemas-migratorios/multa-migracion',
        destination: '/problemas-migratorios/multas-migratorias',
        permanent: true,
      },
      {
        source: '/problemas-migratorios-migratorios/:path*',
        destination: '/problemas-migratorios/:path*',
        permanent: true,
      },
      {
        source: '/problemas/antecedentes-penales',
        destination: '/problemas-migratorios/antecedentes-penales-chile',
        permanent: true,
      },
      {
        source: '/problemas/expulsion',
        destination: '/problemas-migratorios/expulsion-administrativa',
        permanent: true,
      },
      {
        source: '/problemas/multa-migracion',
        destination: '/problemas-migratorios/multas-migratorias',
        permanent: true,
      },
      {
        source: '/problemas/:path*',
        destination: '/problemas-migratorios/:path*',
        permanent: true,
      },
      {
        source: '/argentina/:path*',
        destination: '/paises/argentina/:path*',
        permanent: true,
      },
      {
        source: '/bolivia/:path*',
        destination: '/paises/bolivia/:path*',
        permanent: true,
      },
      {
        source: '/colombia/:path*',
        destination: '/paises/colombia/:path*',
        permanent: true,
      },
      {
        source: '/cuba/:path*',
        destination: '/paises/cuba/:path*',
        permanent: true,
      },
      {
        source: '/ecuador/:path*',
        destination: '/paises/ecuador/:path*',
        permanent: true,
      },
      {
        source: '/haiti/:path*',
        destination: '/paises/haiti/:path*',
        permanent: true,
      },
      {
        source: '/peru/:path*',
        destination: '/paises/peru/:path*',
        permanent: true,
      },
      {
        source: '/republica-dominicana/:path*',
        destination: '/paises/republica-dominicana/:path*',
        permanent: true,
      },
      {
        source: '/venezuela/:path*',
        destination: '/paises/venezuela/:path*',
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
