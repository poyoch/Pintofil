$files = @("index.html", "contacto.html", "nosotros.html", "catalogo.html")
$utf8 = New-Object System.Text.UTF8Encoding($false)

$unifiedNav = @"
<nav class="flex justify-between items-center h-20 px-margin-desktop max-w-container-max mx-auto bg-surface border-b border-outline-variant w-full z-50">
<div class="flex items-center gap-8">
<a class="font-headline-lg text-headline-lg font-bold text-on-surface flex items-center gap-2" href="index.html">
<span class="text-primary-container material-symbols-outlined text-4xl" style="font-variation-settings: 'FILL' 1;">precision_manufacturing</span>
                    Pintofil
                </a>
<div class="hidden md:flex items-center gap-8 ml-8">
<a class="text-secondary font-medium hover:text-primary transition-colors duration-200" href="index.html">Inicio</a>
<a class="text-secondary font-medium hover:text-primary transition-colors duration-200" href="catalogo.html">Catálogo</a>
<a class="text-secondary font-medium hover:text-primary transition-colors duration-200" href="nosotros.html">Nosotros</a>
<a class="text-secondary font-medium hover:text-primary transition-colors duration-200" href="contacto.html">Contacto</a>
</div>
</div>
<div class="flex items-center gap-6">
<div class="hidden lg:flex items-center bg-surface-container border border-outline-variant px-4 py-2 rounded-lg">
<span class="material-symbols-outlined text-secondary mr-2">search</span>
<input class="bg-transparent border-none focus:ring-0 text-body-md w-48" placeholder="Buscar..." type="text"/>
</div>
<div class="flex items-center gap-4">
<button class="text-secondary hover:text-primary transition-colors active:scale-95">
<span class="material-symbols-outlined text-2xl">shopping_cart</span>
</button>
<button class="text-secondary hover:text-primary transition-colors active:scale-95">
<span class="material-symbols-outlined text-2xl">person</span>
</button>
</div>
</div>
</nav>
"@

foreach ($f in $files) {
    $path = "C:\Users\yamil\Documents\Pintofil\$f"
    $content = [System.IO.File]::ReadAllText($path, $utf8)
    
    # 1. Unified Navigation
    $content = $content -replace '(?s)<nav.*?</nav>', $unifiedNav
    
    # 2. Extract tailwind-config
    $content = $content -replace '(?s)<script id="tailwind-config">.*?</script>', '<script src="js/tailwind-config.js"></script>'
    
    # 3. Translation of Footers and Text
    $content = $content -replace 'Material Guides', 'Guías de Materiales'
    $content = $content -replace 'Technical Docs', 'Documentos Técnicos'
    $content = $content -replace 'Safety Data Sheets', 'Fichas de Seguridad'
    $content = $content -replace 'TDS/SDS Sheets', 'Fichas Técnicas/Seguridad'
    $content = $content -replace 'Printing Profiles', 'Perfiles de Impresión'
    $content = $content -replace 'Print Settings', 'Ajustes de Impresión'
    $content = $content -replace 'Technical Support', 'Soporte Técnico'
    $content = $content -replace 'Direct Support', 'Soporte Directo'
    $content = $content -replace 'Warranty Policy', 'Política de Garantía'
    $content = $content -replace 'Troubleshooting', 'Solución de Problemas'
    $content = $content -replace 'Return Center', 'Centro de Devoluciones'
    $content = $content -replace 'Company', 'Compañía'
    $content = $content -replace 'Shipping Policy', 'Política de Envíos'
    $content = $content -replace 'Privacy Policy', 'Política de Privacidad'
    $content = $content -replace 'Terms of Service', 'Términos de Servicio'
    $content = $content -replace 'Join Newsletter', 'Suscribirse al Boletín'
    $content = $content -replace 'Engineered for Precision\.', 'Diseñado para la Precisión.'
    $content = $content -replace 'About Us', 'Nosotros'
    $content = $content -replace 'Our Mission', 'Nuestra Misión'
    $content = $content -replace 'The New Standard of 3D Printing', 'El Nuevo Estándar de la Impresión 3D'
    $content = $content -replace 'Contact', 'Contacto'
    $content = $content -replace 'Get in Touch', 'Ponte en Contacto'
    $content = $content -replace 'Full Name', 'Nombre Completo'
    $content = $content -replace 'Company/Institution', 'Empresa/Institución'
    $content = $content -replace 'Email Address', 'Correo Electrónico'
    $content = $content -replace 'Message', 'Mensaje'
    
    # 4. Catalogo specific text
    $content = $content -replace 'Search filaments\.\.\.', 'Buscar filamentos...'
    $content = $content -replace 'Advanced Filament Catalog', 'Catálogo de Filamentos Avanzados'
    $content = $content -replace 'Industrial grade materials engineered for precision\. Filter by chemistry and properties for your specific application\.', 'Materiales de grado industrial diseñados para la precisión. Filtra por química y propiedades para tu aplicación específica.'
    $content = $content -replace 'Filters', 'Filtros'
    $content = $content -replace 'Material Chemistry', 'Química del Material'
    $content = $content -replace 'Diameter', 'Diámetro'
    $content = $content -replace 'Color Options', 'Opciones de Color'
    $content = $content -replace 'Black', 'Negro'
    $content = $content -replace 'White', 'Blanco'
    $content = $content -replace 'Clear', 'Transparente'
    $content = $content -replace 'Clear All Filters', 'Limpiar Filtros'
    $content = $content -replace 'Sort By:', 'Ordenar por:'
    $content = $content -replace 'Recommended', 'Recomendado'
    $content = $content -replace 'Price: Low to High', 'Precio: Menor a Mayor'
    $content = $content -replace 'Price: High to Low', 'Precio: Mayor a Menor'
    $content = $content -replace 'Add to Cart', 'Añadir al Carrito'
    $content = $content -replace 'Technical Data', 'Ficha Técnica'
    
    [System.IO.File]::WriteAllText($path, $content, $utf8)
}
