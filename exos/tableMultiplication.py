#Table de multiplication avec un paramètre

def table(nb):
    i = 1
    while i <= 10:
        print(i, "x",nb, "=",(i * nb))
        i+=1

table(5)
