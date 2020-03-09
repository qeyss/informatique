[void] [system.reflection.Assembly]::LoadWithPartialName("MySql.Data")  

# On positionne quelques variables  
$serv = "127.0.0.1"  
$port = "3306"  
$user = "root"  
$password = "motdepasse"
$db = "table"
  
# Création de l'instance, connexion à la base de données  
$mysql = New-Object MySql.Data.MySqlClient.MySqlConnection("server=$serv;port=$port;uid=$user;pwd=$password;database=$db;Pooling=False")  
$mysql.Open()  
   
# Instanciation de la requête  
$reqStr = "SELECT * FROM actor"  
$req = New-Object Mysql.Data.MysqlClient.MySqlCommand($reqStr,$mysql)  
   
# Création du data adapter et du dataset qui permettront de traiter les données  
$dataAdapter = New-Object MySql.Data.MySqlClient.MySqlDataAdapter($req)  
$dataSet = New-Object System.Data.DataSet  
$dataAdapter.Fill($dataSet)
  
# Affichage du résultat  
$res = $dataSet.Tables
$res | Format-Table  

#Fermeture de la connexion
$mysql.Close()
pause