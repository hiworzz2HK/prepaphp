<?php
    $titrePage = "Faites connaissance avecvous-même";
    $titreOnglet= "Mon compte";
    $menu = [
        ["label"=>"Accueil", "lien"=>"../controller/home.php"],
        ["label"=>"Catalogue", "lien"=>"../controller/catalog.php"],
        ["label"=>"Mon compte", "lien"=>"../controller/account.php"]
    ];

    require("../view/accountView.php");
?>

