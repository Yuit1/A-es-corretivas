$comeco = Read-Host "Você irá executar os comandos em qual HostName?"

                try {
                    $result = Invoke-Command -ComputerName $comeco -ScriptBlock {
                        # Solicita ao usuário inserir os comandos a serem executados remotamente
                        $comandosRemotos = Read-Host "Digite os comandos a serem executados remotamente (separados por ponto e vírgula)"

                        # Executa os comandos inseridos pelo usuário e captura os resultados
                        $resultados = Invoke-Expression $comandosRemotos

                        # Retorna os resultados para serem exibidos no host local
                        $resultados
                    }

                    # Exibe os resultados no host local
                    Write-Host "Resultados dos comandos remotos no Host: $comeco"
                    $result | ForEach-Object { Write-Host $_ }
                } catch {
                    Write-Host "Erro ao conectar-se ao host $comeco. Verifique o nome do host e a conectividade."
                } finally {
                Pause
                cls
                Exit-PSSession
                    }
                }
