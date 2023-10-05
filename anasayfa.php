<!DOCTYPE html>
<html lang="tr">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Sanal Trabzon</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
      crossorigin="anonymous"
    />
    <!-- fontAwesome kütüphanesi -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="stylesheet" href="style.css" /> 
    
  </head>
  <body>
      
    <?php
     include "conn.php";

     $sorgu=$db->prepare("SELECT m.mekanAdi, m.baslik, r.resim
     FROM mekanlar m JOIN resimler r ON m.mekanAdi = r.mekanAdi GROUP BY m.mekanAdi;");
     $sorgu->execute();
     $bilgiler=$sorgu->fetchAll(PDO::FETCH_OBJ);//obje olarak çekiyoruz

    ?>
    <nav class="navbar navbar-expand-sm navbar-dark">
      <div class="container">
        <a class="navbar-brand" href="anasayfa.php">Sanal Trabzon</a>
      </div>
    </nav>
    <div class="container mt-4">             
        
        <div class="card-container">

          <?php
          if ($sorgu->rowCount() > 0) {
          foreach($bilgiler as $b){ ?>

            <div class="card" >
              <!-- style="width: 18rem" -->
              <a href="mekanlar.php?id=<?= $b->mekanAdi; ?>" class="htef">
                <img src="<?= $b->resim ?>" class="card-img-top" alt="..." />
                <div class="card-body">
                  <h5 class="card-title"><strong><?= $b->mekanAdi ?></strong></h5>
                  <p class="card-text">  <?= $b->baslik ?>  </p>
                </div>
              </a>
            </div>
          <?php }
          }else {
            echo "Sayın kullanıcımız şuanda veritabanı sunucularımızda bakım çalışması yapılmaktadır. Lütfen daha sonra tekrar deneyiniz.";
          }
          $db=null;  ?>
        </div>  
    </div>
    <!-- <div class="footer">
        &copy; 2023 Sanal Trabzon. Tüm Hakları Saklıdır.
    </div> -->

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
