@echo off
setlocal enabledelayedexpansion

set "folderPath=%~dp0package\"
for %%e in (.esp .esm) do (
    for /r "%folderPath%" %%f in (*%%e) do (
        set "relativePath=%%f"
        set "relativePath=!relativePath:%folderPath%=!"
        SpriggitCLI\Spriggit.CLI.exe serialize -i "package\!relativePath!" -o "Spriggit/!relativePath:~0,-4!" -g SkyrimSE -p Spriggit.Json
    )
)
endlocal
