BEGIN;

-- Update outdated terms to reflect 2022 terminology
UPDATE glossary_terms SET
  term = 'Visa Temporaria (término anterior)',
  definition = 'Nombre anterior del permiso de residencia temporal en Chile, usado hasta la entrada en vigor de la Ley 21.325 en 2022. Actualmente se denomina Residencia Temporal. Ver: Residencia Temporal.'
WHERE slug = 'visa-temporaria';

UPDATE glossary_terms SET
  term = 'Permanencia Definitiva (término anterior)',
  definition = 'Nombre anterior del permiso de residencia permanente en Chile, usado hasta la entrada en vigor de la Ley 21.325 en 2022. Actualmente se denomina Residencia Definitiva. Ver: Residencia Definitiva.'
WHERE slug = 'permanencia-definitiva';

-- New terms
INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('residencia-temporal',
 'Residencia Temporal',
 'Permiso migratorio vigente desde la Ley 21.325 (2022) que autoriza a un extranjero a vivir y trabajar en Chile por un período determinado, generalmente 2 años, renovable. Reemplaza a la antigua visa temporaria. Se solicita en línea ante el SERMIG.',
 ARRAY['residencia-temporal', 'residencia-temporal/contrato-trabajo', 'residencia-temporal/hijo-chileno'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('residencia-definitiva',
 'Residencia Definitiva',
 'Permiso migratorio permanente que autoriza a vivir y trabajar en Chile sin límite de tiempo. Se obtiene generalmente tras 2 años continuos de residencia temporal (1 año si se tiene cónyuge o hijos chilenos). Reemplaza a la antigua permanencia definitiva.',
 ARRAY['residencia-definitiva', 'residencia-definitiva/requisitos', 'residencia-definitiva/como-solicitarla'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('pdi',
 'PDI (Policía de Investigaciones de Chile)',
 'Policía de Investigaciones de Chile. Organismo encargado del control migratorio en los pasos fronterizos y del proceso de autodenuncia para extranjeros en situación irregular.',
 ARRAY['autodenuncia', 'autodenuncia/pdi-paso-a-paso'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('srcei',
 'SRCeI (Servicio de Registro Civil e Identificación)',
 'Servicio de Registro Civil e Identificación de Chile. Emite la cédula de identidad para extranjeros con residencia vigente, certificados de matrimonio, nacimiento y defunción, y tramita la nacionalización.',
 ARRAY['vivir-en-chile/cedula-extranjero', 'nacionalizacion'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('apostilla',
 'Apostilla',
 'Sello oficial que certifica la autenticidad de un documento público para que sea reconocido en otro país. Existe gracias al Convenio de La Haya de 1961. Chile la exige para documentos extranjeros presentados ante el SERMIG (acta de nacimiento, antecedentes penales, etc.). No aplica para Venezuela (suspendida desde 2017) ni Haití (no firmó el Convenio).',
 ARRAY['vivir-en-chile/apostilla-traduccion', 'vivir-en-chile/apostilla-por-pais'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('legalizacion-consular',
 'Legalización Consular',
 'Proceso alternativo a la apostilla para validar documentos de países que no firmaron el Convenio de La Haya (como Haití) o donde la apostilla está suspendida (Venezuela). Requiere autenticación sucesiva por el Ministerio de Relaciones Exteriores del país de origen y el Consulado de Chile.',
 ARRAY['vivir-en-chile/apostilla-por-pais', 'haiti/documentos-traducidos'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('convenio-la-haya',
 'Convenio de La Haya',
 'Tratado internacional de 1961 que simplifica la autenticación de documentos públicos entre países firmantes mediante la apostilla. Chile es firmante. Venezuela, aunque fue firmante, tiene la apostilla suspendida desde 2017. Haití nunca adhirió.',
 ARRAY['vivir-en-chile/apostilla-por-pais'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('antecedentes-penales',
 'Certificado de Antecedentes Penales',
 'Documento oficial que certifica si una persona tiene o no condenas penales vigentes. El SERMIG lo exige para solicitar cualquier tipo de residencia. Debe ser emitido por la autoridad del país de origen, apostillado y no tener más de 90 días de antigüedad al presentarlo.',
 ARRAY['vivir-en-chile/apostilla-por-pais'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('rut',
 'RUT (Rol Único Tributario)',
 'Número de identificación tributaria y personal en Chile. Los extranjeros con visa vigente (o incluso en trámite en ciertos casos) pueden obtenerlo en el SII o directamente al sacar la cédula de identidad en el SRCeI. Es indispensable para trabajar formalmente, abrir cuentas bancarias y acceder a servicios.',
 ARRAY['vivir-en-chile/rut-extranjero'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('cedula-identidad-extranjero',
 'Cédula de Identidad para Extranjeros',
 'Documento de identidad emitido por el SRCeI para extranjeros con residencia temporal o definitiva vigente en Chile. Tiene el mismo valor legal que el carné de identidad chileno para transacciones dentro del país.',
 ARRAY['vivir-en-chile/cedula-extranjero', 'vivir-en-chile/rut-extranjero'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('prorroga',
 'Prórroga',
 'Extensión del plazo de vigencia de un permiso migratorio antes de que venza. Se solicita ante el SERMIG con al menos 30 días de anticipación al vencimiento. No es lo mismo que renovación: la prórroga extiende el permiso actual, la renovación inicia un nuevo período.',
 ARRAY['residencia-temporal/prorroga', 'residencia-definitiva/prorroga-fuera-chile'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('cambio-categoria',
 'Cambio de Categoría',
 'Solicitud para modificar el tipo de permiso de residencia mientras se está en Chile. Por ejemplo, pasar de residencia temporal por contrato de trabajo a residencia temporal por hijo chileno. Se tramita ante el SERMIG sin necesidad de salir del país.',
 ARRAY['residencia-temporal/cambio-categoria'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('recurso-de-reposicion',
 'Recurso de Reposición',
 'Mecanismo legal para impugnar ante el SERMIG una resolución migratoria adversa (rechazo de visa, multa, etc.). Se presenta por escrito dentro del plazo legal (generalmente 5 días hábiles desde la notificación) y solicita que el mismo organismo reconsidere su decisión.',
 ARRAY['problemas-migratorios/recurso-administrativo', 'problemas-migratorios/reposicion'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('notificacion-irregular',
 'Notificación de Irregularidad',
 'Comunicación oficial del SERMIG que informa a un extranjero que se encuentra en situación migratoria irregular en Chile. Activa un plazo para regularizar la situación o presentar recurso. No equivale a una orden de expulsión.',
 ARRAY['problemas-migratorios/notificacion-irregular', 'autodenuncia'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('expulsion-administrativa',
 'Expulsión Administrativa',
 'Medida por la cual las autoridades chilenas (SERMIG, PDI o juez) ordenan a un extranjero abandonar el territorio nacional. Puede acompañarse de una prohibición de ingreso. Es impugnable mediante recurso de reposición o amparo ante los tribunales.',
 ARRAY['problemas-migratorios/expulsion-administrativa', 'problemas-migratorios/recurso-administrativo'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('multa-migratoria',
 'Multa Migratoria',
 'Sanción económica impuesta a extranjeros por permanecer en Chile con visa vencida o incumplir otras obligaciones migratorias. Se mide en UTM (Unidad Tributaria Mensual) y debe pagarse antes de regularizar la situación o salir del país.',
 ARRAY['problemas-migratorios/multas-migratorias'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('prohibicion-ingreso',
 'Prohibición de Ingreso',
 'Medida que impide a una persona volver a ingresar a Chile por un período determinado, generalmente como consecuencia de una expulsión o de infracciones graves a la ley migratoria. Puede ser temporal o permanente.',
 ARRAY['problemas-migratorios/prohibicion-ingreso'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('fonasa',
 'FONASA (Fondo Nacional de Salud)',
 'Sistema público de salud chileno. Los extranjeros con residencia vigente y que cotizan en una AFP pueden afiliarse a FONASA, lo que les da acceso a atención médica a bajo costo en hospitales y consultorios públicos.',
 ARRAY['vivir-en-chile/fonasa-isapre'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('isapre',
 'ISAPRE (Institución de Salud Previsional)',
 'Sistema privado de salud en Chile. Es una alternativa a FONASA para quienes prefieren prestadores privados. Los extranjeros con contrato de trabajo pueden elegir entre FONASA o una ISAPRE para sus cotizaciones de salud.',
 ARRAY['vivir-en-chile/fonasa-isapre'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('afp',
 'AFP (Administradora de Fondos de Pensiones)',
 'Entidad privada que administra los fondos de pensiones en Chile. Todo trabajador con contrato formal debe cotizar obligatoriamente en una AFP (10% de la remuneración imponible). Los extranjeros con contrato de trabajo están sujetos a la misma obligación.',
 ARRAY['vivir-en-chile/afp-extranjero'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('seguro-cesantia',
 'Seguro de Cesantía',
 'Beneficio para trabajadores que pierden su empleo en Chile, financiado con cotizaciones del trabajador y del empleador. Los extranjeros con contrato de trabajo indefinido o a plazo fijo tienen derecho a este beneficio en las mismas condiciones que los chilenos.',
 ARRAY['vivir-en-chile/seguro-cesantia'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('homologacion-titulo',
 'Homologación de Título',
 'Proceso de reconocimiento oficial en Chile de un título profesional universitario obtenido en el extranjero. Para profesiones reguladas (médico, abogado, arquitecto, etc.) la homologación la otorga el organismo rector de cada profesión. Para otras, la gestiona directamente una universidad chilena.',
 ARRAY['vivir-en-chile/convalidacion-titulos'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('convalidacion-estudios',
 'Convalidación de Estudios',
 'Proceso mediante el cual una institución educativa chilena reconoce asignaturas o niveles de estudio cursados en el exterior, permitiendo al estudiante continuar sus estudios en Chile sin repetir materias ya aprobadas. Distinto de la homologación de título (que aplica a profesionales ya titulados).',
 ARRAY['vivir-en-chile/convalidacion-titulos'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('mercosur-residencia',
 'Acuerdo de Residencia MERCOSUR',
 'Convenio que permite a ciudadanos de Argentina, Bolivia, Brasil, Colombia, Ecuador, Paraguay, Perú y Uruguay solicitar residencia temporal en Chile de forma simplificada, con menos requisitos documentales. Venezuela, Haití y República Dominicana no están incluidos.',
 ARRAY['residencia-temporal/mercosur', 'peru/visa-mercosur', 'colombia/visa-mercosur', 'argentina/visa-mercosur'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('ley-migracion',
 'Ley 21.325 (Ley de Migración y Extranjería)',
 'Ley chilena vigente desde 2022 que rige el sistema migratorio del país. Reemplazó el decreto ley de 1975. Introdujo los conceptos de Residencia Temporal y Residencia Definitiva (en reemplazo de visa temporaria y permanencia definitiva), creó el SERMIG y estableció nuevos procedimientos y categorías.',
 ARRAY['residencia-temporal', 'residencia-definitiva', 'autodenuncia'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('oferta-laboral',
 'Oferta Laboral (migración)',
 'Documento firmado por un empleador chileno que certifica su intención de contratar a un extranjero, utilizado como requisito para solicitar la Residencia Temporal por oferta laboral. Distinto del contrato de trabajo: la oferta precede al contrato y permite gestionar la visa antes de empezar a trabajar.',
 ARRAY['residencia-temporal/oferta-laboral'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('reagrupacion-familiar',
 'Reagrupación Familiar',
 'Proceso mediante el cual un extranjero con residencia en Chile solicita un permiso de residencia para sus familiares directos (cónyuge, hijos menores) para que puedan reunirse con él en el país.',
 ARRAY['residencia-temporal/hijo-chileno', 'residencia-temporal/pareja-chilena', 'vivir-en-chile/traer-familia'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('saime',
 'SAIME (Venezuela)',
 'Servicio Administrativo de Identificación, Migración y Extranjería de Venezuela. Organismo que emite pasaportes, cédulas de identidad y documenta los movimientos migratorios de los ciudadanos venezolanos.',
 ARRAY['venezuela/pasaporte'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('rejnap',
 'REJNAP (Perú)',
 'Registro Judicial de Condenas del Poder Judicial del Perú. Emite el certificado de antecedentes penales para ciudadanos peruanos, disponible en línea en pj.gob.pe. Es el documento equivalente al que exige el SERMIG de Chile para trámites de residencia.',
 ARRAY['peru/antecedentes-penales'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('rnr',
 'RNR (Argentina)',
 'Registro Nacional de Reincidencia de Argentina. Dependiente del Ministerio de Justicia, emite el certificado de antecedentes penales para ciudadanos argentinos en rnr.jus.gob.ar. La apostilla del documento la gestiona la Cancillería argentina.',
 ARRAY['argentina/antecedentes-penales'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('reniec',
 'RENIEC (Perú)',
 'Registro Nacional de Identificación y Estado Civil del Perú. Emite el DNI, partidas de nacimiento, actas de matrimonio y otros documentos civiles peruanos. Para trámites migratorios en Chile, los documentos del RENIEC requieren apostilla del Ministerio de Relaciones Exteriores del Perú.',
 ARRAY['peru/antecedentes-penales', 'vivir-en-chile/apostilla-por-pais'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('mpprijp',
 'MPPRIJP (Venezuela)',
 'Ministerio del Poder Popular para Relaciones Interiores, Justicia y Paz de Venezuela. A través de su sistema SIIPOL, emite el certificado de antecedentes penales venezolano. La apostilla de este certificado está suspendida desde 2017.',
 ARRAY['venezuela/antecedentes-penales'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('empadronamiento-biometrico',
 'Empadronamiento Biométrico',
 'Registro de datos biométricos (huellas dactilares, fotografía) realizado por la PDI como parte del proceso de autodenuncia. Es obligatorio y se realiza en una comisaría de la PDI. Una vez completado, el extranjero recibe un certificado de empadronamiento.',
 ARRAY['autodenuncia', 'autodenuncia/empadronamiento-biometrico', 'autodenuncia/pdi-paso-a-paso'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('utm',
 'UTM (Unidad Tributaria Mensual)',
 'Unidad de medida usada en Chile para expresar valores tributarios y multas, reajustada mensualmente según la inflación. Las multas migratorias se expresan en UTM. Su valor exacto puede consultarse en el SII (sii.cl).',
 ARRAY['problemas-migratorios/multas-migratorias'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('traduccion-jurada',
 'Traducción Jurada',
 'Traducción oficial de un documento realizada por un traductor certificado (jurado) inscrito ante el Ministerio de Relaciones Exteriores de Chile. El SERMIG la exige cuando los documentos están en un idioma distinto al español. Obligatoria para documentos haitianos (créole/francés).',
 ARRAY['vivir-en-chile/apostilla-traduccion', 'haiti/documentos-traducidos'])

ON CONFLICT (slug) DO NOTHING;

INSERT INTO glossary_terms (slug, term, definition, related_slugs) VALUES

('razon-humanitaria',
 'Residencia por Razones Humanitarias',
 'Categoría de Residencia Temporal para extranjeros en situación de vulnerabilidad acreditada: víctimas de trata de personas, violencia intrafamiliar, refugiados o personas sin otra categoría disponible. Se evalúa caso a caso por el SERMIG.',
 ARRAY['residencia-temporal/razones-humanitarias'])

ON CONFLICT (slug) DO NOTHING;

COMMIT;
