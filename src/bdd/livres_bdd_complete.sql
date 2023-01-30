CREATE TABLE IF NOT EXISTS utilisateurs (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    identifiant VARCHAR(255) NOT NULL UNIQUE,
    mot_de_passe VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
)
ENGINE=INNODB;

INSERT INTO utilisateurs (identifiant, mot_de_passe, email)
    VALUES  ("misterbear", "azerty", "admin@misterbear.fr"),
            ("Xquinoox", "Voiture", "maxence.sixpro@gmail.com"),
            ("Whysoxx", "ErdalLeNain","flaviodondaine59280@gmail.com"),
            ("Wax0001", "Wax62@", "waxnotpd47@gmail.com"),
            ("pigeon_voyageur", "pigeon", "ced390ric@gmail.com"),
            ("El Grande Sauzzito", "flavlatimp", "sauzelbossito@gmail.com"),
            ("Spectra", "azerty", "Spectra@outlook.fr"),
            ("gigachad","important","gigachad59@gmail.com"),
            ("jojofrtn","sqljonathan", "jonathan.dekenspro@gmail.com");
             
CREATE TABLE IF NOT EXISTS genres (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL
)
ENGINE=INNODB;

INSERT INTO genres (nom)
    VALUES  ("à classer"), 
            ("BD"),
            ("Document"),
            ("SF"),
            ("Educatif"),
            ("Fantastique"),
            ("Roman"),
            ("Manga"),
            ("Thriller"),
            ("Poésie");

CREATE TABLE IF NOT EXISTS livres (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(255) NOT NULL,
    auteur VARCHAR(255) NOT NULL,
    plot TEXT,
    editeur VARCHAR(255) NOT NULL,
    pages INT,
    date_de_sortie DATETIME,
    langue VARCHAR(255) NOT NULL DEFAULT "Français",
    genre_id INT UNSIGNED NOT NULL DEFAULT 1,
    user_id INT UNSIGNED,
    CONSTRAINT fk_genre
        FOREIGN KEY (genre_id)
        REFERENCES genres(id),
    CONSTRAINT fk_emprunteur
        FOREIGN KEY (user_id)
        REFERENCES utilisateurs(id)
)
ENGINE=INNODB;

INSERT INTO livres (titre, auteur, editeur, pages, date_de_sortie, genre_id)
    VALUES  ("Le Dalhia noir", "James Ellroy", "Rivage Noir", 525, "1985-05-01", 9),
            ("Le monde selon Garp", "John Irving", "Folio", 620, "1989-01-01", 7),
            ("Elric de Melnibonée", "Michael Moorcock", "inconnu", 150 , "2022-11-01", 2),
            ("Le dessous des cartes", "inconnu", "ARTE", 175, "2019-01-01", 3),
            ("Le Fléau", "Stephen King", "J'ai Lu", 981, "1983-01-01", 6),
            ("Axiomatique", "Greg Egan", "Pocket", 210, "2013-05-01", 4),
            ("Pourquoi pas?","David Nicholls","10/18",453,"2014-07-01",7),
            ("lanfeust des etoile","arleston tarquin","un deux troy",47,"2001-12-01",2),
            ("moi je ","Aude Picault","Warum",64,"2006-04-01",2),
            ("fendre l'armure","Anna Gavalda","j'ai lu",272,"2018-04-02",7),
            ("les caractères","pierre malandian","profil bac",127,"2005-09-01",5),
            ("des terrasses","inconnu","10/18",457,"2005-07-01",3),
            ("La Fille du train", "Paula Hawkins", "Sonatine", 453, "2015-01-06", 9),
            ("L'échappée Belle", "Anna Gavalda", "France Loisirs", 126, "2009-11-04", 7),
            ("Mary Godwin", "Yoo Jin SU", "Gochawon", 110, "2007-01-01", 8),
            ("Tentative d'épuisement d'un lieu parisien", "Georges Perec", "Christian Bourgois", 59, "1982-01-01", 7),
            ("LA 5E VAGUE - T1", "RICK YANCEY", "PKJ", 478, "2018-05-01", 6),
            ("MARY HIGGINS CLARK", "rose", "claire rose", 369, "1968-08-01", 7),
            ("new york délire", "rem koolhaas", "parenthéses", 318, "2000-05-01", 7),
            ("bullwhite", "stassen la piere", "allain michel", 52, "1989-04-01", 7),
            ("lrs écureuils de central park sont tristes le lundi", "katherine pancol", "jpk", 943, "2014-04-10", 2),
            ("inconnu a cette adresse", "Taylor kressmann", "Le livre de poche", 90, "1938-01-01", 7),
            ("de l'amour en Autistan", "josef schovanec", "pocket", 205, "2017-12-01",7),
            ("Que serais-je sans toi ?", "Guillaume Musso", "Pocket", 363 ,"2000-05-09", 7),
            ("Le diable vit à Notting Hill", "Rachel Johnson", "Le livre de poche", 380 ,"2001-01-06", 7),
            ("New York Odyssée", "Kristophe Jansma", "Le livre de poche", 603 ,"2001-01-18", 7),
            ("Avtualité Goepolitique", "Hervé Macquart", "Vuibert", 222 ,"2001-03-09", 2),
            ("Euralille", "Hervé Leroy", "Light Motiv", 125 ,"2001-01-15", 2),
            ("La 5ème vague - T2", "Rick Yancey", "PKJ", 627 ,  "2018-05-01", 6),
            ("tentation", "Stephenie Meyer", "Edition France Loisir", 569 , "2006-08-06", 7),
            ("Des souris et des hommes", "John Steinbeck", "folio", 175, "1939-01-01", 7),
            ("Vivre ensemble le Festival de l'écrit", "Omar Guebli", "Edris Abdel Sayed", 185 , "2010-01-01", 10),
            ("Seuls", "Gazzoti Vehlmann", "DUPUIS", 56 , "2012-05-31", 2);

UPDATE livres 
    set plot = " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor,
        dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula
        massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est
        eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae,
        consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. 
        Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque 
        sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere
        cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante 
        non diam sodales hendrerit.";

UPDATE livres
    SET user_id = 1
    WHERE id = 7 or id = 24;

UPDATE livres
    SET user_id = 2
    WHERE id = 14;

UPDATE livres
    SET user_id = 3
    WHERE id = 1 or id = 11 or id = 30;

UPDATE livres
    SET user_id = 5
    WHERE id = 18;

UPDATE livres
    SET user_id = 6
    WHERE id = 3;

UPDATE livres
    SET user_id = 7
    WHERE id = 3 or id= 13;

UPDATE livres
    SET user_id = 8
    WHERE id = 9;

UPDATE livres
    SET user_id = 9
    WHERE id = 5 or id = 31;

CREATE VIEW principal AS (SELECT livres.titre, livres.auteur, genres.nom AS genre, DATE_FORMAT(livres.date_de_sortie, "%Y") AS date, livres.pages AS nombre_pages, utilisateurs.identifiant AS emprunteur 
    FROM livres
    LEFT JOIN genres ON livres.genre_id = genres.id
    LEFT JOIN utilisateurs ON livres.user_id = utilisateurs.id);


CREATE TABLE IF NOT EXISTS commentaires (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    livre_id INT UNSIGNED NOT NULL,
    date_com DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    comment TEXT NOT NULL,
    CONSTRAINT fk_comment_user 
        FOREIGN KEY (user_id)
        REFERENCES utilisateurs(id),
    CONSTRAINT fk_comment_livre
        FOREIGN KEY (livre_id)
        REFERENCES livres(id)
)
ENGINE=INNODB;

INSERT INTO commentaires (user_id, livre_id, comment)
    VALUES  (1, 12, " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor,
                dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula
                massa, varius a, semper congue"),
            (3, 27, " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor,
                dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula
                massa, varius a, semper congue"),
            (3, 30, " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor,
                dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula
                massa, varius a, semper congue"),
            (4, 21, " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor,
                dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula
                massa, varius a, semper congue"),
            (5, 27, " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor,
                dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula
                massa, varius a, semper congue"),
            (1, 14, " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor,
                dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula
                massa, varius a, semper congue"),
            (7, 12, " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor,
                dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula
                massa, varius a, semper congue"),
            (9, 16, " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor,
                dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula
                massa, varius a, semper congue"),
            (5, 9, " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor,
                dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula
                massa, varius a, semper congue"),
            (8, 12, " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor,
                dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula
                massa, varius a, semper congue");

CREATE VIEW comment_vw AS (select commentaires.date_com AS date, livres.titre, utilisateurs.identifiant AS utilisateur, commentaires.comment AS message
    from commentaires
    INNER JOIN livres ON livres.id = commentaires.livre_id
    INNER JOIN utilisateurs ON utilisateurs.id = commentaires.user_id
    ORDER BY livres.titre ASC);