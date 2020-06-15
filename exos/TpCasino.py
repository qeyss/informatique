#TP Casino
#Les variables :
# - Le numéro gagnant mis aléatoirement entre 1 et 50
# - Le numéro du joueur
# La somme d'argent de départ
# La mise
# L'argent gagné

from random import *
import time
import os
argentGagne = 0
print(" Bienvenue sur le jeu de la roulette")
print(" On lance la roulette")
time.sleep(2)
numeroGagnant = randrange(50)
print(numeroGagnant)
money = 5000
print(" Vous avez ", money, " euros pour commencer")
number = int(input(" Vous devez choisir un nombre entre 1 et 50\n"))
mise = int(input(" Quelle est votre mise ?\n"))
if number == numeroGagnant:
    argentGagne = mise * 3
    money = money + argentGagne
elif number % 2 == 0 and numeroGagnant % 2 == 0 or number % 2 != 0 and numeroGagnant % 2 != 0:
    argentGagne = mise / 2
    money = money + argentGagne
else:
    money = money - mise
print(money)
    
    


os.system("pause")
