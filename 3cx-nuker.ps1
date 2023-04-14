Get-process | Where-Object {$_.name -Like "*3CX*"} | stop-process -Force



$3cxapps = Get-WMIObject -Class Win32_product | Where-Object {$_.name -like "*3CX*"}
foreach ($app in $3cxapps) {
try {
$app.Uninstall()
Write-Host "Uninstalled $($app.Name)"
}
catch {
Write-Host "Error uninstalling $($app.Name): $($_.Exception.Message)"
}
}



$appNames = @("3CX Desktop App", "3CXPhone for Windows")
foreach ($appName in $appNames) {
$appInstalled = Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -eq $appName }
if ($appInstalled) {
try {
$uninstallString = $appInstalled.UninstallString
Start-Process msiexec.exe -ArgumentList "/x `"$uninstallString`" /qn" -Wait
Write-Host "Uninstalled $($appName)"
}
catch {
Write-Host "Error uninstalling $($appName): $($_.Exception.Message)"
}
}
else {
Write-Host "$appName is not installed"
}
}



Write-Host ""
Write-Host "~~~~~~~~~~~~~~~~~~~~~~~~~"
Write-Host "~~~~~~~~~~~~~~~~~~~~~~~~~"
Write-Host ""



$pro_locations = @(Get-ChildItem C:\Users\ -Directory -Force).Name
foreach($Script:location in $Script:pro_locations)
    {
        Remove-Item -Recurse "C:\Users\$Script:location\AppData\Roaming\3CXDesktopApp" -ErrorAction SilentlyContinue -Force
        if (-not $?)
        {
            Write-Host ""
            Write-Host "~~~~>Could not find C:\Users\$Script:location\AppData\Roaming\3CXDesktopApp"
        }
        else
        {
            Write-Host ""
            Write-Host "~~~~>Deleted C:\Users\$Script:location\AppData\Roaming\3CXDesktopApp"
        }
        Remove-Item -Recurse "C:\Users\$Script:location\AppData\Local\Programs\3CXDesktopApp" -ErrorAction SilentlyContinue -Force
        if (-not $?)
        {
            Write-Host ""
            Write-Host "~~~~>Could not find C:\Users\$Script:location\AppData\Local\Programs\3CXDesktopApp"
        }
        else
        {
            Write-Host ""
            Write-Host "~~~~>Deleted C:\Users\$Script:location\AppData\Local\Programs\3CXDesktopApp"
        }
        $3cx_zconfig = (Get-ChildItem "C:\Users\$Script:location\AppData\Local\Microsoft\Windows\INetCache\Content.Outlook" -ErrorAction SilentlyContinue -Recurse | Where-Object {$_.extension -eq ".3cxconfig"}).FullName
        if ($null -eq $3cx_zconfig)
        {
            Write-Host ""
            Write-Host "~~~~>No config found in C:\Users\$Script:location\AppData\Local\Microsoft\Windows\INetCache\Content.Outlook"        
        }
        else
        {
        Remove-Item "$3cx_zconfig" -ErrorAction SilentlyContinue -Force
            Write-Host ""
            Write-Host "~~~~>Deleted $3cx_zconfig"
        }
    }