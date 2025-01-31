# Placed Light
- [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/135488)

## Dev setup
- Download [SpriggitCLI.zip](https://github.com/Mutagen-Modding/Spriggit/releases/latest) and place it in `SpriggitCLI` folder (git ignored so it wont show up in git)

### Serialize (Get content from esp/esm into git)
- Make sure `package` folder have latest esp/esm files
- If you deleted/renamed any esp/esm delete subfolder for it under `Spriggit` folder
- Run `serialize.bat`
- Commit changes

### Deserialize (Create esp/esm from git contents)
- Make sure `deserialize.bat` matches the esp/esm files that should be packaged
- Run `deserialize.bat`
- Now dist folder will have all contents that can be zipped up and deployed