# Epicer Enemies

## Documentation
https://docs.google.com/document/d/1J-HVy7t9LDHRrMIEFV5_12bemz5FNHkCTytelzH-3ms/edit

## Requirements
Epic Encounters 2, TEST Epip Encounters, Epip Gameplay, Derpy’s Addon  
Requires Epip developer mode at the moment!  

## Installation
### Setup
Extract everything into: `C:\Users\[user]\Documents\Larian Studios\Divinity Original Sin 2 Definitive Edition\Osiris Data\Epip\`

### Configuration
#### Enable Epip developer mode:
Create `OsirisExtenderSettings.json` in `C:\SteamLibrary\steamapps\common\Divinity Original Sin 2\DefEd\bin create or find` with contents:

```
"LogCompile": false,
"CreateConsole": false,
"EnableLogging": false,
"LogRuntime": false,
"DeveloperMode": true
```
        
#### In-game (first time setup)
Go to Epip Settings > Epic Enemies 
* Set points to 100
* Set normal enemy point multiplier to 1.5  
* Set boss point multiplier to 1.5  
* Set every category weight multiplier to 0  

#### Scripts
You can disable parts that you don't like in `PersonalScripts.json`  
Further configuration through `Scripts/*.lua`  
