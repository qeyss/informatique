/* Trouve le nombre magique

les variables:

- variable guessNumber
- variable myNumber du nombre proposé par le joueur

*/
function nb_aleatoire(min, max)
{
     var nb = min + (max-min+1)*Math.random();
     return Math.floor(nb);
}
console.log("Bienvenue sur mon jeu")
console.log("Vous devez trouver un nombre entre 1 et 100")
var guessNumber = nb_aleatoire(1, 100)
console.log(guessNumber)
var message = ("Veuillez choisir un nombre entre 1 et 100")
var myNumber;
var cpt = 0;
do
    {
        myNumber = prompt(message)
        cpt++;
        if (myNumber > guessNumber)
            message = " C'est moins ";
        else
            message = " C'est plus grand";
      
    }
while(myNumber != guessNumber)

alert( "Bravo, tu vas gagné en " + cpt + " coups");
    

