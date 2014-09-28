<!DOCTYPE html>
<html>
<head>
    <title><?php echo $pagetitle?></title>
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link href="css/jquery-ui-1.10.3.custom.css" rel="stylesheet" />

    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery-validate.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.10.3.custom.min.js"></script>
    <script type="text/javascript" src="js/simpleCart.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>

    <!--[if lt IE 8]>
         <style type="text/css">
            .clearfix
            {
                zoom: 1;
            }
            </style>
    <![endif]-->
</head>
<body>
    <div id="sitewrapper" class="clearfix">
        <section class="user">
        <a id="homeLink" href="/" title="acasa">
                <div id="logoContainer">
                    <div id="flashLogo">
                        <object id="FlashID" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="63" height="34" style="visibility: visible;">
                            <param name="movie" value="C">
                            <param name="quality" value="high">
                            <param name="wmode" value="opaque">
                            <param name="swfversion" value="6.0.65.0">
                            <!-- This param tag prompts users with Flash Player 6.0 r65 and higher to download the latest version of Flash Player. Delete it if you don�t want users to see the prompt. -->
                            <param name="expressinstall" value="Scripts/expressInstall.swf">
                            <!-- Next object tag is for non-IE browsers. So hide it from IE using IECC. -->
                            <!--[if !IE]>-->
                            <object type="application/x-shockwave-flash" data="http://binom.ro/poze/binom_rotativ_final.swf" width="63" height="34">
                                <!--<![endif]-->
                                <param name="quality" value="high">
                                <param name="wmode" value="opaque">
                                <param name="swfversion" value="6.0.65.0">
                                <param name="expressinstall" value="Scripts/expressInstall.swf">
                                <!-- The browser displays the following alternative content for users with Flash Player 6.0 and older. -->
                                <div>
                                    <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>
                                    <p>
                                        <a href="http://www.adobe.com/go/getflashplayer">
                                            <img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" width="112" height="33"/></a>
                                    </p>
                                </div>
                                <!--[if !IE]>-->
                            </object>
                            <!--<![endif]-->
                        </object>
                    </div>
                    <div id="binonm">
                        <img src="images/logo.png" />
                    </div>
                    <div id="logo2">
                        <img src="images/logo2.png" />
                    </div>
                    <div id="logo3">
                        <img src="images/logo3.png" />
                    </div>
                </div>
            </a>
            <div class="buttons">
                <span class="button" style="padding: 8.5px 15px;">
                    <a href="#">Irigatii</a>
                </span>
                <span class="button dropdown">
                    <a href="#">Produse</a>
                    <ul class="notice">
                        <li>
                            <a href="#" onclick="logicModule.loadPage('incalzire_climatizare_racire.php');">Incalzire, climatizare, racire </a>
                        </li>
                        <li>
                            <a href="#" onclick="logicModule.loadPage(2);">Alimentare cu apa</a>
                        </li>
                        <li>
                            <a href="#" onclick="logicModule.loadPage(3);">Apa uzata</a>
                        </li>
                        <li>
                            <a href="#" onclick="logicModule.loadPage(4);">Grupuri de incendii</a>
                        </li>
                    </ul>
                </span>
                <span class="button" style="padding: 8.5px 15px;">
                    <a href="#" onclick="logicModule.loadPage('Contact.php');">Contact</a>
                </span>
                <span class="button" style="padding: 8.5px 15px;">
                    <a href="#" onclick="logicModule.loadPage('Comanda.php');">Comanda Shortcut</a>
                </span>
            </div>
        </section>
        <div id="content">
            <?php
            echo $pagemaincontent; 
            ?>
        </div>
        <div id="footer">
            <?php
            echo $pagefootercontent;
            ?>    

