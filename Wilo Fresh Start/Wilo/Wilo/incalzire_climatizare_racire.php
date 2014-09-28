<?php
//Buffer larger content areas like the main page content
ob_start();

include('/config.php');

// TODO: this is a model, include in separate file
class Product
{
    private $id ;
    private $title ;

    function __construct ($pId, $pTitle)
    {
        $this->id = $pId;
        $this->title = $pTitle;
    }

    function GetId()
    {
        return $this->id;
    }

    function GetTitle()
    {
        return $this->title;
    }

    function GetProduct()
    {
        return $this;
    }
}

class Subcategory{
    private $id ;
    private $name ;
    private $products = array() ;

    function __construct ($id, $name)
    {
        $this->id = $id;
        $this->name = $name;
    }

    function AddProduct($product)
    {
        array_push($this->products, $product);
    }

    function GetId()
    {
        return $this->id;
    }

    function GetTitle()
    {
        return $this->name;
    }

    function GetProducts()
    {
        return $this->products;
    }
}

$categoryId = "1";

$stmt = $con->prepare('SELECT sc.Id as SubcategoryId, sc.Name, p.Title, p.Id
                       FROM subcategories sc
                       INNER JOIN products AS p ON sc.Id = p.SubcategoryId
                       INNER JOIN categories c ON c.Id = sc.CategoryId
                       WHERE c.Id = ?');
$stmt->bind_param('s', $categoryId);

$stmt->execute();

$result = $stmt->get_result();
$subcategories = array ();
$subcategoryNames = array();

while( $row = $result->fetch_assoc())
{
    $subcategoryName = $row["Name"];
    if( isset($subcategoryName) == true)
    {
        if(in_array($subcategoryName,$subcategoryNames) == false)
        {
            array_push($subcategoryNames, $subcategoryName);
            if(isset($subCategory))
            {
                array_push($subcategories,$subCategory);
            }
            $subCategory = new Subcategory($row["SubcategoryId"], $subcategoryName);
        }
        $productId = $row["Id"];
        $productTitle = $row["Title"];

        if(isset($productId) && isset($productTitle))
        {
            $product = new Product($productId, $productTitle);
            $subCategory->AddProduct($product);
        }
    }
}
array_push($subcategories,$subCategory);
?>

<link rel="stylesheet" href="css/pages/incalzire.css" type="text/css" media="screen" />
<div id="accordion">
    <?php
    foreach( $subcategories as $category)
    {
        echo "<h3>";
        echo  $category->GetTitle();
        echo "</h3>";
        echo "<ul>";
        foreach($category->GetProducts() as $item)
        {
            echo "<li>";
            echo"<div class='itemContainer'>";
            echo "<img class='itemImage' src='images/Pompe/wilo_stratos_pico.png' alt='picture' />";
            echo "<div class='itemContent'>";
            echo "<a href='product.php?id=". $item->GetId() . "'/>";
            echo "<p class='itemTitle'>";
            echo $item->GetTitle();
            echo "</p>";
            echo "</a>";
            echo "<p class='itemShortDescription'>";
            echo "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ";
            echo "</p>";
            echo "</div>";
            echo "</div>";
            echo "</li>";
        }
        echo "</ul>";
    }
    ?>
    <!-- <h3>Pompe de inalta eficienta</h3>
    <ul>
        <li>
            <div class="itemContainer">
                <img class="itemImage" src="images/Pompe/wilo_stratos_pico.png" alt="picture" />
                <div class="itemContent">
                    <a href="product.php?name=wilo_stratos_pico">
                        <p class="itemTitle">
                            Wilo-Stratos PICO
                            <p></p>
                        </p>
                    </a>
                    <p class="itemShortDescription">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard
                        dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                    </p>
                </div>
            </div>
        </li>
        <li>
            <div class="itemContainer">
                <img class="itemImage" src="images/Pompe/wilo_stratos_pico.png" alt="picture" />
                <div class="itemContent">
                    <a href="#" onclick="alert('ddddd');">
                        <p class="itemTitle">
                            Wilo-Yonos PICO
                            <p></p>
                        </p>
                    </a>
                    <p class="itemShortDescription">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard
                        dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                    </p>
                </div>
            </div>
        </li>
        <li>
            <div class="itemContainer">
                <img class="itemImage" src="images/Pompe/wilo_stratos_pico.png" alt="picture" />
                <div class="itemContent">
                    <a href="#" onclick="alert('ddddd');">
                        <p class="itemTitle">
                            Wilo-Yonos MAXO
                            <p></p>
                        </p>
                    </a>
                    <p class="itemShortDescription">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard
                        dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                    </p>
                </div>
            </div>
        </li>
        <li>
            <div class="itemContainer">
                <img class="itemImage" src="images/Pompe/wilo_stratos_pico.png" alt="picture" />
                <div class="itemContent">
                    <a href="#" onclick="alert('ddddd');">
                        <p class="itemTitle">
                            Wilo-Stratos ECO...–BMS
                            <p></p>
                        </p>
                    </a>
                    <p class="itemShortDescription">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard
                        dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                    </p>
                </div>
            </div>
        </li>
        <li>
            <div class="itemContainer">
                <img class="itemImage" src="images/Pompe/wilo_stratos_pico.png" alt="picture" />
                <div class="itemContent">
                    <a href="#" onclick="alert('ddddd');">
                        <p class="itemTitle">
                            >Wilo-Stratos
                            <p></p>
                        </p>
                    </a>
                    <p class="itemShortDescription">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard
                        dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                    </p>
                </div>
            </div>
        </li>
    </ul> -->
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
$pagetitle = "Incalzire, climatizare, racire";
//Apply the template
include("/masterPages/masterHeader.php");

$pagefootercontent = ob_get_contents();
ob_end_clean();
//Apply the template
include("/masterpages/masterFooter.php");

?>