<?php
try 
{
    $con=mysqli_connect("localhost","root","","wilo");
    //Check connection
    if (mysqli_connect_errno())
    {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
}
catch (Exception $e) 
{
    echo 'Caught exception: ',  $e->getMessage(), "\n";
}
?>

<?php
  //azure db connection
  //try 
  //{
  //    $con=mysqli_connect("eu-cdbr-azure-north-b.cloudapp.net","beffdfcc82c36e","a0ee51354c57619","Wilo");
  //     //Check connection
  //    if (mysqli_connect_errno())
  //    {
  //        echo "Failed to connect to MySQL: " . mysqli_connect_error();
  //    }
  //}
  //catch (Exception $e) 
  //{
  //    echo 'Caught exception: ',  $e->getMessage(), "\n";
  //}
  //?>
