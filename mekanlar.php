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
     $mekan_id = $_GET["id"];

     $sorgu=$db->prepare("SELECT * FROM mekanlar WHERE mekanAdi='$mekan_id' ");
     $sorgu->execute();
     $bilgiler=$sorgu->fetchAll(PDO::FETCH_OBJ);//obje olarak çekiyoruz

     $rsorgu=$db->prepare("SELECT * FROM resimler WHERE mekanAdi='$mekan_id' ");
     $rsorgu->execute();
     $resimler=$rsorgu->fetchAll(PDO::FETCH_OBJ);//obje olarak çekiyoruz

    ?>

    <nav class="navbar navbar-expand-sm navbar-dark">
      <div class="container">
        <a class="navbar-brand" href="anasayfa.php">Sanal Trabzon</a>
      </div>
    </nav>
    <?php
        foreach($bilgiler as $b){ ?>
    <div class="container">
      <div class="row">
        <div class="col-sm-12 col-md-6">
          <h2 class="sol-taraf"><?= $b->mekanAdi?></h2>
        </div>
        <div class="col">
          <div class="sag-taraf">
            <a href="<?= $b->ses?>" class="href ses-renk">
            <i class="fa-brands fa-youtube"></i> <Strong>Belgesel İçin Tıklayınız.</Strong></a>           
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-12 col-md-6">
          <p class="sol-taraf"><?= $b->baslik?></p>
        </div>
        <div class="col-sm-12 col-md-6">
          <div class="sag-taraf">
            <p>
              <i class="fa-solid fa-location-dot fa-bounce" style="color: #264653" ></i>
              <a href="<?= $b->adres_link?>" style="color: #264653"><strong><?= $b->adres?></strong></a>
            </p>
          </div>
        </div>
      </div>
    </div>
    <?php }  ?>

    <div class="row justify-content-center">
      <div class="col-10 slide">
        <div id="carouselExampleInterval" 
             class="carousel slide" 
             data-bs-ride="carousel"             
        > <!-- style="max-width: 500px; margin: 0 auto;" -->
          <div class="carousel-inner">
            <?php

            if ($rsorgu->rowCount() > 0) {
                $first = true;
                foreach($resimler as $r){
            ?>
            <div class="carousel-item <?= $first ? 'active' : ''; ?>" data-bs-interval="2000">
              <img src="<?= $r->resim?>" class="d-block w-100" alt="..." />
              <div class="carousel-caption d-none d-sm-block">
                <div class="sag-taraf">
                  <h5 class="renk-id"><?= $r->aciklama?></h5>
                </div>
              </div>
            </div>
            <?php
            $first = false; }
           } ?>
          </div>

          <button
            class="carousel-control-prev"
            type="button"
            data-bs-target="#carouselExampleInterval"
            data-bs-slide="prev"
          >
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button
            class="carousel-control-next"
            type="button"
            data-bs-target="#carouselExampleInterval"
            data-bs-slide="next"
          >
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div>
    </div>

    <?php
        foreach($bilgiler as $m){ ?>
        <div class="card alt">
          <div class="card-body">
            <h4><strong><?= $m->altBaslik?></strong></h4>
            <p><?= $m->metin?></p>         
          </div>
        </div>       
    
    <?php }
    $db=null;
    ?>
    <div class="footer">
        &copy; 2023 Sanal Trabzon. Tüm Hakları Saklıdır.
    </div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
