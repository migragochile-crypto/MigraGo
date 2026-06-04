-- CTR improvements for MERCOSUR and casos-especiales articles

-- residencia-temporal/mercosur
-- Query: "residencia mercosur" at pos 52 — needs better title to climb
UPDATE articles SET
  title = 'Residencia Temporal MERCOSUR en Chile 2025: Quién Califica y Cómo Pedirla',
  meta_description = 'Si eres argentino, boliviano, colombiano, peruano o de otro país MERCOSUR, puedes obtener residencia en Chile más fácil. Requisitos y proceso paso a paso 2025.',
  updated_at = NOW()
WHERE slug = 'residencia-temporal/mercosur';

-- residencia-definitiva/casos-especiales
-- Query: "visa definitiva para niños en chile requisitos" at pos 36
-- Add h1 and meta targeting children/minors angle
UPDATE articles SET
  title = 'Casos Especiales para Residencia Definitiva en Chile: Niños, Cónyuge e Inversores',
  meta_description = 'Casos especiales para obtener la Residencia Definitiva en Chile: hijos menores, cónyuge chileno, inversionistas y refugiados. Requisitos y proceso 2025.',
  updated_at = NOW()
WHERE slug = 'residencia-definitiva/casos-especiales';
