$utf8 = New-Object System.Text.UTF8Encoding($false)

$files = @(
    @{ Name="index.html"; Active="[[ACTIVE_INDEX]]" },
    @{ Name="contacto.html"; Active="[[ACTIVE_CONTACTO]]" },
    @{ Name="nosotros.html"; Active="[[ACTIVE_NOSOTROS]]" },
    @{ Name="catalogo.html"; Active="[[ACTIVE_CATALOGO]]" },
    @{ Name="ajustes-pla.html"; Active="" },
    @{ Name="datos-petg.html"; Active="" },
    @{ Name="seguridad-resina.html"; Active="" },
    @{ Name="guia-almacenamiento.html"; Active="" },
    @{ Name="politica-envio.html"; Active="" },
    @{ Name="politica-privacidad.html"; Active="" },
    @{ Name="politica-reembolso.html"; Active="" },
    @{ Name="venta-mayor.html"; Active="" },
    @{ Name="terminos-servicio.html"; Active="" },
    @{ Name="cumplimiento-seguridad.html"; Active="" }
)

$headerTemplate = @"
<header class="fixed top-0 w-full z-50 bg-surface border-b border-outline-variant transition-all duration-300 h-20">
<nav class="flex justify-between items-center h-full px-margin-desktop max-w-container-max mx-auto bg-surface w-full z-50 transition-all duration-300 relative">
<div class="flex items-center gap-8 h-full">
<a class="font-headline-lg text-headline-lg font-bold text-on-surface flex items-center gap-2" href="index.html">
<span class="text-primary-container material-symbols-outlined text-4xl" style="font-variation-settings: 'FILL' 1;">precision_manufacturing</span>
                    Pintofil
                </a>
<div class="hidden md:flex items-center gap-8 ml-8 h-full">
<a class="font-medium hover:text-primary transition-colors duration-200 h-full flex items-center border-b-2 [[ACTIVE_INDEX]]" href="index.html">Inicio</a>
<a class="font-medium hover:text-primary transition-colors duration-200 h-full flex items-center border-b-2 [[ACTIVE_CATALOGO]]" href="catalogo.html">Catálogo</a>
<a class="font-medium hover:text-primary transition-colors duration-200 h-full flex items-center border-b-2 [[ACTIVE_NOSOTROS]]" href="nosotros.html">Nosotros</a>
<a class="font-medium hover:text-primary transition-colors duration-200 h-full flex items-center border-b-2 [[ACTIVE_CONTACTO]]" href="contacto.html">Contacto</a>
</div>
</div>
<div class="flex items-center gap-4 lg:gap-6">
<form action="catalogo.html" method="GET" class="hidden lg:flex items-center bg-surface-container border border-outline-variant px-4 py-2 rounded-lg">
<span class="material-symbols-outlined text-secondary mr-2">search</span>
<input name="q" class="bg-transparent border-none focus:ring-0 text-body-md w-48" placeholder="Buscar..." type="search" required/>
<button type="submit" class="hidden"></button>
</form>
<div class="flex items-center gap-2 md:gap-4">
<button class="text-secondary hover:text-primary transition-colors active:scale-95">
<span class="material-symbols-outlined text-2xl">shopping_cart</span>
</button>
<button class="text-secondary hover:text-primary transition-colors active:scale-95">
<span class="material-symbols-outlined text-2xl">person</span>
</button>
<button id="mobile-menu-btn" class="md:hidden text-secondary hover:text-primary transition-colors active:scale-95 ml-2">
<span class="material-symbols-outlined text-2xl">menu</span>
</button>
</div>
</div>
</nav>
<div id="mobile-menu" class="fixed inset-0 top-20 bg-surface z-40 transform translate-x-full transition-transform duration-300 md:hidden overflow-y-auto border-t border-outline-variant shadow-lg">
<div class="flex flex-col p-6 gap-6">
<form action="catalogo.html" method="GET" class="flex items-center bg-surface-container border border-outline-variant px-4 py-2 rounded-lg">
<span class="material-symbols-outlined text-secondary mr-2">search</span>
<input name="q" class="bg-transparent border-none focus:ring-0 text-body-md w-full" placeholder="Buscar..." type="search" required/>
<button type="submit" class="hidden"></button>
</form>
<div class="flex flex-col gap-4">
<a class="font-medium text-lg text-on-surface hover:text-primary transition-colors py-2 border-b border-outline-variant" href="index.html">Inicio</a>
<a class="font-medium text-lg text-on-surface hover:text-primary transition-colors py-2 border-b border-outline-variant" href="catalogo.html">Catálogo</a>
<a class="font-medium text-lg text-on-surface hover:text-primary transition-colors py-2 border-b border-outline-variant" href="nosotros.html">Nosotros</a>
<a class="font-medium text-lg text-on-surface hover:text-primary transition-colors py-2 border-b border-outline-variant" href="contacto.html">Contacto</a>
</div>
</div>
</div>
</header>
"@

$mobileScript = @"
<script>
    document.addEventListener('DOMContentLoaded', () => {
        const mobileMenuBtn = document.getElementById('mobile-menu-btn');
        const mobileMenu = document.getElementById('mobile-menu');
        let isMenuOpen = false;

        if (mobileMenuBtn && mobileMenu) {
            mobileMenuBtn.addEventListener('click', () => {
                isMenuOpen = !isMenuOpen;
                if (isMenuOpen) {
                    mobileMenu.classList.remove('translate-x-full');
                    mobileMenuBtn.innerHTML = '<span class="material-symbols-outlined text-2xl">close</span>';
                } else {
                    mobileMenu.classList.add('translate-x-full');
                    mobileMenuBtn.innerHTML = '<span class="material-symbols-outlined text-2xl">menu</span>';
                }
            });
        }
    });
</script>
</body>
</html>
"@

foreach ($f in $files) {
    $path = "C:\Users\yamil\Documents\Pintofil\$($f.Name)"
    if (Test-Path $path) {
        $content = [System.IO.File]::ReadAllText($path, $utf8)
        
        $activeClass = "text-primary border-primary"
        $inactiveClass = "text-secondary border-transparent"
        
        $thisHeader = $headerTemplate
        if ($f.Active) {
            $thisHeader = $thisHeader.Replace($f.Active, $activeClass)
        }
        $thisHeader = $thisHeader -replace '\[\[ACTIVE_[A-Z]+\]\]', $inactiveClass
        
        $content = $content -replace '(?s)<header.*?</header>', $thisHeader
        
        # Remove old injected mobile script if it exists to prevent duplication
        if ($content -match 'id="mobile-menu-btn"') {
            $content = $content -replace '(?s)<script>\s*document\.addEventListener\(''DOMContentLoaded'', \(\) => \{\s*const mobileMenuBtn.*?</script>\s*</body>\s*</html>', '</body></html>'
        }

        # Add the mobile script
        $content = $content -replace '(?s)</body>\s*</html>', $mobileScript
        
        [System.IO.File]::WriteAllText($path, $content, $utf8)
        Write-Host "Updated $($f.Name)"
    }
}
Write-Host "All files processed."
