$files = @("index.html", "contacto.html", "nosotros.html", "catalogo.html")
$utf8 = New-Object System.Text.UTF8Encoding($false)

foreach ($f in $files) {
    $path = "C:\Users\yamil\Documents\Pintofil\$f"
    $content = [System.IO.File]::ReadAllText($path, $utf8)
    
    # 1. SEO
    $content = $content -replace '(?i)<title>.*?</title>', '<title>Filamentos 3D de ingeniería de alta precisión | Pintofil</title>'
    if ($content -notmatch '<meta name="description"') {
        $content = $content -replace '<meta charset="utf-8"/>', "<meta charset=`"utf-8`"/>`n<meta name=`"description`" content=`"Pintofil ofrece filamentos 3D de precisión de grado industrial. Materiales ISO 9001, PLA, PETG y resinas para ingenieros y diseñadores.`">"
    }

    # 2. Search Form (Standard)
    $searchBlock = '<form action="catalogo.html" method="GET" class="hidden lg:flex items-center bg-surface-container border border-outline-variant px-4 py-2 rounded-lg">
<span class="material-symbols-outlined text-secondary mr-2">search</span>
<input name="q" class="bg-transparent border-none focus:ring-0 text-body-md w-48" placeholder="Buscar..." type="search" required/>
<button type="submit" class="hidden"></button>
</form>'
    $content = $content -replace '(?s)<div class="hidden lg:flex items-center bg-surface-container border border-outline-variant px-4 py-2 rounded-lg">.*?</div>', $searchBlock

    # 2b. Search Form (Catalogo)
    $searchBlockCat = '<form action="catalogo.html" method="GET" class="relative hidden lg:block w-72">
<input name="q" class="w-full pl-10 pr-4 py-2 bg-surface-container rounded-lg border border-outline focus:border-primary-container focus:ring-1 focus:ring-primary-container font-label-tech transition-all" placeholder="Buscar filamentos..." type="search" required/>
<span class="material-symbols-outlined absolute left-3 top-1/2 -translate-y-1/2 text-secondary">search</span>
<button type="submit" class="hidden"></button>
</form>'
    $content = $content -replace '(?s)<div class="relative hidden lg:block w-72">\s*<input class="w-full.*?</input>\s*<span class="material-symbols-outlined.*?</span>\s*</div>', $searchBlockCat
    
    # 3. Footer links (general mapping)
    $content = $content -replace 'href="#"(>Documentos Técnicos|>Fichas de Seguridad|>Fichas Técnicas/Seguridad|>Ajustes de PLA|>Datos Químicos PETG|>Fichas de Seguridad de Resina|>Guía de Almacenamiento|>Perfiles de Impresión|>Ajustes de Impresión)', 'href="catalogo.html"$1'
    $content = $content -replace 'href="#"(>Soporte Técnico|>Soporte Directo|>Política de Garantía|>Solución de Problemas|>Centro de Devoluciones)', 'href="contacto.html"$1'
    $content = $content -replace 'href="#"(>Política de Envío|>Política de Envíos|>Política de Privacidad|>Política de Reembolso|>Consulta de Venta al por Mayor|>Términos de Servicio|>Cumplimiento de Seguridad)', 'href="nosotros.html"$1'

    # 4. Newsletter validation
    $content = $content -replace '<input (.*?) type="email"/>', '<input $1 type="email" required pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$"/>'
    $content = $content -replace '<form class="(flex flex-col md:flex-row gap-4 max-w-xl mx-auto)">', '<form class="newsletter-form $1">'

    # 5. Index specific fixes
    if ($f -eq 'index.html') {
        $content = $content -replace '<span class="inline-block px-3 py-1 bg-primary-container/10 text-primary font-label-tech text-label-tech uppercase tracking-widest mb-6">Materiales Certificados ISO 9001</span>', '<a href="nosotros.html" class="inline-block px-3 py-1 bg-primary-container/10 text-primary font-label-tech text-label-tech uppercase tracking-widest mb-6 hover:bg-primary-container/20 transition-colors cursor-pointer" title="Ver certificaciones">Materiales Certificados ISO 9001</a>'
        $content = $content -replace '(?s)<button class="([^>]*?bg-primary-container[^>]*?)">\s*Comprar Ahora\s*</button>', '<a href="catalogo.html" class="$1 text-center leading-10">Comprar Ahora</a>'
        $content = $content -replace '(?s)<button class="([^>]*?border-secondary[^>]*?)">\s*Fichas Técnicas\s*</button>', '<a href="catalogo.html" class="$1 text-center leading-10">Fichas Técnicas</a>'
        
        # Add alt tags to specific images in index.html if missing
        $content = $content -replace '<img src="https://lh3.googleusercontent.com/([^"]+)" class="(w-full h-full object-cover.*?)"', '<img src="https://lh3.googleusercontent.com/$1" class="$2" alt="Imagen representativa del proceso de manufactura de Pintofil"'
        $content = $content -replace '<img src="https://lh3.googleusercontent.com/([^"]+)" alt="">', '<img src="https://lh3.googleusercontent.com/$1" alt="Fotografía técnica del material">'
    }
    
    # Missing alt for downloaded items
    $content = $content -replace '<img([^>]*)alt=""([^>]*)>', '<img$1alt="Imagen ilustrativa"$2>'
    
    # 6. Hero gradient contrast in index.html
    if ($f -eq 'index.html') {
        $content = $content -replace 'linear-gradient\(90deg, rgba\(249,249,249,1\) 40%, rgba\(249,249,249,0\) 100%\)', 'linear-gradient(90deg, rgba(24,24,27,0.9) 0%, rgba(24,24,27,0.8) 40%, rgba(24,24,27,0.1) 100%)'
        # The index.html actually has "bg-background text-on-background", wait. 
        # Actually I can just add a backdrop-blur or darken to the gradient text container if it's there.
        # It's safer to just inject a CSS variable or class.
    }

    [System.IO.File]::WriteAllText($path, $content, $utf8)
}
