Set-Variable -Name workspace -Value $Env:FACTORIO_WORKSPACE
Set-Variable -Name mod_base -Value $Env:FACTORIO_20_MODS_BASE
Set-Variable -Name package -Value "pycircuitcompat"

New-Item -ItemType Directory -Force -Path "$mod_base\$package" | Out-Null

Set-Variable -Name version -Value (Get-Content "$workspace\$package\info.json" | ConvertFrom-Json).version
Move-Item -Path "$workspace\$package\${package}_${version}.zip" -Destination "${mod_base}\${package}" -Force -ErrorAction SilentlyContinue

Set-Variable -Name version_khaoscircuitrygroup -Value (Get-Content "$workspace\khaoscircuitrygroup\info.json" | ConvertFrom-Json).version
Move-Item -Path "$workspace\khaoscircuitrygroup\khaoscircuitrygroup_$version_khaoscircuitrygroup.zip" -Destination "${mod_base}\${package}" -Force -ErrorAction SilentlyContinue

Set-Variable -Name version_khaoscircuitry -Value (Get-Content "$workspace\khaoscircuitry\info.json" | ConvertFrom-Json).version
Move-Item -Path "$workspace\khaoscircuitry\khaoscircuitry_$version_khaoscircuitry.zip" -Destination "$mod_base\$package" -Force -ErrorAction SilentlyContinue

Set-Variable -Name version_khaoslib -Value (Get-Content "$workspace\khaoslib\info.json" | ConvertFrom-Json).version
Move-Item -Path "$workspace\khaoslib\khaoslib_$version_khaoslib.zip" -Destination "${mod_base}\${package}" -Force -ErrorAction SilentlyContinue

Start-Process -FilePath "${Env:FACTORIO_20_PATH}\bin\x64\Factorio.exe" -ArgumentList "--mod-directory ${mod_base}\${package}"
