<nav>
        <div class="navPart">
            <?php
                foreach($menu as $line) {
                    ?><a href= <?php echo($line["lien"])?> > <?php echo($line["label"]) ?> </a> <?php
                }
            ?>
        </div>
        <div class="logPart">
            <img src="../src/images/logIn.png" alt="connexion" id="logPic">
        </div>
    </nav>