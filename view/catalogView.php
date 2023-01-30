<!DOCTYPE html>

<html>

    <?php 
        require("../modules/head.php");
    ?>

    <body>
        <?php
            require("../modules/nav.php");
            require("../modules/header.php");

            if (isset($_GET['nom'])) {
                echo(htmlspecialchars('bonjour '.$_GET['nom']));
            } else {
                echo("Bonjour inconnu");
            }
        ?>
    </body>
</html>