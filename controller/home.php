<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Silence, on lit!</title>
    <link rel="stylesheet" href="../CSS/style.css?filemtime(<?php echo time(); ?>' )"/>
 </head>

<body>

    <div id="popup">
        <div id="connectBox">
            <h3>Identifiez-vous</h3>
        </div>
    </div>

    <nav>
        <div class="navPart">
            <a href="./home.php">Accueil</a>
            <a href="./catalog.php">Catalogue</a>
        </div>
        <div class="logPart">
            <img src="../src/images/logIn.png" alt="connexion" id="logPic">
        </div>
    </nav>

    <header>
        <div class="logo">
            <img id="logoPic" src="../src/images/logo.png" alt="logo">
        </div>
        <div class="title">
            <h1>Silence, on lit!</h1>
            <h3>Bienvenue à l'E2C</h3>
        </div>
        <div class="user">
            <p>à coder</p>
        </div>
    </header>

    <div class="main">
        <div class="leftPart">
            <article class="textContent" id="intro">
                <h3>Présentation du projet</h3>
                <p>L'E2C Grand Lille est heureuse de participer au projet "Silence, on lit!", une initiative visant à promouvoir la lecture auprès des jeunes adultes de 18 à 25 ans. Nous croyons fermement que la lecture est un outil puissant pour l'insertion professionnelle et la réussite scolaire.</p>
                <p>Notre centre de formation accompagne des jeunes adultes sans diplôme dans leur parcours d'insertion professionnelle, et nous savons que la lecture est un atout majeur pour développer leur compréhension de la langue, améliorer leur expression écrite et orale, et les aider à devenir des professionnels compétents et autonomes.</p>
                <p>Avec "Silence, on lit!", nous offrons à nos élèves des activités ludiques et pédagogiques autour de la lecture, comme des lectures à voix haute, des ateliers d'écriture, des défis de lecture, des concours de lecture et des rencontres avec des auteurs. Nous espérons que ces activités susciteront la curiosité de nos élèves pour les livres et les inciteront à lire davantage, tout en renforçant leur confiance en leurs capacités.</p>
                <p>Nous sommes convaincus que "Silence, on lit!" est un projet essentiel pour l'insertion professionnelle de nos élèves et nous sommes fiers de pouvoir le mettre en place dans notre établissement.</p>
            </article>
        </div>

        <div class="rightPart">
            <img src="../src/images/lecture.jpg" alt="temps de lecture" id="photoIntro">
            <div>
                <p>Un moment de calme pour se recentrer sur soi</p>
            </div>
        </div>
    </div>
    <script src="../JS/logBox.js"></script>
</body>

</html>