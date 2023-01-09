<?php
$conn  = mysqli_connect("localhost","root","","tkb_store");

//hapus data

if(isset($_POST['hapusdata'])){
    $idb = $_POST['idb'];

    $hapus = mysqli_query($conn, "DELETE FROM payment_queue WHERE idb ='$idb'");
    if($hapus){
        header('location:index.php');
    } else{
        echo 'gagal';
        header('location:index.php');
    }
}

?>