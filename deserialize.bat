IF exist "dist" (
    rmdir dist /s /q
) ELSE (
    mkdir dist
)

xcopy /s /d /i /EXCLUDE:exclusions.txt package dist

SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\PL - Dark" -o "dist/PL - Dark.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\PL - Default" -o "dist/PL - Default.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Placed Light - Spots" -o "dist/Placed Light - Spots.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Placed Light Exteriors" -o "dist/Placed Light Exteriors.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Placed Light" -o "dist/Placed Light.esm"

SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\NOTWL - Lanterns" -o "dist\Misc Patches\NOTWL - Lanterns.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\Placed Light - CC" -o "dist\Misc Patches\Placed Light - CC.esp"
SpriggitCLI\Spriggit.CLI.exe deserialize -i "Spriggit\Misc Patches\Placed Light Exteriors - NOTWL 3 patch" -o "dist\Misc Patches\Placed Light Exteriors - NOTWL 3 patch.esp"
