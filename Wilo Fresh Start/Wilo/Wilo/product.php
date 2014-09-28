<?php
//Buffer larger content areas like the main page content
ob_start();

include('/config.php');

// TODO: this is a model, include in separate file
class TextModel{
    private $threadHeading ;
    private $threadTexts = array() ;

    function __construct ($heading)
    {
        $this->threadHeading = $heading;
    }

    public function SetHeading($heading)
    {
        $this->threadHeading = $heading;
    }

    public function AddText($text)
    {
        array_push($this->threadTexts, $text);
    }

    public function GetHeading()
    {
        return $this->threadHeading;
    }

    public function GetTexts()
    {
        return $this->threadTexts;
    }
}

class ItemPrice
{
    private $name;
    private $price;

    function __construct ($name, $price)
    {
        $this->name = $name;
        $this->price = $price;
    }

    public function GetName()
    {
        return $this->name;
    }

    public function GetPrice()
    {
        return $this->price;
    }
}

//queryString Value
$id = $_GET["id"];
if(isset($id) == false)
{
    $id = "1";
}

$stmt = $con->prepare('SELECT * FROM products where products.Id = ?');
$stmt->bind_param('s', $id);

$stmt->execute();

$result = $stmt->get_result();
$row = $result->fetch_assoc();

$model = "";
$model->Id = $row['Id'];
$model->Title =  $row['Title'];
$model->Icon =  $row['Icon'];
$model->Graphic = $row['Graphic'];
$model->Table = $row['Table'];

$stmt = $con->prepare('SELECT pp.Name, ppt.Text
FROM product_property_texts AS ppt
INNER JOIN product_properties pp ON ppt.productPropertyId = pp.Id
WHERE ppt.ProductId = ? ORDER BY pp.Id');
$stmt->bind_param('s', $id);

$stmt->execute();
$result = $stmt->get_result();
$textModels = array();
$threadHeadings = array();

while( $row = $result->fetch_assoc())
{
    $heading = $row['Name'];
    if(in_array($heading,$threadHeadings) == false)
    {
        array_push($threadHeadings, $heading);
        if( isset($textModel) == true)
        {
            array_push($textModels, $textModel);
        }

        $textModel = new TextModel($heading);

    }
    $text = $row['Text'];

    if( isset($text))
    {
        $textModel->AddText($text);
    }
}
array_push($textModels, $textModel);

//$stmt = $con->prepare('SELECT Price, Name
//FROM  product_subproducts
//WHERE ProductId = ? ORDER BY Id');
//$stmt->bind_param('s', $id);
//$stmt->execute();
//$result = $stmt->get_result();

//$prices = array();

//$itemPrices = array();
//while( $row = $result->fetch_assoc())
//{
//    $price = $row["Price"];
//    $name = $row["Name"];
//    if( isset($price) == true && isset($name) == true)
//    {
//        $item = new ItemPrice($name, $price);
//        array_push($itemPrices, $item);
//    }
//}
?>

<div class="itemWrapper">
    <h2>
        <?php  echo $model->Title ?>
    </h2>
    <img class="itemImage" src="<?php  echo $model->Icon ?>" />
    <img class="itemImageChart" src="<?php  echo $model->Graphic ?>" />
    <div class="itemTextContainer clearfix">

        <?php
        foreach ($textModels as $item)
        {
            echo "<div class='itemTextEntry'>
                <h3 class='itemTextEntryTitle'>" ;
            echo $item->getHeading();
            echo "</h3>";
            $threadItems = $item->getTexts();
            $count = count($threadItems);
            if( $count > 0)
            {
                if($count <2)
                {
                    foreach($threadItems as $subItem)
                    {
                        echo "<p class='itemTextEntryContent'>";
                        echo $subItem;
                        echo "</p>";
                    }
                }
                else
                {
                    echo" <ul class='itemTextEntryContentList'>" ;
                    foreach($threadItems as $subItem)
                    {
                        echo "<li>";
                        echo $subItem;
                        echo "</li>";
                    }
                    echo " </ul>";
                }
            }
            echo "</div>";
        }?>
    </div>
   <!-- <div class="clearfix itemImageContainer">
        <img class="itemImageTable" src="<?php  echo $model->Table ?>" />
        <ul class="itemPriceList">
            <li id="firstItem"></li>
            <?php
            foreach ($itemPrices as $item)
            {
                echo " <li class='itemPriceImage'> ";
                echo "<a class='itemPrice' href='javascript:;' onclick='simpleCart.add({name:\"";
                echo $item->GetName();
                echo "\", price:\"";
                echo $item->GetPrice() ;
                echo "\"});'>&nbsp;";
                echo "</a>";
                echo "</li>";
            }
            ?>
        </ul>
    </div>-->
</div>

<?php

//Assign all Page Specific variables
$pagemaincontent = ob_get_contents();
ob_end_clean();
$pagetitle = "Wilo Stratos Pico";
//Apply the template
include("masterPages/masterHeader.php");

$pagefootercontent = ob_get_contents();
ob_end_clean();
//Apply the template
include("masterpages/masterFooter.php");
?>
