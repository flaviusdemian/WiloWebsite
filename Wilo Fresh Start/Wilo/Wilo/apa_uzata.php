<?php
//Buffer larger content areas like the main page content
ob_start();
?>

<div id="accordion">
        <h3>Section 1</h3>
        <div>
            <p>Mauris mauris ante, blandit et, ultrices a, susceros. Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.</p>
        </div>
        <h3>Section 2</h3>
        <div>
            <p>Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In suscipit faucibus urna. </p>
        </div>
        <h3>Section 3</h3>
        <div>
            <p>Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui. </p>
            <ul>
                <li>List item</li>
                <li>List item</li>
                <li>List item</li>
                <li>List item</li>
                <li>List item</li>
                <li>List item</li>
                <li>List item</li>
            </ul>
        </div>
    </div>
<?php
//Assign all Page Specific variables
$pagemaincontent = ob_get_contents();
ob_end_clean();
$pagetitle = "Apa uzata";
//Apply the template
include("masterPages/masterHeader.php");
$pagefootercontent = ob_get_contents();
ob_end_clean();
//Apply the template
include("masterpages/masterFooter.php");
?>