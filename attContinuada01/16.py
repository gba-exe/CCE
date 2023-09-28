from math import floor, ceil

alturaBruno = 1.75
pesoBruno = 85
IMCBruno = (pesoBruno/(pow(alturaBruno, 2)))
tetoIMC = floor(IMCBruno)

print(tetoIMC)