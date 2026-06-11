-- Tabla de suscriptores para captura de email (lead magnets / avisos normativos)
CREATE TABLE IF NOT EXISTS subscribers (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  email text NOT NULL UNIQUE,
  source text NOT NULL DEFAULT 'unknown', -- desde qué página/recurso se suscribió
  created_at timestamptz NOT NULL DEFAULT now()
);

ALTER TABLE subscribers ENABLE ROW LEVEL SECURITY;

-- El frontend (anon key) solo puede insertar — nunca leer ni modificar la lista
CREATE POLICY "anon can subscribe"
  ON subscribers FOR INSERT
  TO anon
  WITH CHECK (true);
