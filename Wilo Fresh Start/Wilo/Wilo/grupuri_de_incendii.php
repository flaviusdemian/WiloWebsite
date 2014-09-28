<?php
//Buffer larger content areas like the main page content
ob_start();
?>

<link rel="stylesheet" href="css/pages/incalzire.css" type="text/css" media="screen">
<div id="accordion">
        <h3>Pompe de inalta eficienta</h3>
        <ul>
            <li>
                <div class="itemContainer">
                    <img class="itemImage" src="/images/Pompe/wilo_stratos_pico.png" alt="picture"/>
                    <div class="itemContent">
                        <a href="#" onclick="alert('ddddd');">
                            <p class="itemTitle"> Wilo-Stratos PICO<p>
                        </a>
                        <p class="itemShortDescription">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard 
                        dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
            </li>
             <li>
                <div class="itemContainer">
                    <img class="itemImage" src="/images/Pompe/wilo_stratos_pico.png" alt="picture"/>
                    <div class="itemContent">
                        <a href="#" onclick="alert('ddddd');">
                            <p class="itemTitle"> Wilo-Yonos PICO<p>
                        </a>
                        <p class="itemShortDescription">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard 
                        dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
            </li>
             <li>
                <div class="itemContainer">
                    <img class="itemImage" src="/images/Pompe/wilo_stratos_pico.png" alt="picture"/>
                    <div class="itemContent">
                        <a href="#" onclick="alert('ddddd');">
                            <p class="itemTitle">Wilo-Yonos MAXO<p>
                        </a>
                        <p class="itemShortDescription">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard 
                        dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
            </li>
            <li>
                <div class="itemContainer">
                    <img class="itemImage" src="/images/Pompe/wilo_stratos_pico.png" alt="picture"/>
                    <div class="itemContent">
                        <a href="#" onclick="alert('ddddd');">
                            <p class="itemTitle">Wilo-Stratos ECO...–BMS<p>
                        </a>
                        <p class="itemShortDescription">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard 
                        dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
            </li>
            <li>
                <div class="itemContainer">
                    <img class="itemImage" src="/images/Pompe/wilo_stratos_pico.png" alt="picture"/>
                    <div class="itemContent">
                        <a href="#" onclick="alert('ddddd');">
                            <p class="itemTitle">>Wilo-Stratos<p>
                        </a>
                        <p class="itemShortDescription">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard 
                        dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
            </li>
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
$pagetitle = "Grupuri de incendii";
//Apply the template
include("masterPages/masterHeader.php");
$pagefootercontent = ob_get_contents();
ob_end_clean();
//Apply the template
include("masterpages/masterFooter.php");
?>