<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "sanaltrabzon";
    try{
        $db=new PDO("mysql:host=$servername; dbname=$dbname;",$username,$password);
        $db->exec("SET CHARACTER SET UTF8");
       // echo "ok";
    }
    catch(PDOException $Hatamesaji){
        echo "baglanti hatasi"."<br>";
        echo "Hata aciklamasi:".$Hatamesaji->getMessage();
        die();
    }

    //$db=null;
    ?>

</body>
</html>