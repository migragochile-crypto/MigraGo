'use client'

import { useMemo, useState } from 'react'
import Link from 'next/link'

type Location = '' | 'outside' | 'regular' | 'pending' | 'expired'
type Goal = '' | 'residence' | 'permanent' | 'family' | 'work-study' | 'daily' | 'problem'

const MERCOSUR_COUNTRIES = new Set(['argentina', 'bolivia', 'brasil', 'colombia', 'ecuador', 'paraguay', 'peru', 'uruguay'])

const COUNTRY_GUIDES: Record<string, string> = {
  argentina: '/paises/argentina',
  bolivia: '/paises/bolivia',
  colombia: '/paises/colombia',
  cuba: '/paises/cuba',
  ecuador: '/paises/ecuador',
  haiti: '/paises/haiti',
  peru: '/paises/peru',
  'republica-dominicana': '/paises/republica-dominicana',
  venezuela: '/paises/venezuela',
}

interface Recommendation {
  title: string
  description: string
  href: string
  cta: string
}

function getRecommendation(location: Location, goal: Goal, country: string): Recommendation | null {
  if (!location || !goal) return null

  if (location === 'expired' || goal === 'problem') {
    return {
      title: 'Revisa primero tu situación migratoria actual',
      description: 'Empieza por identificar si corresponde regularización, multa, recurso o revisión de un rechazo.',
      href: location === 'expired' ? '/problemas-migratorios/visa-vencida' : '/problemas-migratorios',
      cta: 'Ver opciones para resolverlo',
    }
  }

  if (location === 'pending') {
    return {
      title: 'Consulta y organiza el seguimiento de tu solicitud',
      description: 'Revisa los canales oficiales, los estados habituales y qué hacer si el trámite no avanza.',
      href: '/herramientas/consultar-estado',
      cta: 'Consultar estado del trámite',
    }
  }

  if (goal === 'permanent') {
    return {
      title: 'Comprueba si cumples los requisitos de Residencia Definitiva',
      description: 'Revisa permanencia, ausencias, documentos y plazos antes de iniciar la solicitud.',
      href: '/residencia-definitiva',
      cta: 'Ver guía de Residencia Definitiva',
    }
  }

  if (goal === 'daily') {
    return {
      title: 'Organiza tus primeros pasos para vivir en Chile',
      description: 'RUT, cédula, cuenta bancaria, salud, trabajo, arriendo y otros trámites cotidianos.',
      href: '/vivir-en-chile',
      cta: 'Ver guía para vivir en Chile',
    }
  }

  if ((goal === 'residence' || goal === 'work-study') && MERCOSUR_COUNTRIES.has(country)) {
    return {
      title: 'Revisa la vía de Residencia Temporal por reciprocidad',
      description: 'Tu nacionalidad puede abrir una ruta específica. Confirma los requisitos vigentes antes de solicitar.',
      href: '/residencia-temporal/mercosur',
      cta: 'Revisar esta alternativa',
    }
  }

  if (goal === 'family') {
    return {
      title: 'Identifica la categoría familiar que corresponde',
      description: 'La ruta cambia según el vínculo y la situación de la persona con la que te reúnes en Chile.',
      href: '/herramientas/calculadora-elegibilidad',
      cta: 'Usar la calculadora de elegibilidad',
    }
  }

  return {
    title: 'Compara las categorías de Residencia Temporal',
    description: 'Revisa las alternativas para trabajar, estudiar, reunirte con tu familia o establecerte en Chile.',
    href: '/residencia-temporal',
    cta: 'Ver opciones de Residencia Temporal',
  }
}

export default function MigrationRouteFinder() {
  const [location, setLocation] = useState<Location>('')
  const [goal, setGoal] = useState<Goal>('')
  const [country, setCountry] = useState('')
  const recommendation = useMemo(() => getRecommendation(location, goal, country), [location, goal, country])
  const countryGuide = COUNTRY_GUIDES[country]

  return (
    <section id="orientador" className="bg-surface px-4 py-16" aria-labelledby="route-finder-title">
      <div className="mx-auto max-w-6xl overflow-hidden rounded-3xl border border-gray-200 bg-white shadow-sm">
        <div className="grid lg:grid-cols-[0.85fr_1.15fr]">
          <div className="bg-primary p-7 text-white sm:p-10">
            <p className="text-sm font-semibold uppercase tracking-[0.16em] text-white/65">Orientador MigraGo</p>
            <h2 id="route-finder-title" className="mt-3 text-3xl font-bold leading-tight">
              Encuentra un buen punto de partida
            </h2>
            <p className="mt-4 leading-relaxed text-white/80">
              Responde tres preguntas. Te mostraremos la guía que conviene revisar primero, sin guardar tus respuestas.
            </p>
            <div className="mt-8 flex items-start gap-3 rounded-2xl border border-white/15 bg-white/5 p-4 text-sm text-white/75">
              <svg aria-hidden="true" className="mt-0.5 h-5 w-5 shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 9v4m0 4h.01M10.3 3.7 2.8 17a2 2 0 0 0 1.75 3h14.9a2 2 0 0 0 1.75-3L13.7 3.7a2 2 0 0 0-3.4 0Z" />
              </svg>
              <p>La recomendación es orientativa. Los requisitos oficiales dependen de cada caso.</p>
            </div>
          </div>

          <div className="p-7 sm:p-10">
            <div className="grid gap-5 sm:grid-cols-2">
              <label className="block text-sm font-semibold text-gray-800">
                1. ¿Dónde estás actualmente?
                <select
                  value={location}
                  onChange={(event) => setLocation(event.target.value as Location)}
                  className="mt-2 h-12 w-full rounded-xl border border-gray-300 bg-white px-3 font-normal text-gray-800 outline-none transition focus:border-primary focus:ring-4 focus:ring-primary/10"
                >
                  <option value="">Selecciona una opción</option>
                  <option value="outside">Fuera de Chile</option>
                  <option value="regular">En Chile con situación vigente</option>
                  <option value="pending">En Chile con una solicitud en trámite</option>
                  <option value="expired">En Chile con permiso vencido o situación irregular</option>
                </select>
              </label>

              <label className="block text-sm font-semibold text-gray-800">
                2. ¿Qué necesitas principalmente?
                <select
                  value={goal}
                  onChange={(event) => setGoal(event.target.value as Goal)}
                  className="mt-2 h-12 w-full rounded-xl border border-gray-300 bg-white px-3 font-normal text-gray-800 outline-none transition focus:border-primary focus:ring-4 focus:ring-primary/10"
                >
                  <option value="">Selecciona una opción</option>
                  <option value="residence">Solicitar una residencia</option>
                  <option value="permanent">Solicitar Residencia Definitiva</option>
                  <option value="family">Reunirme con mi familia</option>
                  <option value="work-study">Trabajar o estudiar</option>
                  <option value="daily">Resolver trámites para vivir en Chile</option>
                  <option value="problem">Resolver un problema migratorio</option>
                </select>
              </label>

              <label className="block text-sm font-semibold text-gray-800 sm:col-span-2">
                3. País de nacionalidad <span className="font-normal text-gray-500">(opcional)</span>
                <select
                  value={country}
                  onChange={(event) => setCountry(event.target.value)}
                  className="mt-2 h-12 w-full rounded-xl border border-gray-300 bg-white px-3 font-normal text-gray-800 outline-none transition focus:border-primary focus:ring-4 focus:ring-primary/10"
                >
                  <option value="">Prefiero no indicarlo</option>
                  <option value="argentina">Argentina</option>
                  <option value="bolivia">Bolivia</option>
                  <option value="brasil">Brasil</option>
                  <option value="colombia">Colombia</option>
                  <option value="cuba">Cuba</option>
                  <option value="ecuador">Ecuador</option>
                  <option value="haiti">Haití</option>
                  <option value="paraguay">Paraguay</option>
                  <option value="peru">Perú</option>
                  <option value="republica-dominicana">República Dominicana</option>
                  <option value="uruguay">Uruguay</option>
                  <option value="venezuela">Venezuela</option>
                  <option value="otro">Otro país</option>
                </select>
              </label>
            </div>

            <div className="mt-7 min-h-40" aria-live="polite">
              {recommendation ? (
                <div className="rounded-2xl border border-primary/20 bg-primary/5 p-5">
                  <p className="text-xs font-bold uppercase tracking-wider text-primary">Punto de partida recomendado</p>
                  <h3 className="mt-2 text-xl font-bold text-gray-900">{recommendation.title}</h3>
                  <p className="mt-2 text-sm leading-relaxed text-gray-600">{recommendation.description}</p>
                  <div className="mt-5 flex flex-col gap-3 sm:flex-row sm:items-center">
                    <Link href={recommendation.href} className="inline-flex justify-center rounded-xl bg-primary px-5 py-3 text-sm font-semibold text-white transition hover:bg-primary-dark">
                      {recommendation.cta}
                    </Link>
                    {countryGuide && (
                      <Link href={countryGuide} className="text-center text-sm font-semibold text-primary hover:underline">
                        Ver también la guía de tu país →
                      </Link>
                    )}
                  </div>
                </div>
              ) : (
                <div className="flex min-h-40 items-center justify-center rounded-2xl border border-dashed border-gray-300 bg-surface p-6 text-center text-sm text-gray-500">
                  Selecciona dónde estás y qué necesitas para recibir una recomendación.
                </div>
              )}
            </div>
          </div>
        </div>
      </div>
    </section>
  )
}
