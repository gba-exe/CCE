conjuntoProcessador = {'CPU', 'Registrador', 'Core'}
# print(conjuntoProcessador)

# conjuntoProcessadorSet = set(['CPU', 'Registrador', 'Core'])
# print(conjuntoProcessadorSet)

listaProcessador = {'CPU', 'Registrador', 'Core','CPU'}
conjuntoProcessadorSet = set(listaProcessador)
# print(conjuntoProcessadorSet)

userThor = {'mysql', 'CPU', 'RAM', 'SSD1', 'Google'}
userThanos = {'LoL', 'RAM', 'CPU', 'HD', 'Google'}
userCA = {'mysql', 'LOL','RAM', 'CPU', 'SSD1', 'Firefox'}
userTS = {'mysql', 'CPU', 'RAM', 'SSD1', 'Google'}

uniao1 = userThor | userCA
# print(uniao1)

uniao2 = userThor | userThanos | userCA | userTS
# print(uniao2)

uniao3 = userThor.union(userThanos, userCA, userTS)
# print(uniao3)

interseccao1 = userThor & userCA
# print(interseccao1)

interseccao2 = userThor.intersection(userCA)
# print(interseccao2)

interseccao3 = userThor.intersection(userThanos, userCA, userTS)
print(interseccao3)

pertinencia1 = 'CPU' in userTS
# print(pertinencia1)

pertinencia2 = 'Firefox' in userThanos
# print(pertinencia2)

pertinencia3 = 'LoL' not in userThor
# print(pertinencia3)

pertinencia4 = userThor.issubset(userThanos)
pertinencia5 = userThor.issubset(userTS)
pertinencia5 = userThor <= userThanos
pertinencia6 = userThor <= userTS

pertinencia7 = userTS.issuperset(userThor)
pertinencia8 = userTS >= userThor