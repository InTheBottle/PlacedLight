IF exist "dist" (
    rmdir dist /s /q
) ELSE (
    mkdir dist
)

xcopy /s /d /i /EXCLUDE:exclusions.txt package dist

SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Templates\PL - Even Brighter" -o "dist\Templates\PL - Even Brighter.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Templates\PL - Bright" -o "dist\Templates\PL - Bright.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Templates\PL - Dark" -o "dist\Templates\PL - Dark.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Templates\PL - Default" -o "dist\Templates\PL - Default.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Templates\PL - Nightmare" -o "dist\Templates\PL - Nightmare.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Templates\PL - Fixed Vanilla" -o "dist\Templates\PL - Fixed Vanilla.esp"

SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Main\Placed Light" -o "dist\Main\Placed Light.esm"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Main\Placed Light Exteriors" -o "dist\Main\Placed Light Exteriors.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Main\Placed Light - Shadows and Ambient" -o "dist\Main\Placed Light - Shadows and Ambient.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Main\HDR - Interiors" -o "dist\Main\HDR - Interiors.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Main\PL Bulbs" -o "dist\Main\PL Bulbs.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Main\PL Bulbs ISL" -o "dist\Main\PL Bulbs ISL.esp"

SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\NOTWL - Lanterns" -o "dist\Misc Patches\NOTWL - Lanterns.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\Placed Light - Creation Club" -o "dist\Misc Patches\Placed Light - Creation Club.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\Placed Light Exteriors - NOTWL 3 patch" -o "dist\Misc Patches\Placed Light Exteriors - NOTWL 3 patch.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\Placed Light - USSEP Patch" -o "dist\Misc Patches\Placed Light - USSEP Patch.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\Lumo - Placed Light Exteriors" -o "dist\Misc Patches\Lumo - Placed Light Exteriors.esp"
