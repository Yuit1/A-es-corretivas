# limpar diferentes diretórios e caches temporários no sistema Windows.

                # Limpar a pasta Temp
                Remove-Item -Path "$env:TEMP\*" -Force -Recurse
                Get-ChildItem -Path "$env:TEMP" -Directory | ForEach-Object { Remove-Item $_.FullName -Force -Recurse }

                # Limpar a pasta TMP
                Remove-Item -Path "$env:TMP\*" -Force -Recurse
                Get-ChildItem -Path "$env:TMP" -Directory | ForEach-Object { Remove-Item $_.FullName -Force -Recurse }

                # Limpar a pasta TEMP no perfil de todos os usuários
                Remove-Item -Path "$env:ALLUSERSPROFILE\TEMP\*" -Force -Recurse
                Get-ChildItem -Path "$env:ALLUSERSPROFILE\TEMP" -Directory | ForEach-Object { Remove-Item $_.FullName -Force -Recurse }

                # Limpar a pasta TEMP no diretório do sistema
                Remove-Item -Path "$env:SystemRoot\TEMP\*" -Force -Recurse
                Get-ChildItem -Path "$env:SystemRoot\TEMP" -Directory | ForEach-Object { Remove-Item $_.FullName -Force -Recurse }

                # Limpar o cache do Internet Explorer
                Clear-WebBrowserCache -Browser InternetExplorer
                Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\Windows\Tempor~1\*" -Force -Recurse
                Get-ChildItem -Path "$env:LOCALAPPDATA\Microsoft\Windows\Tempor~1" -Directory | ForEach-Object { Remove-Item $_.FullName -Force -Recurse }

                # Limpar o cache do Google Chrome
                Remove-Item -Path "$env:LOCALAPPDATA\Google\Chrome\User Data\*" -Force -Recurse
                Get-ChildItem -Path "$env:LOCALAPPDATA\Google\Chrome\User Data" -Directory | ForEach-Object { Remove-Item $_.FullName -Force -Recurse }

                # Limpar o cache do Mozilla Firefox
                Remove-Item -Path "$env:LOCALAPPDATA\Mozilla\Firefox\Profiles\*" -Force -Recurse
                Get-ChildItem -Path "$env:LOCALAPPDATA\Mozilla\Firefox\Profiles" -Directory | ForEach-Object { Remove-Item $_.FullName -Force -Recurse }


                pause
                cls
