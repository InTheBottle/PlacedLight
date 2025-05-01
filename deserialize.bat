IF exist "dist" (
    rmdir dist /s /q
) ELSE (
    mkdir dist
)

xcopy /s /d /i /EXCLUDE:exclusions.txt package dist

SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\PL - Even Brighter" -o "dist\PL - Even Brighter.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\PL - Bright" -o "dist\PL - Bright.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\PL - Dark" -o "dist\PL - Dark.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\PL - Default" -o "dist\PL - Default.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\PL - Nightmare" -o "dist\PL - Nightmare.esp"

SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Placed Light" -o "dist\Placed Light.esm"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Placed Light Exteriors" -o "dist\Placed Light Exteriors.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Placed Light - Shadows and Ambient" -o "dist\Placed Light - Shadows and Ambient.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\HDR - Interiors" -o "dist\HDR - Interiors.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\PL Bulbs" -o "dist\PL Bulbs.esp"

SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\Carbon LightBulbs Edit" -o "dist\Misc Patches\Carbon LightBulbs Edit.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\NOTWL - Lanterns" -o "dist\Misc Patches\NOTWL - Lanterns.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\Placed Light - Creation Club" -o "dist\Misc Patches\Placed Light - Creation Club.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\Placed Light Exteriors - NOTWL 3 patch" -o "dist\Misc Patches\Placed Light Exteriors - NOTWL 3 patch.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\Placed Light - USSEP Patch" -o "dist\Misc Patches\Placed Light - USSEP Patch.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\Lumo - Placed Light Exteriors" -o "dist\Misc Patches\Lumo - Placed Light Exteriors.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Embers XD Patched Meshes" -o "dist\meshes"