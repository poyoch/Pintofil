$files = @("index.html", "contacto.html", "nosotros.html", "catalogo.html")
$utf8 = New-Object System.Text.UTF8Encoding($false)

$newFooter = @"
<footer class="bg-secondary dark:bg-inverse-surface py-stack-lg">
<div class="grid grid-cols-2 md:grid-cols-4 gap-gutter px-margin-desktop max-w-container-max mx-auto">
<!-- Brand & Contacto -->
<div class="flex flex-col gap-6 col-span-2 md:col-span-1">
<a class="font-headline-md text-headline-md font-black text-white flex items-center gap-2" href="index.html">
<span class="material-symbols-outlined text-3xl" style="font-variation-settings: 'FILL' 1;" aria-hidden="true">precision_manufacturing</span>
                    Pintofil
                </a>
<p class="text-white opacity-60 font-body-md leading-relaxed">
                    © 2024 Pintofil Advanced Materials. <br/>Diseñados para Precisión. Fabricación certificada ISO para confiabilidad industrial.
                </p>
<div class="flex gap-4 mt-2">
<a class="text-white opacity-60 hover:opacity-100 transition-opacity" href="https://pintofil.de" aria-label="Website"><span class="material-symbols-outlined" aria-hidden="true">language</span></a>
<a class="text-white opacity-60 hover:opacity-100 transition-opacity" href="mailto:tech@pintofil.de" aria-label="Email"><span class="material-symbols-outlined" aria-hidden="true">alternate_email</span></a>
</div>
</div>
<!-- Guías de Materiales -->
<div class="flex flex-col gap-4">
<h4 class="text-white font-headline-md text-headline-md border-b border-white/10 pb-2">Guías de Materiales</h4>
<div class="flex flex-col gap-3">
<a class="text-white opacity-60 hover:text-primary-container hover:opacity-100 transition-opacity font-label-tech text-label-tech uppercase tracking-wide" href="catalogo.html">Ajustes de PLA</a>
<a class="text-white opacity-60 hover:text-primary-container hover:opacity-100 transition-opacity font-label-tech text-label-tech uppercase tracking-wide" href="catalogo.html">Datos Químicos PETG</a>
<a class="text-white opacity-60 hover:text-primary-container hover:opacity-100 transition-opacity font-label-tech text-label-tech uppercase tracking-wide" href="catalogo.html">Fichas de Seguridad de Resina</a>
<a class="text-white opacity-60 hover:text-primary-container hover:opacity-100 transition-opacity font-label-tech text-label-tech uppercase tracking-wide" href="catalogo.html">Guía de Almacenamiento</a>
</div>
</div>
<!-- Soporte Técnico -->
<div class="flex flex-col gap-4">
<h4 class="text-white font-headline-md text-headline-md border-b border-white/10 pb-2">Soporte Técnico</h4>
<div class="flex flex-col gap-3">
<a class="text-white opacity-60 hover:text-primary-container hover:opacity-100 transition-opacity font-body-md" href="nosotros.html">Política de Envío</a>
<a class="text-white opacity-60 hover:text-primary-container hover:opacity-100 transition-opacity font-body-md" href="nosotros.html">Política de Privacidad</a>
<a class="text-white opacity-60 hover:text-primary-container hover:opacity-100 transition-opacity font-body-md" href="nosotros.html">Política de Reembolso</a>
<a class="text-white opacity-60 hover:text-primary-container hover:opacity-100 transition-opacity font-body-md" href="contacto.html">Consulta de Venta al por Mayor</a>
</div>
</div>
<!-- Engineering Resources -->
<div class="flex flex-col gap-4 col-span-2 md:col-span-1">
<h4 class="text-white font-headline-md text-headline-md border-b border-white/10 pb-2">Recursos</h4>
<div class="flex flex-col gap-4">
<div class="p-4 bg-white/5 rounded border border-white/10">
<span class="text-white opacity-60 text-xs block mb-1">Soporte Técnico Directo</span>
<a href="tel:+18007746833" class="text-white font-bold hover:text-primary-container transition-colors">+1 (800) PRINT-3D</a>
</div>
<div class="p-4 bg-white/5 rounded border border-white/10">
<span class="text-white opacity-60 text-xs block mb-1">Sede Central</span>
<p class="text-white font-bold">Laboratorio R&amp;D, Berlín</p>
</div>
</div>
</div>
</div>
<div class="border-t border-white/5 mt-16 pt-8">
<div class="px-margin-desktop max-w-container-max mx-auto flex justify-between items-center text-white opacity-40 text-sm flex-col md:flex-row gap-4">
<span>Polímeros Certificados de Alto Rendimiento</span>
<div class="flex gap-6">
<a class="hover:underline" href="nosotros.html">Términos de Servicio</a>
<a class="hover:underline" href="nosotros.html">Cumplimiento de Seguridad</a>
</div>
</div>
</div>
</footer>
"@

foreach ($f in $files) {
    $path = "C:\Users\yamil\Documents\Pintofil\$f"
    $content = [System.IO.File]::ReadAllText($path, $utf8)
    
    # Replace entire footer
    $content = $content -replace '(?s)<footer.*</footer>', $newFooter
    
    # Fix specific elements in index.html
    if ($f -eq 'index.html') {
        # Fix H1/H2
        $content = $content -replace '<h2 class="font-headline-lg text-\[4rem\] leading-tight font-black text-on-background mb-6">', '<h1 class="font-headline-lg text-[4rem] leading-tight font-black text-on-background mb-6">'
        $content = $content -replace 'El Estándar de la Impresión 3D</h2>', 'El Estándar de la Impresión 3D</h1>'
        
        # ISO 9001 Button Fix
        $content = $content -replace '<a href="nosotros.html" class="inline-block px-3 py-1 bg-primary-container/10 text-primary font-label-tech text-label-tech uppercase tracking-widest mb-6 hover:bg-primary-container/20 transition-colors cursor-pointer" title="Ver certificaciones">', '<a href="nosotros.html" class="inline-block px-4 py-2 bg-primary text-white hover:bg-primary-container font-label-tech uppercase tracking-widest mb-6 transition-colors shadow-md rounded-lg" title="Ver certificaciones ISO">'
        
        # Hero Gradient Contrast Fix
        $content = $content -replace 'bg-gradient-to-r from-background via-background/90 to-transparent', 'bg-gradient-to-r from-white via-white/80 to-transparent'
        
        # Broken links in buttons (if any left)
        $content = $content -replace 'href="#" class="([^>]*?bg-primary-container[^>]*?)">\s*Comprar Ahora\s*</a>', 'href="catalogo.html" class="$1">Comprar Ahora</a>'
    }

    [System.IO.File]::WriteAllText($path, $content, $utf8)
}
