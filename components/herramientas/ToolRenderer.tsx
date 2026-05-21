'use client'

import CalculadoraElegibilidad from './CalculadoraElegibilidad'
import SimuladorPlazos from './SimuladorPlazos'
import ChecklistPermanencia from './ChecklistPermanencia'
import ChecklistTemporaria from './ChecklistTemporaria'
import ConsultarEstado from './ConsultarEstado'
import QuizVisas from './QuizVisas'
import CalculadoraMultas from './CalculadoraMultas'
import MatrizVisas from './MatrizVisas'

export default function ToolRenderer({ slug }: { slug: string }) {
  switch (slug) {
    case 'calculadora-elegibilidad':
      return <CalculadoraElegibilidad />
    case 'simulador-plazos':
      return <SimuladorPlazos />
    case 'checklist-permanencia-definitiva':
      return <ChecklistPermanencia />
    case 'checklist-temporaria':
      return <ChecklistTemporaria />
    case 'consultar-estado':
      return <ConsultarEstado />
    case 'quiz-visas':
      return <QuizVisas />
    case 'calculadora-multas':
      return <CalculadoraMultas />
    case 'matriz-visas':
      return <MatrizVisas />
    default:
      return null
  }
}

