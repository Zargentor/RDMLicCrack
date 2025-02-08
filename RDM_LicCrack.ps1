# Определяем путь к файлу конфигурации
$configFilePath = "$env:LOCALAPPDATA\Devolutions\RemoteDesktopManagerFree\RemoteDesktopManagerFree.cfg"

[xml]$xmlContent = Get-Content $configFilePath

# Находим тег <CreationDate> и изменяем его значение
$xmlContent.Option.CreationDate = "9999-07-19T00:00:00+04:00"

# Сохраняем изменения в файл
$xmlContent.Save($configFilePath)
