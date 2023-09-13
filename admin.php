<?php
$serwer = "localhost";
$user = "root";
$pass = "";
$baza = "wolek_portfolio";
$c = mysqli_connect($serwer, $user, $pass, $baza);

@$opis = $_POST["opis"];
@$zdj = $_POST["zdj"];
@$zdj_p = $_POST["zdj_p"];
@$opis_p = $_POST["opis_p"];

if(isset($_POST['moj_opis']))
{
  $update = mysqli_query($c, "UPDATE `o_mnie` SET `opis` = '$opis';");
}

if(isset($_POST['moje_zdj']))
{
  $update = mysqli_query($c, "UPDATE `o_mnie` SET `zdj` = '$zdj';");
}

if(isset($_POST['proj_zdj']))
{
  $update = mysqli_query($c, "UPDATE `projekty` SET `zdj_p` = '$zdj_p';");
}

if(isset($_POST['proj_opis']))
{
  $update = mysqli_query($c, "UPDATE `projekty` SET `opis_p` = '$opis_p';");
}

if(isset($_POST['wyloguj']))
{
  header('Location:index.php');
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="admin.css">
</head>
<body>
    <h1 class="title">Panel administracyjny</h1>
    <div class="first">
    <p>O mnie</p>
        <div class='about_me'>  
            <div class='description'>
                <form method="POST">
                    <input type="text" name="opis" placeholder="Podaj opis...">
                    <input id="sub" name="moj_opis" type="submit" value="Zmień">
                </form>
            </div> 
            <div class="photo_admin">
                <form method="POST">
                    <input type="text" name="zdj" placeholder="Link do zdjęcia...">
                    <input id="sub" name="moje_zdj" type="submit" value="Zmień">
                </form>
            </div>
        </div>
    </div>

    <div class="second">
        <p>Moje projekty</p>
        <div class='my_projects'>
            <div class="project_photo">
                <form method="POST">
                    <input type="text" name="opis_p" placeholder="Link do zdjęcia...">
                    <input id="sub" name="proj_zdj" type="submit" value="Zmień">
                </form>
            </div>
            <div class='description_project'>
                <form method="POST">
                    <input type="text" name="zdj_p" placeholder="Podaj opis...">
                    <input id="sub" name="proj_opis" type="submit" value="Zmień">
                </form>
            </div>
        </div>  
    </div>

    <div class="third">
        <p>Moje umiejętności</p>
        <div class='my_projects'>
            <div class="project_photo">
                <form method="POST">
                    <input type="text" name="opis_p" placeholder="Link do zdjęcia...">
                    <input id="sub" name="proj_zdj" type="submit" value="Zmień">
                </form>
            </div>
        </div>  
    </div>

    <div class="main_site">
        <form method="POST">
        <input id="sub" type="submit" name="wyloguj" value="Wyloguj">
        </form>
    </div>
</body>
</html>