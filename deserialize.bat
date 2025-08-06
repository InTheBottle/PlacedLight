IF exist "dist" (
    rmdir dist /s /q
) ELSE (
    mkdir dist
)

xcopy /s /d /i /EXCLUDE:exclusions.txt package dist

SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Templates\TL - Even Brighter" -o "dist\Templates\TL - Even Brighter.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Templates\TL - Bright" -o "dist\Templates\TL - Bright.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Templates\TL - Dark" -o "dist\Templates\TL - Dark.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Templates\TL - Default" -o "dist\Templates\TL - Default.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Templates\TL - Nightmare" -o "dist\Templates\TL - Nightmare.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Templates\TL - Fixed Vanilla" -o "dist\Templates\TL - Fixed Vanilla.esp"

SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Main\True Light" -o "dist\Main\True Light.esm"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Main\True Light Exteriors" -o "dist\Main\True Light Exteriors.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Main\True Light - Shadows and Ambient" -o "dist\Main\True Light - Shadows and Ambient.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Main\HDR - Interiors" -o "dist\Main\HDR - Interiors.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Main\TL Bulbs" -o "dist\Main\TL Bulbs.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Main\TL Bulbs ISL" -o "dist\Main\TL Bulbs ISL.esp"

SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\NOTWL - Lanterns" -o "dist\Misc Patches\NOTWL - Lanterns.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\True Light - Creation Club" -o "dist\Misc Patches\True Light - Creation Club.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\True Light Exteriors - NOTWL 3 patch" -o "dist\Misc Patches\True Light Exteriors - NOTWL 3 patch.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\True Light - USSEP Patch" -o "dist\Misc Patches\True Light - USSEP Patch.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\Lumo - True Light Exteriors" -o "dist\Misc Patches\Lumo - True Light Exteriors.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\TL - WSU Patch" -o "dist\Misc Patches\TL - WSU Patch.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\TL - Alternate Perspective GTS Patch" -o "dist\Misc Patches\TL - Alternate Perspective GTS Patch.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\TL - Alternate Perspective Patch" -o "dist\Misc Patches\TL - Alternate Perspective Patch.esp"