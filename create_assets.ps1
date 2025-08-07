# Create minimal PNG files for Expo assets
Add-Type -AssemblyName System.Drawing

# Create a simple 1024x1024 orange icon
$bitmap = New-Object System.Drawing.Bitmap(1024, 1024)
$graphics = [System.Drawing.Graphics]::FromImage($bitmap)
$brush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(217, 65, 30))
$graphics.FillRectangle($brush, 0, 0, 1024, 1024)
$bitmap.Save("assets\icon.png", [System.Drawing.Imaging.ImageFormat]::Png)
$graphics.Dispose()
$bitmap.Dispose()

# Copy for adaptive icon
Copy-Item "assets\icon.png" "assets\adaptive-icon.png"

# Create splash screen - green background
$bitmap2 = New-Object System.Drawing.Bitmap(2048, 2048)
$graphics2 = [System.Drawing.Graphics]::FromImage($bitmap2)
$brush2 = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(147, 197, 114))
$graphics2.FillRectangle($brush2, 0, 0, 2048, 2048)
$bitmap2.Save("assets\splash.png", [System.Drawing.Imaging.ImageFormat]::Png)
$graphics2.Dispose()
$bitmap2.Dispose()

# Create favicon - small orange square
$bitmap3 = New-Object System.Drawing.Bitmap(32, 32)
$graphics3 = [System.Drawing.Graphics]::FromImage($bitmap3)
$brush3 = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(217, 65, 30))
$graphics3.FillRectangle($brush3, 0, 0, 32, 32)
$bitmap3.Save("assets\favicon.png", [System.Drawing.Imaging.ImageFormat]::Png)
$graphics3.Dispose()
$bitmap3.Dispose()

Write-Host "Assets created successfully!"
