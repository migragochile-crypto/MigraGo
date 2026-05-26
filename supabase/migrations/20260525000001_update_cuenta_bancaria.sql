UPDATE articles SET
  title = 'Cuenta Bancaria para Extranjeros en Chile 2025: Con y Sin RUT',
  h1 = 'Cómo abrir cuenta bancaria siendo extranjero en Chile',
  meta_description = 'Cómo abrir una cuenta bancaria en Chile siendo extranjero: opciones con RUT, sin RUT, y antes de llegar desde tu país. Qué banco acepta extranjeros en 2025.',
  content = $content$<h2>¿Pueden los extranjeros abrir cuentas bancarias en Chile?</h2>
<p><strong>Sí</strong>, pero las opciones dependen de si ya tienes RUT o no. A continuación explicamos ambos casos.</p>

<h2>Si ya tienes RUT y cédula de extranjero</h2>
<p>Esta es la situación más sencilla. Con tu cédula de extranjero vigente (que incluye el RUT) puedes acceder a la mayoría de los bancos.</p>

<h3>Documentos que generalmente piden</h3>
<ul>
  <li>Cédula de identidad de extranjero <strong>vigente</strong>.</li>
  <li>Pasaporte vigente.</li>
  <li>Comprobante de domicilio (cuenta de servicio o contrato de arriendo).</li>
  <li>Algunos bancos piden liquidaciones de sueldo o contrato de trabajo.</li>
</ul>

<h3>Situación por banco (referencial 2025)</h3>
<ul>
  <li><strong>BancoEstado (CuentaRUT):</strong> el más accesible. Solo pide cédula de extranjero y RUT. Sin exigencia de antigüedad laboral ni ingresos mínimos.</li>
  <li><strong>Banco Santander:</strong> acepta extranjeros con cédula vigente y contrato de trabajo.</li>
  <li><strong>Banco de Chile:</strong> suele pedir antigüedad laboral de 6 meses o más.</li>
  <li><strong>Scotiabank:</strong> similar a Banco de Chile — más restrictivo con extranjeros.</li>
  <li><strong>MACH (BancoEstado digital):</strong> cuenta 100% en línea, sin sucursal. Solo necesitas RUT y cédula. Ideal para recién llegados.</li>
</ul>

<h2>Si no tienes RUT todavía (recién llegado)</h2>
<p>Sin RUT las opciones bancarias tradicionales están cerradas, pero hay alternativas digitales que funcionan bien para el día a día:</p>
<ul>
  <li><strong>Mercado Pago:</strong> billetera digital que acepta pasaporte extranjero para registrarse. Permite recibir pagos, hacer transferencias y pagar en comercios. Es la opción más accesible sin RUT.</li>
  <li><strong>Prepago Multicaja:</strong> tarjeta prepago que puedes cargar en efectivo. No requiere cuenta bancaria ni RUT.</li>
  <li><strong>Western Union / MoneyGram:</strong> para recibir dinero desde el exterior en efectivo, sin necesidad de cuenta bancaria.</li>
</ul>
<p>Una vez que obtengas el RUT provisorio del SII, algunas billeteras digitales amplían sus funciones. Con el RUT definitivo (cédula de extranjero) puedes acceder a BancoEstado y MACH.</p>

<h2>¿Puedo abrir una cuenta antes de llegar a Chile?</h2>
<p>No directamente. Los bancos chilenos exigen estar presente en Chile con documentación local (cédula de extranjero o al menos RUT provisorio). Sin embargo, puedes prepararte antes de llegar:</p>
<ul>
  <li>Registrate en <strong>Mercado Pago</strong> con tu email — podrás vincularlo a una cuenta chilena después.</li>
  <li>Lleva suficiente efectivo o una tarjeta internacional para los primeros días.</li>
  <li>Gestiona el RUT provisorio del SII en línea apenas puedas — es el primer paso para acceder a servicios financieros.</li>
</ul>

<h2>Cuenta corriente vs cuenta vista vs CuentaRUT</h2>
<ul>
  <li><strong>CuentaRUT (BancoEstado):</strong> cuenta vista gratuita. Sin mantención, con tarjeta de débito. La más accesible para extranjeros. Límite de saldo aplicable.</li>
  <li><strong>Cuenta vista:</strong> similar a CuentaRUT, sin chequera ni línea de crédito.</li>
  <li><strong>Cuenta corriente:</strong> incluye chequera y acceso a crédito. Requiere historial crediticio en Chile — difícil de obtener recién llegado.</li>
</ul>
<p>El camino habitual es: <strong>CuentaRUT → cuenta vista en otro banco → cuenta corriente</strong> a medida que construyes historial.</p>

<h2>Consejos prácticos</h2>
<ul>
  <li>Empieza por MACH o CuentaRUT — son los de menor barrera de entrada.</li>
  <li>Lleva todos los documentos originales y fotocopias.</li>
  <li>Si tienes contrato de trabajo, úsalo como respaldo aunque no sea obligatorio.</li>
  <li>El historial crediticio en Chile se construye desde cero — es normal comenzar con una cuenta básica.</li>
</ul>$content$,
  faq_items = '[
    {"q": "¿Puedo abrir cuenta bancaria sin RUT en Chile?", "a": "No en bancos tradicionales. Sin RUT, las opciones son Mercado Pago (acepta pasaporte) y tarjetas prepago físicas. Una vez que obtienes el RUT provisorio del SII o el definitivo con la cédula, puedes acceder a MACH y BancoEstado."},
    {"q": "¿Puedo abrir una cuenta bancaria en Chile desde Argentina (o desde mi país)?", "a": "No. Los bancos chilenos requieren presencia física y documentación local. Prepárate con efectivo y tarjeta internacional para los primeros días, y gestiona la cuenta una vez que estés en Chile con tu cédula o RUT."},
    {"q": "¿Puedo abrir cuenta bancaria si tengo visa de turista?", "a": "En general no. Los bancos exigen visa de residencia y cédula de extranjero. La excepción parcial es Mercado Pago, que puede registrarse con pasaporte aunque las funciones son más limitadas."},
    {"q": "¿Qué es la CuentaRUT de BancoEstado?", "a": "Es una cuenta de ahorro básica gratuita asociada al RUT chileno. No cobra mantención mensual, acepta transferencias y tiene tarjeta de débito. Es la puerta de entrada al sistema bancario para la mayoría de los extranjeros."},
    {"q": "¿Necesito cuenta bancaria para recibir mi sueldo?", "a": "Sí en la práctica. La ley permite pagar en efectivo, pero la mayoría de empleadores paga por transferencia. Sin cuenta bancaria, puedes pedirle a tu empleador que te pague en efectivo mientras la tramitas."},
    {"q": "¿Cuándo puedo acceder a una cuenta corriente?", "a": "Generalmente después de 6 a 12 meses de historial bancario en Chile. Primero abre una CuentaRUT o cuenta vista, úsala regularmente y después solicita la cuenta corriente en el mismo banco."}
  ]'::jsonb
WHERE slug = 'vivir-en-chile/cuenta-bancaria';
