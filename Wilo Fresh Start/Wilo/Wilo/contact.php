<link href="/maps/documentation/javascript/examples/default.css" rel="stylesheet">
<link rel="stylesheet" href="css/pages/contact.css" type="text/css" media="screen">
<?php
  //Buffer larger content areas like the main page content
  ob_start();
?>
    <p>str. Gelu nr. 10<br>
     Arad, jud. Arad<br>
     310192<br>
     tel./fax +40-257-276544<br>
     e-mail:  binom@clicknet.ro<br>
    service.arad@wilo.ro<br>
    <a href="#harta"></a><br>
   </p>
   
   <p class="tel"><span class="tel">Departament comercial:<br>
     i</span><span class="g">ng. Octavian Batinas - Administrator<br>
     (+40)-744-691100<br>
     ing. Angela Batinas - Director<br>
    (+40)-744-534055</span></p>
    
    <p class="tel"><span class="tel">Departament service:<br>
      </span><span class="n">ing. Octavian Batinas jr<br>
    (+40)-745-210818</span></p>
    
    <p class="tel"><span class="tel">Sisteme de irigat:<br>
      </span><span class="m">ing. Octavian Batinas jr<br>
    (+40)-745-210818</span></p>
       <input type="button"value="submit"/>
    <div id="map-canvas"></div>
 

 <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
 <script type="text/javascript">
       function initialize() {
      var myLatlng = new google.maps.LatLng(46.18405,21.336712);
      var mapOptions = {
        zoom: 15,
        center: myLatlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      }
      var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

      var marker = new google.maps.Marker({
          position: myLatlng,
          map: map,
          title: 'Hello World!'
      });
    }

    google.maps.event.addDomListener(window, 'load', initialize);
  </script>
  
  <?php
  //Assign all Page Specific variables
  $pagemaincontent = ob_get_contents();
  ob_end_clean();
  $pagetitle = "Contact";
  //Apply the template
  include("masterPages/masterHeader.php");
  $pagefootercontent = ob_get_contents();
  ob_end_clean();
  //Apply the template
  include("masterpages/masterFooter.php");
  
?>

<?php
require '/externalLibs/class.phpmailer.php';


$mail = new PHPMailer();

$mail->IsSMTP();                                      // Set mailer to use SMTP
$mail->Host = 'smtp.gmail.com';  // Specify main and backup server
$mail->SMTPAuth = true;                               // Enable SMTP authentication
$mail->Port = 587;
$mail->SMTPAuth = "ssl";
$mail->Username = 'flaviusdemian@gmail.com';                            // SMTP username
$mail->Password = 'slowarad';                           // SMTP password
$mail->SMTPSecure = 'tls';                            // Enable encryption, 'ssl' also accepted

$mail->From = 'flaviusdemian@gmail.com';
$mail->FromName = 'Flavius Demian';
$mail->AddAddress('flavius_praf@yahoo.com', 'Flavius Demian');  // Add a recipient


$mail->WordWrap = 50;                                 // Set word wrap to 50 characters
$mail->IsHTML(true);                                  // Set email format to HTML

$mail->Subject = 'Subject';
$mail->Body    = 'This is the HTML message body <b>in bold!</b>';
$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';


//if(!$mail->Send()) {
//   echo 'Message could not be sent.';
//   echo 'Mailer Error: ' . $mail->ErrorInfo;
//   exit;
//}

//echo 'Message has been sent';