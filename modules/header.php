<header>
        <div class="logo">
            <img id="logoPic" src="../src/images/logo.png" alt="logo">
        </div>
        <div class="title">
            <h1>Silence, on lit!</h1>
            <h3><?php echo($titrePage) ?></h3>
        </div>
        <div class="user">
           <form method="get" action="../controller/catalog.php">
            <label for="pseudo">Votre nom :</label><input type="text" id="pseudo" name="nom"/>
            <input type="submit" value="Envoyer"/>
           </form>
        </div>
</header>