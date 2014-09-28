<?php
//Buffer larger content areas like the main page content
ob_start();
?>
<script type="text/javascript">

    var items = [];

   $(document).ready(function () {
            retrieveProducts();
    });


    function retrieveProducts() {
        var content = "";
        var items = JSON.parse(window.localStorage["simpleCart_items"]);
        $.each(items, function (i, val) {
            content = content + "Produs: " + this.name +", Cantitate: " + this.quantity + ", Pret: " + this.price + "\n";
        });

        if (content != "") {
            $("#command").css("readOnly", "true");
            $("#command").html(content);
        }
    }

     jQuery.validator.addMethod("phoneUS", function (phone_number, element) {
              phone_number = phone_number.replace(/\s+/g, "");
              return this.optional(element) || phone_number.length > 9 &&
              phone_number.match(/^\+[0-9]{11}$/);
          }, "Introduceti un numar de telefon valid.");


     $(document).ready(function() {
           $("#commandForm").validate({

            // Specify the validation error messages
            messages: {
                firstname: "Introduceti un prenume valid.",
                lastname: "Introduceti un nume valid.",
                email: "Introduceti un email valid.",
                command: "Introduceti o comanda valida.",
                phone : "Introduceti un numar de telefon valid."
            },

            submitHandler: function(form) {
                form.submit();
            }
          });
      });
</script>

<link rel="stylesheet" href="css/pages/command.css" type="text/css" media="screen" />


<?php
include("emailConfig.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $errorMessage = "";
    $firstName = $_POST['firstname'];
    $lastName = $_POST['lastname'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $command = $_POST['command'];

    if(isset($firstName) == false) 
    {
        $errorMessage .= "<p>Ati uitat sa introduceti prenumele!</p>";
    }
    if(isset($lastName) == false)
    {
        $errorMessage .= "<p>Ati uitat sa introduceti numele!</p>";
    }
    if(isset($email) == false)
    {
        $errorMessage .= "<p>Ati uitat sa introduceti email-ul!</p>";
    }
    if ( !(isset($phone) && preg_match("/^\+[0-9]{11}$/", $phone) == true))
    {
        $errorMessage .= "<p>Ati uitat sa introduceti numarul de telefon valid!</p>";
    }
    if(isset($command) == false)
    {
        $errorMessage .= "<p>Ati uitat sa introduceti comanda!</p>";
    }

    if(!empty($errorMessage))
    {
        echo("<p>There was an error with your form:</p>\n");
        echo("<ul>" . $errorMessage . "</ul>\n");
    }
    else
    {
        //$email
        sendEmail($mail, "flavius_praf@yahoo.com", "Comanda Wilo", "Va multumim pentru comanda.", "Wilo Romania");
        sendEmail($mail, "flavius_praf@yahoo.com", "Comanda Wilo", $command, "Wilo Romania");        
    }
}

?>


<form id="commandForm" method="POST" action="Comanda.php" novalidate="novalidate">
    <div class="formEntry">
        <label for="firstname">Prenume</label>
        <span>&nbsp;*</span>
        <input type="text" class="required" minlength="3" maxlength="30" id="firstname" name="firstname" />
    </div>
    <div class="formEntry">
        <label for="lastname">Nume</label>
        <span>&nbsp;*</span>
        <input type="text" class="required" minlength="3" maxlength="30" id="lastname" name="lastname" />
    </div>
    <div class="formEntry">
        <label for="email">Email</label>
        <span>&nbsp;*</span>
        <input type="text" class="required email" placeholder="mail@domain.com" minlength="3" maxlength="30" id="email" name="email" />
    </div>
    <div class="formEntry">
        <label for="phone">Telefon</label>
        <span>&nbsp;*</span>
        <input type="text" class="required phoneUS" placeholder="e.g. +40XXXXXXXXXX" minlength="3" maxlength="30" id="phone" name="phone" />
    </div>
    <div class="formEntry">
        <label for="command">Comanda</label>
        <span>&nbsp;*</span>
        <textarea class="required" id="command" name="command"></textarea>
    </div>
    <input type="submit" id='submitButton' value="Comanda" />
    <p id="info">Toate campurile sunt obligatorii.</p>
</form>

<?php

//Assign all Page Specific variables
$pagemaincontent = ob_get_contents();
ob_end_clean();
$pagetitle = "Comanda";
//Apply the template
include("masterPages/masterHeader.php");
$pagefootercontent = ob_get_contents();
ob_end_clean();
//Apply the template
include("masterpages/masterFooter.php");