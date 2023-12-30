 # Sombrear usuário em máquina remota
                $IP = Read-Host "Qual o IP?"
                quser /server:$IP
                if (-not [IPAddress]::TryParse($IP, [ref]$null)) {
	                Write-Host "O endereÃ§o IP fornecido Ã© invÃ¡lido."
	                exit
                }

                $ID = Read-Host "Qual o ID?"
                if ($ID -eq "") {
	                Write-Host "O ID nÃ£o pode ser vazio."
	                exit
                }
                mstsc.exe /shadow:$ID /v:$IP /control /noConsentPrompt


                pause
                cls
