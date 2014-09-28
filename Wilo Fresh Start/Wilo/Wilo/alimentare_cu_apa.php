<?php
//Buffer larger content areas like the main page content
ob_start();
?>

<div id="accordion">
        <h3>Pompe de inalta eficienta</h3>
        <ul>
            <li>
                <div class="itemContainer">
                    <img src="/images/Pompe/wilo_stratos_pico.png" alt="picture"/>
                    <p class="itemTitle"> Wilo-Stratos PICO<p>
                    <p class="itemShortDescription"> Scurta descriere aici......adasdasdasdasdasda....</p>
                <div>
            </li>
            <li>Wilo-Yonos PICO</li>
            <li>Wilo-Yonos MAXO</li>
            <li>Wilo-Stratos ECO...–BMS</li>
            <li>Wilo-Stratos</li>
        </ul>
        <h3>Pompe economice</h3>
        <ul>
            <li>Wilo-VeroLine-IP-E</li>
            <li>Wilo-VeroTwin-DP-E</li>
            <li>Wilo-CronoLine-IL-E</li>
            <li>ilo-CronoTwin-DL-E</li>
        </ul>
        <h3>Pompe speciale</h3>
        <ul>
            <li>Wilo-VeroLine-IPS</li>
            <li>Wilo-VeroLine-IPH-W/-O</li>
            <li>Wilo-VeroLine-IP-Z</li>
        </ul>
    </div>
<?php
//Assign all Page Specific variables
$pagemaincontent = ob_get_contents();
ob_end_clean();
$pagetitle = "Alimentare cu apa";
//Apply the template
include("masterPages/masterHeader.php");
$pagefootercontent = ob_get_contents();
ob_end_clean();
//Apply the template
include("masterpages/masterFooter.php");
?>