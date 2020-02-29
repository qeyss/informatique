/* Un nombre est premier s'il 
est divisible par 1 et lui même */

var nombre = prompt("Veuillez entrer un nombre");
/* faire une boucle divisant le nombre par tous les autres nombres
autre que 1 et lui même et si l'un a 0 comme reste alors
il n'est pas premier
*/
var estPremier = true;

for(var i = 2; i< nombre; i++){
    if(nombre % i == 0){
      estPremier = false
      console.log(nombre + " n'est pas un nombre premier");
      console.log(nombre + " est divisible par " + i);
      break;
      
    }
      
}

if (estPremier){
  console.log( nombre + " est premier");
}
