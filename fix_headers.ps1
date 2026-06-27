$files = @(
    @{ Name="index.html"; Active="[[ACTIVE_INDEX]]" },
    @{ Name="contacto.html"; Active="[[ACTIVE_CONTACTO]]" },
    @{ Name="nosotros.html"; Active="[[ACTIVE_NOSOTROS]]" },
    @{ Name="catalogo.html"; Active="[[ACTIVE_CATALOGO]]" }
)

$headerTemplate = @"
<header class="fixed top-0 w-full z-50 bg-surface border-b border-outline-variant">
<nav class="flex justify-between items-center h-20 px-margin-desktop max-w-container-max mx-auto bg-surface w-full z-50">
<div class="flex items-center gap-8">
<a class="font-headline-lg text-headline-lg font-bold text-on-surface flex items-center gap-2" href="index.html">
<span class="text-primary-container material-symbols-outlined text-4xl" style="font-variation-settings: 'FILL' 1;">precision_manufacturing</span>
                    Pintofil
                </a>
<div class="hidden md:flex items-center gap-8 ml-8 h-20">
<a class="font-medium hover:text-primary transition-colors duration-200 h-full flex items-center border-b-2 [[ACTIVE_INDEX]]" href="index.html">Inicio</a>
<a class="font-medium hover:text-primary transition-colors duration-200 h-full flex items-center border-b-2 [[ACTIVE_CATALOGO]]" href="catalogo.html">Catálogo</a>
<a class="font-medium hover:text-primary transition-colors duration-200 h-full flex items-center border-b-2 [[ACTIVE_NOSOTROS]]" href="nosotros.html">Nosotros</a>
<a class="font-medium hover:text-primary transition-colors duration-200 h-full flex items-center border-b-2 [[ACTIVE_CONTACTO]]" href="contacto.html">Contacto</a>
</div>
</div>
<div class="flex items-center gap-6">
<form action="catalogo.html" method="GET" class="hidden lg:flex items-center bg-surface-container border border-outline-variant px-4 py-2 rounded-lg">
<span class="material-symbols-outlined text-secondary mr-2">search</span>
<input name="q" class="bg-transparent border-none focus:ring-0 text-body-md w-48" placeholder="Buscar..." type="search" required/>
<button type="submit" class="hidden"></button>
</form>
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
</header>
"@

$utf8 = New-Object System.Text.UTF8Encoding($false)

foreach ($f in $files) {
    $path = "C:\Users\yamil\Documents\Pintofil\$($f.Name)"
    $content = [System.IO.File]::ReadAllText($path, $utf8)
    
    # Generate the header for this specific file
    $activeClass = "text-primary border-primary"
    $inactiveClass = "text-secondary border-transparent"
    
    $thisHeader = $headerTemplate
    
    # Set the active class for the current file
    $thisHeader = $thisHeader.Replace($f.Active, $activeClass)
    
    # Set inactive class for all other markers
    $thisHeader = $thisHeader -replace '\[\[ACTIVE_[A-Z]+\]\]', $inactiveClass
    
    # Replace the existing header in the file
    $content = $content -replace '(?s)<header.*?</header>', $thisHeader
    
    [System.IO.File]::WriteAllText($path, $content, $utf8)
}
