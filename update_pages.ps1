$pages = @{
    "ajustes-pla.html" = @"
<main class="pt-24 pb-stack-lg min-h-[60vh] px-margin-desktop max-w-container-max mx-auto">
    <div class="max-w-4xl mx-auto">
        <h1 class="font-display-md text-display-md text-on-surface mb-8">Ajustes de Impresión: PLA</h1>
        <div class="bg-surface-container rounded-xl p-8 border border-outline-variant shadow-sm prose prose-slate max-w-none">
            <h2 class="font-headline-md text-on-surface mb-4">Parámetros Recomendados</h2>
            <p class="text-secondary mb-6">El PLA (Ácido Poliláctico) es el material más utilizado en impresión 3D debido a su facilidad de uso. A continuación, nuestros parámetros recomendados para el PLA Pintofil.</p>
            
            <table class="w-full text-left border-collapse mb-8">
                <thead>
                    <tr class="border-b border-outline-variant">
                        <th class="py-2 font-bold text-on-surface">Parámetro</th>
                        <th class="py-2 font-bold text-on-surface">Valor Recomendado</th>
                    </tr>
                </thead>
                <tbody class="text-secondary">
                    <tr class="border-b border-outline-variant/50">
                        <td class="py-2">Temperatura del Nozzle (Boquilla)</td>
                        <td class="py-2">195°C - 215°C</td>
                    </tr>
                    <tr class="border-b border-outline-variant/50">
                        <td class="py-2">Temperatura de la Cama</td>
                        <td class="py-2">50°C - 60°C (Opcional, pero recomendada)</td>
                    </tr>
                    <tr class="border-b border-outline-variant/50">
                        <td class="py-2">Velocidad de Impresión</td>
                        <td class="py-2">40 - 100 mm/s</td>
                    </tr>
                    <tr class="border-b border-outline-variant/50">
                        <td class="py-2">Retracción (Direct Drive)</td>
                        <td class="py-2">0.8 - 1.5 mm a 30-40 mm/s</td>
                    </tr>
                    <tr class="border-b border-outline-variant/50">
                        <td class="py-2">Retracción (Bowden)</td>
                        <td class="py-2">4.0 - 6.0 mm a 40-50 mm/s</td>
                    </tr>
                    <tr>
                        <td class="py-2">Ventilador de Capa</td>
                        <td class="py-2">100% (Apagado en la primera capa)</td>
                    </tr>
                </tbody>
            </table>

            <h2 class="font-headline-md text-on-surface mb-4">Solución de Problemas Comunes</h2>
            <ul class="list-disc pl-5 text-secondary space-y-2 mb-6">
                <li><strong>Falta de adherencia a la cama:</strong> Limpie la cama con alcohol isopropílico. Asegure que la nivelación es correcta (primera capa ligeramente aplastada). Aumente la temperatura de la cama a 60°C.</li>
                <li><strong>Stringing (Hilos):</strong> Reduzca la temperatura de impresión en pasos de 5°C. Aumente la distancia de retracción ligeramente.</li>
                <li><strong>Deformación (Warping):</strong> Aunque es raro en PLA, asegure que no hay corrientes de aire frío apuntando a la impresora y que el ventilador de capa esté apagado en las primeras 2-3 capas.</li>
            </ul>
        </div>
    </div>
</main>
"@

    "datos-petg.html" = @"
<main class="pt-24 pb-stack-lg min-h-[60vh] px-margin-desktop max-w-container-max mx-auto">
    <div class="max-w-4xl mx-auto">
        <h1 class="font-display-md text-display-md text-on-surface mb-8">Datos Químicos: PETG</h1>
        <div class="bg-surface-container rounded-xl p-8 border border-outline-variant shadow-sm prose prose-slate max-w-none">
            <h2 class="font-headline-md text-on-surface mb-4">Propiedades del Material</h2>
            <p class="text-secondary mb-6">El PETG (Polietileno Tereftalato Modificado con Glicol) combina la facilidad de impresión del PLA con la resistencia térmica y química del ABS. Es ideal para piezas funcionales y componentes expuestos a estrés ambiental.</p>
            
            <h3 class="font-bold text-on-surface mt-6 mb-2">Resistencia Química</h3>
            <p class="text-secondary mb-4">El PETG presenta una resistencia superior a una amplia gama de agentes químicos, haciéndolo ideal para contenedores y piezas en entornos industriales:</p>
            <ul class="list-disc pl-5 text-secondary space-y-1 mb-6">
                <li><strong>Excelente resistencia:</strong> Agua, ácidos débiles, álcalis, soluciones salinas, aceites y grasas.</li>
                <li><strong>Resistencia moderada:</strong> Alcoholes alifáticos, hidrocarburos.</li>
                <li><strong>Pobre resistencia:</strong> Cetonas, hidrocarburos aromáticos, ésteres.</li>
            </ul>

            <h3 class="font-bold text-on-surface mt-6 mb-2">Propiedades Térmicas</h3>
            <ul class="list-disc pl-5 text-secondary space-y-1 mb-6">
                <li><strong>Temperatura de Transición Vítrea (Tg):</strong> ~80°C</li>
                <li><strong>Temperatura de Deflexión Térmica (HDT, 0.45 MPa):</strong> ~75°C</li>
                <li><strong>Resistencia UV:</strong> Buena resistencia natural a la degradación UV, apto para uso moderado en exteriores.</li>
            </ul>

            <h3 class="font-bold text-on-surface mt-6 mb-2">Propiedades Mecánicas (Típicas)</h3>
            <ul class="list-disc pl-5 text-secondary space-y-1 mb-6">
                <li><strong>Densidad:</strong> 1.27 g/cm³</li>
                <li><strong>Resistencia a la Tracción:</strong> 50 MPa</li>
                <li><strong>Elongación a la Rotura:</strong> > 20% (Material muy tenaz, no quebradizo)</li>
            </ul>
        </div>
    </div>
</main>
"@

    "seguridad-resina.html" = @"
<main class="pt-24 pb-stack-lg min-h-[60vh] px-margin-desktop max-w-container-max mx-auto">
    <div class="max-w-4xl mx-auto">
        <h1 class="font-display-md text-display-md text-on-surface mb-8">Fichas de Seguridad: Resina 3D</h1>
        <div class="bg-surface-container rounded-xl p-8 border border-outline-variant shadow-sm prose prose-slate max-w-none">
            <div class="bg-amber-50 border-l-4 border-amber-500 p-4 mb-6">
                <div class="flex items-center">
                    <span class="material-symbols-outlined text-amber-600 mr-2">warning</span>
                    <h3 class="font-bold text-amber-800 m-0">Precaución Importante</h3>
                </div>
                <p class="text-amber-700 text-sm mt-2">Las resinas fotopoliméricas en estado líquido pueden causar irritación en la piel y reacciones alérgicas. El uso de equipo de protección personal (EPP) es obligatorio.</p>
            </div>

            <h2 class="font-headline-md text-on-surface mb-4">Manejo y Equipo de Protección</h2>
            <ul class="list-disc pl-5 text-secondary space-y-2 mb-6">
                <li><strong>Guantes:</strong> Utilice siempre guantes de nitrilo (no de látex) al manipular resina líquida o piezas no curadas.</li>
                <li><strong>Gafas de seguridad:</strong> Recomendadas para evitar salpicaduras accidentales en los ojos durante el lavado o manipulación.</li>
                <li><strong>Ventilación:</strong> Trabaje en un área bien ventilada. Las resinas emiten compuestos orgánicos volátiles (COVs) que pueden causar irritación respiratoria en altas concentraciones.</li>
            </ul>

            <h2 class="font-headline-md text-on-surface mt-8 mb-4">Primeros Auxilios</h2>
            <ul class="list-disc pl-5 text-secondary space-y-2 mb-6">
                <li><strong>Contacto con la piel:</strong> Lave inmediatamente con abundante agua y jabón. No use alcohol isopropílico para limpiar la piel, ya que puede facilitar la absorción de la resina.</li>
                <li><strong>Contacto con los ojos:</strong> Enjuague cuidadosamente con agua durante varios minutos. Busque atención médica si la irritación persiste.</li>
                <li><strong>Ingestión:</strong> No provoque el vómito. Busque atención médica inmediata.</li>
            </ul>

            <h2 class="font-headline-md text-on-surface mt-8 mb-4">Gestión de Residuos</h2>
            <p class="text-secondary mb-4">La resina líquida es tóxica para el medio ambiente acuático.</p>
            <ul class="list-disc pl-5 text-secondary space-y-2 mb-6">
                <li><strong>NUNCA</strong> vierta resina líquida ni alcohol isopropílico contaminado por el desagüe.</li>
                <li>Para desechar envases o alcohol contaminado, expóngalos a la luz solar directa o luz UV hasta que toda la resina se haya curado (solidificado) completamente. Una vez sólida, la resina es plástico inerte y puede desecharse con la basura regular.</li>
            </ul>
        </div>
    </div>
</main>
"@

    "guia-almacenamiento.html" = @"
<main class="pt-24 pb-stack-lg min-h-[60vh] px-margin-desktop max-w-container-max mx-auto">
    <div class="max-w-4xl mx-auto">
        <h1 class="font-display-md text-display-md text-on-surface mb-8">Guía de Almacenamiento de Filamentos</h1>
        <div class="bg-surface-container rounded-xl p-8 border border-outline-variant shadow-sm prose prose-slate max-w-none">
            <p class="text-secondary mb-6">La humedad es el enemigo número uno de la impresión 3D. Prácticamente todos los filamentos absorben humedad del aire (higroscopía), lo que afecta dramáticamente la calidad de impresión.</p>

            <h2 class="font-headline-md text-on-surface mt-6 mb-4">Síntomas de Filamento Húmedo</h2>
            <ul class="list-disc pl-5 text-secondary space-y-2 mb-6">
                <li>Sonidos de "chisporroteo" o estallidos al imprimir (el agua hirviendo en la boquilla).</li>
                <li>Exceso de hilos (stringing) y exudado (oozing).</li>
                <li>Superficies rugosas o con burbujas.</li>
                <li>Pérdida de adherencia entre capas y piezas frágiles.</li>
                <li>En filamentos como PLA o PETG, el material se vuelve extremadamente quebradizo y se rompe en el carrete.</li>
            </ul>

            <h2 class="font-headline-md text-on-surface mt-8 mb-4">Mejores Prácticas de Almacenamiento</h2>
            <ol class="list-decimal pl-5 text-secondary space-y-3 mb-6">
                <li><strong>Cajas Secas (Dry Boxes):</strong> Almacene los rollos abiertos en recipientes herméticos con desecante (Gel de Sílice). Trate de mantener la humedad relativa dentro del contenedor por debajo del 20%.</li>
                <li><strong>Bolsas al Vacío:</strong> Para almacenamiento a largo plazo, vuelva a sellar los filamentos al vacío con un paquete de desecante.</li>
                <li><strong>No deje los rollos en la impresora:</strong> Si no va a imprimir en un par de días, retire el filamento y guárdelo.</li>
            </ol>

            <h2 class="font-headline-md text-on-surface mt-8 mb-4">Cómo Secar Filamentos</h2>
            <p class="text-secondary mb-4">Si su filamento ya ha absorbido humedad, puede secarlo utilizando un secador de filamentos dedicado o un deshidratador de alimentos. A continuación, las temperaturas y tiempos recomendados:</p>
            
            <table class="w-full text-left border-collapse mb-6">
                <thead>
                    <tr class="border-b border-outline-variant">
                        <th class="py-2 font-bold text-on-surface">Material</th>
                        <th class="py-2 font-bold text-on-surface">Temperatura de Secado</th>
                        <th class="py-2 font-bold text-on-surface">Tiempo Recomendado</th>
                    </tr>
                </thead>
                <tbody class="text-secondary">
                    <tr class="border-b border-outline-variant/50">
                        <td class="py-2">PLA</td>
                        <td class="py-2">45°C - 50°C</td>
                        <td class="py-2">4 - 6 horas</td>
                    </tr>
                    <tr class="border-b border-outline-variant/50">
                        <td class="py-2">PETG</td>
                        <td class="py-2">60°C - 65°C</td>
                        <td class="py-2">6 - 8 horas</td>
                    </tr>
                    <tr class="border-b border-outline-variant/50">
                        <td class="py-2">ABS / ASA</td>
                        <td class="py-2">75°C - 80°C</td>
                        <td class="py-2">4 - 6 horas</td>
                    </tr>
                    <tr>
                        <td class="py-2">TPU / Flexible</td>
                        <td class="py-2">55°C - 60°C</td>
                        <td class="py-2">8 - 12 horas</td>
                    </tr>
                </tbody>
            </table>
            <p class="text-sm text-secondary italic">Nota: ¡No exceda la temperatura de secado recomendada para el PLA, o fundirá el rollo entero!</p>
        </div>
    </div>
</main>
"@

    "politica-envio.html" = @"
<main class="pt-24 pb-stack-lg min-h-[60vh] px-margin-desktop max-w-container-max mx-auto">
    <div class="max-w-4xl mx-auto">
        <h1 class="font-display-md text-display-md text-on-surface mb-8">Política de Envío</h1>
        <div class="bg-surface-container rounded-xl p-8 border border-outline-variant shadow-sm prose prose-slate max-w-none text-secondary">
            <h2 class="font-headline-md text-on-surface mb-4">Procesamiento de Pedidos</h2>
            <p class="mb-6">Todos los pedidos se procesan en un plazo de 1 a 2 días hábiles (excluyendo fines de semana y días festivos) después de recibir su correo electrónico de confirmación de pedido. Recibirá otra notificación cuando su pedido haya sido enviado.</p>
            
            <h2 class="font-headline-md text-on-surface mt-6 mb-4">Tarifas y Estimaciones de Envío Nacional</h2>
            <p class="mb-4">Los gastos de envío de su pedido se calcularán y se mostrarán al momento de pagar. Ofrecemos las siguientes opciones:</p>
            <ul class="list-disc pl-5 space-y-2 mb-6">
                <li><strong>Lima Metropolitana:</strong> Entrega el mismo día o al día siguiente hábil. Costo fijo: S/ 12.00</li>
                <li><strong>Provincias:</strong> Envío vía Olva Courier o Shalom (2 a 5 días hábiles dependiendo del destino). Costo calculado al checkout (Aprox. S/ 15 - S/ 25).</li>
            </ul>
            <div class="bg-primary-container/10 border border-primary-container/30 rounded p-4 mb-6">
                <p class="font-bold text-primary-container m-0">¡Envío Gratuito!</p>
                <p class="text-sm mt-1">Disfruta de envío gratuito a nivel nacional en todos los pedidos superiores a S/ 150.00.</p>
            </div>

            <h2 class="font-headline-md text-on-surface mt-6 mb-4">Recojo en Tienda</h2>
            <p class="mb-6">Puede evitar los gastos de envío eligiendo la opción de recojo en nuestro almacén en San Isidro, Lima. Después de realizar su pedido, su compra estará lista para recoger en un plazo de 2 horas hábiles. Nuestro horario de recojo es de Lunes a Viernes de 9:00 am a 5:00 pm.</p>

            <h2 class="font-headline-md text-on-surface mt-6 mb-4">Rastreo de Pedidos</h2>
            <p class="mb-6">Cuando se envíe su pedido, recibirá una notificación por correo electrónico de nuestra parte que incluirá un número de seguimiento que puede usar para verificar su estado. Por favor, permita 24 horas para que la información de seguimiento esté disponible.</p>
        </div>
    </div>
</main>
"@

    "politica-privacidad.html" = @"
<main class="pt-24 pb-stack-lg min-h-[60vh] px-margin-desktop max-w-container-max mx-auto">
    <div class="max-w-4xl mx-auto">
        <h1 class="font-display-md text-display-md text-on-surface mb-8">Política de Privacidad</h1>
        <div class="bg-surface-container rounded-xl p-8 border border-outline-variant shadow-sm prose prose-slate max-w-none text-secondary">
            <p class="mb-6">En Pintofil, valoramos su privacidad. Esta Política de Privacidad describe cómo recopilamos, usamos y protegemos su información personal cuando visita o realiza una compra en nuestro sitio web.</p>
            
            <h2 class="font-headline-md text-on-surface mt-6 mb-4">Información que Recopilamos</h2>
            <p class="mb-4">Cuando visita el Sitio, recopilamos automáticamente cierta información sobre su dispositivo, incluyendo:</p>
            <ul class="list-disc pl-5 space-y-1 mb-6">
                <li>Información sobre su navegador web, dirección IP y zona horaria.</li>
                <li>Datos de cookies instaladas en su dispositivo.</li>
                <li>Al realizar una compra, recopilamos su nombre, dirección de facturación, dirección de envío, información de pago y dirección de correo electrónico.</li>
            </ul>

            <h2 class="font-headline-md text-on-surface mt-6 mb-4">Cómo Usamos su Información</h2>
            <p class="mb-4">Utilizamos la información recopilada para:</p>
            <ul class="list-disc pl-5 space-y-1 mb-6">
                <li>Procesar y cumplir con sus pedidos (procesar pagos, organizar envíos, proporcionar facturas).</li>
                <li>Comunicarnos con usted sobre su pedido o consultas técnicas.</li>
                <li>Evaluar el riesgo potencial y fraude (especialmente a través de su dirección IP).</li>
                <li>Mejorar y optimizar nuestro Sitio mediante análisis del comportamiento de navegación.</li>
            </ul>

            <h2 class="font-headline-md text-on-surface mt-6 mb-4">Compartir su Información Personal</h2>
            <p class="mb-6">Solo compartimos su Información Personal con terceros para ayudarnos a usarla como se describió anteriormente (por ejemplo, con plataformas de pago seguras y empresas de mensajería para entregar su pedido). También podemos compartir su Información Personal para cumplir con las leyes y regulaciones aplicables.</p>

            <h2 class="font-headline-md text-on-surface mt-6 mb-4">Retención de Datos</h2>
            <p class="mb-6">Cuando realiza un pedido a través del Sitio, mantendremos la Información de su Pedido para nuestros registros, a menos y hasta que nos pida que eliminemos esta información.</p>

            <p class="text-sm italic mt-8">Última actualización: Noviembre 2024</p>
        </div>
    </div>
</main>
"@

    "politica-reembolso.html" = @"
<main class="pt-24 pb-stack-lg min-h-[60vh] px-margin-desktop max-w-container-max mx-auto">
    <div class="max-w-4xl mx-auto">
        <h1 class="font-display-md text-display-md text-on-surface mb-8">Política de Reembolso</h1>
        <div class="bg-surface-container rounded-xl p-8 border border-outline-variant shadow-sm prose prose-slate max-w-none text-secondary">
            <h2 class="font-headline-md text-on-surface mb-4">Nuestra Garantía</h2>
            <p class="mb-6">En Pintofil, nos enorgullecemos de la calidad de nuestros filamentos de grado industrial. Si tiene problemas de calidad comprobables con nuestros materiales, estamos aquí para ayudarle.</p>
            
            <h2 class="font-headline-md text-on-surface mt-6 mb-4">Devoluciones de Filamento</h2>
            <ul class="list-disc pl-5 space-y-2 mb-6">
                <li><strong>Filamentos No Abiertos:</strong> Aceptamos devoluciones de cualquier filamento sin usar en su empaque original sellado al vacío dentro de los 15 días posteriores a la entrega. El comprador es responsable de los costos de envío de devolución.</li>
                <li><strong>Filamentos Abiertos:</strong> Debido a la naturaleza higroscópica de los filamentos de impresión 3D, no podemos aceptar devoluciones de rollos que hayan sido extraídos de su empaque sellado original, a menos que exista un defecto de fabricación evidente (ej. diámetro fuera de tolerancia constante).</li>
            </ul>

            <h2 class="font-headline-md text-on-surface mt-6 mb-4">Garantía por Defectos</h2>
            <p class="mb-6">Garantizamos una tolerancia dimensional de ±0.03mm. Si encuentra problemas de extrusión causados probadamente por un diámetro de filamento inconsistente, enredos de fábrica o contaminación del material, contáctenos en <a href="mailto:tech@pintofil.pe" class="text-primary hover:underline">tech@pintofil.pe</a> con su número de pedido, detalles del lote y fotos/videos del problema. Analizaremos su caso y, de proceder, emitiremos un reembolso completo o un reemplazo sin costo adicional.</p>

            <h2 class="font-headline-md text-on-surface mt-6 mb-4">Proceso de Reembolso</h2>
            <p class="mb-6">Una vez recibida e inspeccionada su devolución, le enviaremos un correo electrónico notificándole la aprobación o rechazo de su reembolso. Si es aprobado, el reembolso se procesará y aplicará automáticamente a su tarjeta de crédito o método de pago original en un plazo de 3 a 5 días hábiles.</p>
        </div>
    </div>
</main>
"@

    "venta-mayor.html" = @"
<main class="pt-24 pb-stack-lg min-h-[60vh] px-margin-desktop max-w-container-max mx-auto">
    <div class="max-w-4xl mx-auto">
        <h1 class="font-display-md text-display-md text-on-surface mb-8">Venta al por Mayor e Institucional</h1>
        <div class="bg-surface-container rounded-xl p-8 border border-outline-variant shadow-sm prose prose-slate max-w-none text-secondary">
            <p class="text-lg mb-6 text-on-surface font-medium">Pintofil es el proveedor de confianza de materiales 3D para granjas de impresión, universidades, centros de investigación y fábricas en todo el Perú.</p>
            
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-8">
                <div class="border border-outline-variant rounded-lg p-5 bg-white">
                    <span class="material-symbols-outlined text-primary text-3xl mb-3">inventory_2</span>
                    <h3 class="font-bold text-on-surface mb-2">Descuentos por Volumen</h3>
                    <p class="text-sm">Ofrecemos estructuras de precios escalonados (Tiers) comenzando desde órdenes de 10 kg, permitiendo a su negocio escalar reduciendo costos operativos.</p>
                </div>
                <div class="border border-outline-variant rounded-lg p-5 bg-white">
                    <span class="material-symbols-outlined text-primary text-3xl mb-3">local_shipping</span>
                    <h3 class="font-bold text-on-surface mb-2">Abastecimiento Constante</h3>
                    <p class="text-sm">Garantizamos disponibilidad de stock y lotes consistentes de color para asegurar que su producción no se detenga.</p>
                </div>
                <div class="border border-outline-variant rounded-lg p-5 bg-white">
                    <span class="material-symbols-outlined text-primary text-3xl mb-3">fact_check</span>
                    <h3 class="font-bold text-on-surface mb-2">Facturación y Crédito</h3>
                    <p class="text-sm">Emitimos facturas electrónicas para empresas (RUC). Evaluamos líneas de crédito a 30 días para instituciones públicas y universidades.</p>
                </div>
                <div class="border border-outline-variant rounded-lg p-5 bg-white">
                    <span class="material-symbols-outlined text-primary text-3xl mb-3">support_agent</span>
                    <h3 class="font-bold text-on-surface mb-2">Soporte Prioritario</h3>
                    <p class="text-sm">Acceso directo a nuestros ingenieros de materiales para asesoría en la selección del polímero adecuado para sus aplicaciones finales.</p>
                </div>
            </div>

            <h2 class="font-headline-md text-on-surface mt-8 mb-4">Solicite su cotización corporativa</h2>
            <p class="mb-6">Para abrir una cuenta mayorista o solicitar una cotización institucional, por favor envíenos un correo a <a href="mailto:ventas@pintofil.pe" class="text-primary hover:underline font-bold">ventas@pintofil.pe</a> incluyendo la siguiente información:</p>
            <ul class="list-disc pl-5 mb-6">
                <li>Razón Social y RUC</li>
                <li>Volumen estimado de consumo mensual</li>
                <li>Materiales de mayor interés (PLA, PETG, ABS, Especiales)</li>
                <li>Contacto técnico o de compras</li>
            </ul>
        </div>
    </div>
</main>
"@

    "terminos-servicio.html" = @"
<main class="pt-24 pb-stack-lg min-h-[60vh] px-margin-desktop max-w-container-max mx-auto">
    <div class="max-w-4xl mx-auto">
        <h1 class="font-display-md text-display-md text-on-surface mb-8">Términos de Servicio</h1>
        <div class="bg-surface-container rounded-xl p-8 border border-outline-variant shadow-sm prose prose-slate max-w-none text-secondary">
            <h2 class="font-headline-md text-on-surface mb-4">1. Visión General</h2>
            <p class="mb-4">Este sitio web es operado por Pintofil. En todo el sitio, los términos "nosotros", "nos" y "nuestro" se refieren a Pintofil. Al visitar nuestro sitio y/o comprar algo de nosotros, interactúa con nuestro "Servicio" y acepta estar sujeto a los siguientes términos y condiciones.</p>

            <h2 class="font-headline-md text-on-surface mt-6 mb-4">2. Productos o Servicios</h2>
            <p class="mb-4">Ciertos productos o servicios pueden estar disponibles exclusivamente en línea a través del sitio web. Estos productos pueden tener cantidades limitadas y están sujetos a devolución o cambio solo de acuerdo con nuestra Política de Reembolso.</p>
            <p class="mb-4">Hemos hecho todo lo posible para mostrar con la mayor precisión posible los colores y las imágenes de nuestros filamentos que aparecen en la tienda. No podemos garantizar que la pantalla de su monitor muestre cualquier color con precisión.</p>

            <h2 class="font-headline-md text-on-surface mt-6 mb-4">3. Precisión de la Información</h2>
            <p class="mb-4">No nos hacemos responsables si la información técnica disponible en este sitio no es precisa, completa o actual. El material en este sitio (incluyendo los perfiles de impresión sugeridos) se proporciona solo para información general y no se debe confiar en él como la única base para tomar decisiones, ya que el rendimiento real depende de su máquina específica y el ambiente.</p>

            <h2 class="font-headline-md text-on-surface mt-6 mb-4">4. Modificaciones al Servicio y Precios</h2>
            <p class="mb-4">Los precios de nuestros productos están sujetos a cambios sin previo aviso. Nos reservamos el derecho en cualquier momento de modificar o discontinuar el Servicio (o cualquier parte del contenido) sin previo aviso en cualquier momento.</p>

            <h2 class="font-headline-md text-on-surface mt-6 mb-4">5. Limitación de Responsabilidad</h2>
            <p class="mb-4">En ningún caso Pintofil, nuestros directores, empleados o proveedores serán responsables de cualquier lesión, pérdida, reclamo o cualquier daño directo, indirecto, incidental o consecuente (incluyendo daños a sus impresoras 3D, pérdida de tiempo de producción o datos) derivados del uso de cualquiera de nuestros productos.</p>
        </div>
    </div>
</main>
"@

    "cumplimiento-seguridad.html" = @"
<main class="pt-24 pb-stack-lg min-h-[60vh] px-margin-desktop max-w-container-max mx-auto">
    <div class="max-w-4xl mx-auto">
        <h1 class="font-display-md text-display-md text-on-surface mb-8">Cumplimiento de Seguridad y Calidad</h1>
        <div class="bg-surface-container rounded-xl p-8 border border-outline-variant shadow-sm prose prose-slate max-w-none text-secondary">
            <p class="mb-6 text-lg">En Pintofil, nos tomamos muy en serio la calidad industrial de nuestros materiales. Nuestros filamentos y resinas están formulados bajo estrictos estándares internacionales para garantizar la seguridad del usuario y el rendimiento del material.</p>
            
            <h2 class="font-headline-md text-on-surface mt-6 mb-4">Certificaciones Internacionales</h2>
            <div class="space-y-4 mb-8">
                <div class="flex items-start">
                    <span class="material-symbols-outlined text-green-600 mr-3 text-3xl">verified</span>
                    <div>
                        <h3 class="font-bold text-on-surface m-0">RoHS (Restriction of Hazardous Substances)</h3>
                        <p class="mt-1 text-sm">Nuestros filamentos base (PLA, PETG, ABS) cumplen con la directiva RoHS de la UE, lo que certifica que no contienen niveles peligrosos de plomo, cadmio, mercurio, cromo hexavalente ni retardantes de llama PBB o PBDE.</p>
                    </div>
                </div>
                <div class="flex items-start">
                    <span class="material-symbols-outlined text-green-600 mr-3 text-3xl">verified</span>
                    <div>
                        <h3 class="font-bold text-on-surface m-0">REACH Compliance</h3>
                        <p class="mt-1 text-sm">Nuestras materias primas cumplen con la regulación REACH (Registro, Evaluación, Autorización y Restricción de Sustancias Químicas), garantizando un alto nivel de protección de la salud humana y del medio ambiente.</p>
                    </div>
                </div>
            </div>

            <h2 class="font-headline-md text-on-surface mt-8 mb-4">Control de Calidad Dimensional</h2>
            <p class="mb-4">Para aplicaciones industriales, la consistencia dimensional es crítica. Nuestro proceso de manufactura emplea medición láser de doble eje en tiempo real en la línea de extrusión.</p>
            <ul class="list-disc pl-5 mb-6">
                <li><strong>Tolerancia de Diámetro:</strong> ±0.03mm garantizado (±0.02mm típico).</li>
                <li><strong>Ovalidád (Roundness):</strong> ±0.02mm para prevenir atascos en extrusores tipo Bowden.</li>
                <li>Libre de burbujas de aire e impurezas en la matriz polimérica.</li>
            </ul>

            <h2 class="font-headline-md text-on-surface mt-8 mb-4">MSDS / Fichas de Seguridad</h2>
            <p class="mb-6">Las Hojas de Datos de Seguridad de Materiales (MSDS) de toda nuestra línea de resinas fotopoliméricas y filamentos técnicos están disponibles bajo demanda. Por favor contacte a <a href="mailto:tech@pintofil.pe" class="text-primary hover:underline font-bold">tech@pintofil.pe</a> indicando el SKU del material para recibir la documentación actualizada.</p>
        </div>
    </div>
</main>
"@
}

$dir = "c:\Users\yamil\Documents\Pintofil"

foreach ($file in $pages.Keys) {
    $path = Join-Path $dir $file
    if (Test-Path $path) {
        $content = Get-Content $path -Raw -Encoding UTF8
        # Encontrar el bloque <main ...> ... </main> y reemplazarlo
        $pattern = '(?s)<main\b[^>]*>.*?</main>'
        if ($content -match $pattern) {
            $newContent = $content -replace $pattern, $pages[$file]
            Set-Content $path -Value $newContent -Encoding UTF8 -NoNewline
            Write-Host "Updated: $file"
        } else {
            Write-Host "No <main> tag found in: $file"
        }
    } else {
        Write-Host "File not found: $file"
    }
}
Write-Host "All done."
