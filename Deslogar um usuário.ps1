 # Deslogar usuário
                $IP1 = Read-Host "Digite o IP"
                quser /server:$IP1
                $IP2 = Read-Host "Digite o ID que será deslogado"
                logoff $IP2 /server:$IP1
                pause
                cls
