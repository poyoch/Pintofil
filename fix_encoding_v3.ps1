$files = @("index.html", "contacto.html", "nosotros.html", "catalogo.html")
foreach ($f in $files) {
    $content = [System.IO.File]::ReadAllText("C:\Users\yamil\Documents\Pintofil\$f", [System.Text.Encoding]::UTF8)
    
    $content = $content -replace 'TÃ©', 'Té'
    $content = $content -replace 'Ã­', 'í'
    $content = $content -replace 'Ã¡', 'á'
    $content = $content -replace 'Ã³', 'ó'
    $content = $content -replace 'Ãº', 'ú'
    $content = $content -replace 'Ã±', 'ñ'
    $content = $content -replace 'Ã‘', 'Ñ'
    
    [System.IO.File]::WriteAllText("C:\Users\yamil\Documents\Pintofil\$f", $content, [System.Text.Encoding]::UTF8)
}
