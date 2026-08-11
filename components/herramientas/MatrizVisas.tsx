import Link from 'next/link'

interface SubcategoriaComparada {
  nombre: string
  slug: string
  fundamento: string
  acredita: string[]
  postulacion: string
  cautela: string
}

const SUBCATEGORIAS: SubcategoriaComparada[] = [
  {
    nombre: 'Acuerdo Mercosur',
    slug: 'mercosur',
    fundamento: 'Nacionalidad comprendida en el Acuerdo de Residencia de los Estados Partes del Mercosur, Bolivia y Chile.',
    acredita: ['Nacionalidad de Argentina, Bolivia, Brasil, Paraguay o Uruguay', 'Identidad y antecedentes exigidos por SERMIG'],
    postulacion: 'Es una de las subcategorías que puede admitir solicitud desde Chile en los casos definidos por el Decreto 177.',
    cautela: 'Ser nacional de otro país asociado no basta para quedar incluido en este acuerdo específico.',
  },
  {
    nombre: 'Reunificación familiar',
    slug: 'hijo-chileno',
    fundamento: 'Vínculo familiar reconocido con una persona chilena o titular de Residencia Definitiva.',
    acredita: ['Filiación, matrimonio u otro vínculo admitido', 'Documentos de identidad y certificados correspondientes'],
    postulacion: 'Los vínculos familiares pueden permitir postular excepcionalmente desde Chile, según el caso.',
    cautela: 'El parentesco y la calidad migratoria de la persona vinculada deben corresponder a los supuestos oficiales.',
  },
  {
    nombre: 'Actividades remuneradas',
    slug: 'contrato-trabajo',
    fundamento: 'Intención de realizar actividades lícitas remuneradas bajo una relación laboral o modalidad admitida.',
    acredita: ['Contrato, oferta u otro respaldo laboral aplicable', 'Antecedentes del empleador y documentos personales exigidos'],
    postulacion: 'La regla general es solicitar Residencia Temporal desde fuera de Chile, salvo una excepción legal aplicable.',
    cautela: 'Tener una oferta o contrato no autoriza por sí solo a trabajar ni garantiza la aprobación.',
  },
  {
    nombre: 'Estudios en establecimientos reconocidos',
    slug: 'estudiante',
    fundamento: 'Matrícula o aceptación para cursar estudios en una institución reconocida por el Estado.',
    acredita: ['Carta de matrícula o aceptación', 'Medios de subsistencia y demás antecedentes que indique el portal'],
    postulacion: 'Normalmente se revisa bajo la regla general de postulación desde el extranjero.',
    cautela: 'La admisión académica y el permiso migratorio son decisiones distintas.',
  },
  {
    nombre: 'Jubilados y rentistas',
    slug: 'jubilado-rentista',
    fundamento: 'Pensión de jubilación o rentas constantes provenientes de bienes raíces o activos financieros.',
    acredita: ['Origen, regularidad y disponibilidad de los ingresos', 'Documentos personales y financieros exigidos'],
    postulacion: 'La forma y lugar de solicitud deben confirmarse en la ficha oficial vigente.',
    cautela: 'No uses una cifra de ingresos tomada de terceros sin verificar el requisito actual del SERMIG.',
  },
  {
    nombre: 'Razones humanitarias',
    slug: 'razones-humanitarias',
    fundamento: 'Uno de los supuestos humanitarios expresamente regulados, acreditado con antecedentes del caso.',
    acredita: ['La situación humanitaria específica invocada', 'Documentos de respaldo pertinentes y verificables'],
    postulacion: 'Algunos supuestos humanitarios pueden solicitarse desde Chile conforme a la normativa.',
    cautela: 'No es una categoría residual para quien no cumple los requisitos de las demás subcategorías.',
  },
]

export default function MatrizVisas() {
  return (
    <div className="space-y-6">
      <div>
        <h2 className="text-2xl font-bold text-gray-900">Comparador de Residencias Temporales</h2>
        <p className="mt-2 text-gray-600">
          Compara el fundamento de cada opción antes de revisar sus requisitos. No se muestran
          “probabilidades de aprobación” ni plazos inventados: SERMIG evalúa cada solicitud.
        </p>
      </div>

      <div className="space-y-4">
        {SUBCATEGORIAS.map((item) => (
          <article key={item.nombre} className="rounded-xl border border-border p-5">
            <h3 className="text-lg font-bold text-gray-900">{item.nombre}</h3>
            <p className="mt-2 text-sm leading-relaxed text-gray-700">{item.fundamento}</p>

            <div className="mt-4 grid gap-4 sm:grid-cols-2">
              <div>
                <p className="text-sm font-semibold text-gray-900">Qué debes poder acreditar</p>
                <ul className="mt-2 space-y-1 text-sm text-gray-600 list-disc pl-5">
                  {item.acredita.map((dato) => <li key={dato}>{dato}</li>)}
                </ul>
              </div>
              <div>
                <p className="text-sm font-semibold text-gray-900">Lugar de postulación</p>
                <p className="mt-2 text-sm leading-relaxed text-gray-600">{item.postulacion}</p>
              </div>
            </div>

            <p className="mt-4 rounded-lg bg-amber-50 px-3 py-2 text-xs leading-relaxed text-amber-900">
              <strong>Atención:</strong> {item.cautela}
            </p>
            <Link
              href={`/residencia-temporal/${item.slug}`}
              className="mt-4 inline-block text-sm font-medium text-primary hover:underline"
            >
              Revisar guía de contexto →
            </Link>
          </article>
        ))}
      </div>

      <a
        href="https://serviciomigraciones.cl/residencia-temporal/subcategorias/"
        target="_blank"
        rel="noopener noreferrer"
        className="inline-block text-sm font-semibold text-primary hover:underline"
      >
        Ver todas las subcategorías y requisitos oficiales ↗
      </a>
    </div>
  )
}
