<?php 
echo $menuContent;
?>
<div role="navigation" class="navbar navbar-inverse navbar-embossed menu" role="navigation">
    <!--mobile part-->
    <div class="navbar-header">
        <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
    <!--desktop and tablet part-->
    <div class="navbar-collapse collapse" style="height: 1px;">
        <ul class="nav navbar-nav navbar-left">
            <li class="menu-item">
                <a href="/">Home</a>
            </li>
            <li class="menu-item">
                <a href="#">Irigatii</a>
            </li>
            <li class="menu-item dropdown">
                <a href="#" onclick="logicModule.loadPage('incalzire_climatizare_racire.php');" data-toggle="dropdown" class="dropdown-toggle" id="master">Produse <b class="caret"></b></a>
                <ul class="dropdown-menu" id="menu1">
                    <li class="menu-item">
                        <a href="#">Incalzire, climatizare, racire<i class="icon-arrow-right"></i></a>
                    </li>
                    <li class="menu-item">
                        <a href="#">Alimentare cu apa</a>
                    </li>
                    <li class="menu-item">
                        <a href="#">Apa uzata</a>
                    </li>
                    <li class="menu-item">
                        <a href="#">Grupuri de incendii</a>
                    </li>
                </ul>
            </li>
            <li class="menu-item dropdown">
                <a href="#">Contact</a>
            </li>
        </ul>
    </div>
</div>
