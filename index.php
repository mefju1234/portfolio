<?php
$serwer = "localhost";
$user = "root";
$pass = "";
$baza = "wolek_portfolio";
$c = mysqli_connect($serwer, $user, $pass, $baza);


@$id = $_GET["id"];
@$opis = $_POST["opis"];
@$zdj = $_POST["zdj"];
@$odbiorca = "mwolek350@gmail.com";
@$message = $_POST["message"];
@$temat = "Wiadomość od użytkownika";
@$password = $_POST["password"];
//mail($odbiorca, 'Kontakt', " $message");
$error = "<p class='error'>Błędne hasło</p>";    

if (isset($_POST['haslo'])) {
    $podane_haslo = $_POST['haslo'];
    if ($podane_haslo === '2137') {
        header('Location: admin.php');
    } else {
        $error;   
        header('Location: index.php#');   
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portfolio</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1 class="title">portfolio</h1>
    <div class="first">
    <p>O mnie</p>
        <?php
            echo "<div class='about_me'>";
            $q = mysqli_query($c, "SELECT * FROM `o_mnie`;");
            while($h = mysqli_fetch_array($q)){
            echo "<div class='description'>" . $h["opis"] . "</div>";      
            echo "<div class=\"photo\">";
            echo "<img src=\"" . $h["zdj"] . "\";>";
            echo "</div>";
            echo "</div>";  
            }
        ?>
    </div>

    <div class="second">
        <p>Moje projekty</p>
        <?php
            echo "<div class='my_projects'>";
            $i = mysqli_query($c, "SELECT * FROM `projekty`;");
            while($d = mysqli_fetch_array($i)){
            echo "<div class=\"project_photo\">";
            echo "<img src=\"" . $d["zdj_p"] . "\";>";
            echo "</div>";
            echo "<div class='description_project'>" . $d["opis_p"] . "</div>";      
            echo "</div>"; 
            }
        ?>
    </div>

    <div class="third">
        <p>Kontakt</p>
        <form method="post">
        <input type="email" name="email" placeholder="Adres e-mail" required>
        <textarea name="message" placeholder="Wiadomość..." rows="4" required></textarea>
        <input type="submit" value="Wyślij" id="sub">
        </form>
    </div>

    <div class="fourth">
        <p>Moje umiejętności</p>
        <label for="file">HTML:</label>
        <progress id="file" max="100" value="80">80%</progress>
    </div>
    

    <div class="admin">
        <form method="POST">
            <label for="">Panel administratora</label>
            <input name="haslo" type="password" placeholder="Podaj hasło...">
            <?php
            echo $error;
            ?>  
            <input id="sub" type="submit" value="Zaloguj">
        </form>
    </div>
</body>
</html>