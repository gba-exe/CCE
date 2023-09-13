import usuario
import psutil as ps
from pick import pick
import os
import time as t
import keyboard as k
from getpass import getpass

# ================================================================= Login do usuário
user = usuario.Usuario(
    input("Digite o nome de usuário: "),
    getpass("Digite a sua senha: ")
)

# ================================================================= Configurações do programa 

while True:
    os.system('cls' if os.name == 'nt' else 'clear')
    opcoesInicio = ['Verificar Dados', 'Configurações', 'Sair']

    opcEscolhida, index = pick(opcoesInicio, title='Olá ' + user.usuario,indicator='=>', default_index=0)


# ================================================================= Captura de Dados 

    if(opcEscolhida == 'Verificar Dados'):
        opcoesComponente = ['Maquina 1', 'Maquina 2', 'Maquina 3', 'Todos', 'Voltar']

        opcEscolhida, index = pick(opcoesComponente, indicator='=>', default_index = 0)

        while True:
            dadoCPUPercent = 0
            dadoRAMPercent = 0
            dadoHDPercent = 0

            dadoCPUPercent1 = round(100-ps.cpu_times_percent(interval=1)[2], 1) if user.CPUPercent else None
            dadoRAMPercent1 = ps.virtual_memory().percent if user.RAMPercent else None
            dadoHDPercent1 = ps.disk_usage("/").percent if user.HDPercent else None
            
            dadoCPUPercent2 = dadoCPUPercent1 + dadoCPUPercent1 * 0.10 if dadoCPUPercent1 < 90.0 else 100.0
            dadoRAMPercent2 = dadoRAMPercent1 + dadoRAMPercent1 * 0.15 if dadoRAMPercent1 < 90.0 else 100.0
            dadoHDPercent2 = dadoHDPercent1 - dadoHDPercent1 * 0.05 if dadoHDPercent1 > 5.0 else 0.0
        
            dadoCPUPercent3 = dadoCPUPercent2 + dadoCPUPercent2 * 0.05 if dadoCPUPercent2 < 95.0 else 100.0
            dadoRAMPercent3 = dadoRAMPercent2 - dadoRAMPercent2 * 0.05 if dadoRAMPercent2 > 5.0 else 0.0
            dadoHDPercent3 = dadoHDPercent2 * 3 if dadoHDPercent2 < 30.0 else 100.0

            if opcEscolhida == 'Maquina 1':
                dadoCPUPercent = dadoCPUPercent1
                dadoRAMPercent = dadoRAMPercent1
                dadoHDPercent = dadoHDPercent1

            if opcEscolhida == 'Maquina 2':
                dadoCPUPercent = dadoCPUPercent2
                dadoRAMPercent = dadoRAMPercent2
                dadoHDPercent = dadoHDPercent2

            if opcEscolhida == 'Maquina 3':
                dadoCPUPercent = dadoCPUPercent3
                dadoRAMPercent = dadoRAMPercent3
                dadoHDPercent = dadoHDPercent3

            if opcEscolhida == 'Voltar':
                os.system('cls' if os.name == 'nt' else 'clear')

                break


            mensagem = f"""
   <===========================================================================>         
                                    CPU
    ---------------------------------------------------------------------------
            | Porcentagem de uso da CPU: {round(dadoCPUPercent,2)} %
    ---------------------------------------------------------------------------
                
                                    MEMÓRIA
    ---------------------------------------------------------------------------
            | Porcentagem de uso: {round(dadoRAMPercent,2)} %
    ---------------------------------------------------------------------------
                
                                    ARMAZENAMENTO
    ---------------------------------------------------------------------------
            | Porcentagem de uso: {round(dadoHDPercent,2)} %
    ---------------------------------------------------------------------------
   <===========================================================================> 

    (Pressione [ESC] para voltar)
                """
            
            if opcEscolhida == 'Todos':
                mensagem = f"""
   <===========================================================================> 
                                   CPU 1
    ---------------------------------------------------------------------------
            | Porcentagem de uso da CPU: {round(dadoCPUPercent1,2)} %
    ---------------------------------------------------------------------------
                
                                  MEMÓRIA 1
    ---------------------------------------------------------------------------
            | Porcentagem de uso: {round(dadoRAMPercent1,2)} %
    ---------------------------------------------------------------------------
                
                                ARMAZENAMENTO 1
    ---------------------------------------------------------------------------
            | Porcentagem de uso: {round(dadoHDPercent1,2)} %
    ---------------------------------------------------------------------------
   <===========================================================================> 

   <===========================================================================> 
                                   CPU 2
    ---------------------------------------------------------------------------
            | Porcentagem de uso da CPU: {round(dadoCPUPercent2,2)} %
    ---------------------------------------------------------------------------
                
                                  MEMÓRIA 2
    ---------------------------------------------------------------------------
            | Porcentagem de uso: {round(dadoRAMPercent2,2)} %
    ---------------------------------------------------------------------------
                
                                ARMAZENAMENTO 2
    ---------------------------------------------------------------------------
            | Porcentagem de uso: {round(dadoHDPercent2,2)} %
    ---------------------------------------------------------------------------
   <===========================================================================> 

   <===========================================================================> 
                                   CPU 3
    ---------------------------------------------------------------------------
            | Porcentagem de uso da CPU: {round(dadoCPUPercent3,2)} %
    ---------------------------------------------------------------------------
                
                                  MEMÓRIA 3
    ---------------------------------------------------------------------------
            | Porcentagem de uso: {round(dadoRAMPercent3,2)} %
    ---------------------------------------------------------------------------
                
                                ARMAZENAMENTO 3
    ---------------------------------------------------------------------------
            | Porcentagem de uso: {round(dadoHDPercent3,2)} %
    ---------------------------------------------------------------------------
   <===========================================================================> 


    (Pressione [ESC] para voltar)
                """


            os.system('cls' if os.name == 'nt' else 'clear')
            
            print(mensagem)
            
            if k.read_key() == 'esc':
                break

    
# ================================================================= Configurações

    elif (opcEscolhida == 'Configurações'):
        opcoesConfig = ['CPU', 'HD', 'RAM', "Voltar"]
        opcHardware, index = pick(opcoesConfig, indicator='=>', default_index=0)
        opcEscolha = ['True', 'False']

# ================================================================= CPU
    
        if (opcHardware == 'CPU'):
            opcoesCPU = ['Processadores físicos', 'Processadores Lógicos', 'Frequência de CPU', 'Porcentagem de uso da CPU', 'Voltar']
            opcConfigCPU, index = pick(opcoesCPU, indicator='=>', default_index=0)
        
            if(opcConfigCPU == 'Processadores físicos'):
                opcEscolha, index = pick(opcEscolha, indicator='=>', default_index=0)
                
                if(opcEscolha == 'True'): 
                    user.CPUFisc = True
                else: user.CPUFisc = False
            
            elif(opcConfigCPU == 'Processadores Lógicos'):
                opcEscolha, index = pick(opcEscolha, indicator='=>', default_index=0)
                            
                if(opcEscolha == 'True'): 
                    user.CPULogc = True
                else: user.CPULogc = False

            elif(opcConfigCPU == 'Frequência de CPU'):
                opcEscolha, index = pick(opcEscolha, indicator='=>', default_index=0)
                            
                if(opcEscolha == 'True'): 
                    user.CPUFreq = True
                else: user.CPUFreq = False  

            elif(opcConfigCPU == 'Porcentagem de uso da CPU'):
                opcEscolha, index = pick(opcEscolha, indicator='=>', default_index=0)
                            
                if(opcEscolha == 'True'): 
                    user.CPUPercent = True
                else: user.CPUPercent = False            

# ================================================================= HD

        elif(opcHardware == 'HD'):
            opcoesHD = ['Partições do HD', 'Armazenamento total', 'Armazenamento atual', 'Porcentagem de uso do HD', 'Voltar']
            opcConfigHD, index = pick(opcoesHD, indicator='=>', default_index=0)
            
            if(opcConfigHD == 'Partições do HD'):
                opcEscolha, index = pick(opcEscolha, indicator='=>', default_index=0)
                
                if(opcEscolha == 'True'): 
                    user.HDNumParcs = True
                else: user.HDNumParcs = False

            elif(opcConfigHD == 'Armazenamento total'):
                opcEscolha, index = pick(opcEscolha, indicator='=>', default_index=0)
                
                if(opcEscolha == 'True'): 
                    user.HDTotal = True
                else: user.HDTotal = False

            elif(opcConfigHD == 'Armazenamento atual'):
                opcEscolha, index = pick(opcEscolha, indicator='=>', default_index=0)
                
                if(opcEscolha == 'True'): 
                    user.HDAtual = True
                else: user.HDAtual = False
                
            elif(opcConfigHD == 'Porcentagem de uso do HD'):
                opcEscolha, index = pick(opcEscolha, indicator='=>', default_index=0)
                
                if(opcEscolha == 'True'): 
                    user.HDPercent = True
                else: user.HDPercent = False

#======================================================================================== RAM
        elif(opcHardware == 'RAM'):
            opcoesRAM = ['Quantidade total de RAM', 'Uso atual de RAM', 'Porcentagem de uso da RAM', 'Voltar']
            opcConfingRAM, index = pick(opcoesRAM, indicator='=>', default_index=0)
            
            if(opcConfingRAM == 'Partições do HD'):
                opcEscolha, index = pick(opcEscolha, indicator='=>', default_index=0)
                
                if(opcEscolha == 'True'): 
                    user.RAMTot = True
                else: user.RAMTot = False

            elif(opcConfingRAM == 'Uso atual de RAM'):
                opcEscolha, index = pick(opcEscolha, indicator='=>', default_index=0)
                
                if(opcEscolha == 'True'): 
                    user.RAMAtual = True
                else: user.RAMAtual = False

            elif(opcConfingRAM == 'Porcentagem de uso da RAM'):
                opcEscolha, index = pick(opcEscolha, indicator='=>', default_index=0)
                
                if(opcEscolha == 'True'): 
                    user.RAMPercent = True
                else: user.RAMPercent = False


#====================================================================================== Sair

    elif(opcEscolhida == 'Sair'):
        os.system('cls' if os.name == 'nt' else 'clear')
        break
