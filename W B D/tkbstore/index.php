<?php
require 'connect.php';

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>TKB`STORE</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.php">TKB`STORE</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="index.php">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>                
                        </div>
                    </div>
                  
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Order History</h1>
                                  
                        <div class="card mb-4">
                        
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Tanggal</th>
                                            <th>Data</th>
                                            <th>Game</th>
                                            <th>Diamond</th>
                                            <th>Bukti</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                        <?php
                                        $ambilsemuadata = mysqli_query($conn, "SELECT * FROM payment_queue");
                                        $i = 1;
                                        while($payment_queue = mysqli_fetch_array($ambilsemuadata)){
                                            
                                            $tanggal = $payment_queue['tanggal'];
                                            $datauser = $payment_queue['datauser'];
                                            $game = $payment_queue['game'];
                                            $diamond = $payment_queue['diamond'];
                                            $bukti = $payment_queue['bukti'];
                                            $idb = $payment_queue['id'];
                                        
                                        ?>
                                        <tr>
                                            <td><?=$i++;?></td>
                                            <td><?=$tanggal;?></td>
                                            <td><?=$datauser;?></td>
                                            <td><?=$game;?></td>
                                            <td><?=$diamond;?></td>
                                            <td><?=$bukti;?></td>
                                            <td>
                                                <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#konfirmasi<?=$i;?>">
                                                    Konfirmasi
                                                </button>
                                                <input type="hidden" name="nomorygdihapus" value = "<?=$i;?>">
                                                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete<?=$i;?>">
                                                    Delete
                                                </button>
                                            </td>
                                        </tr>                                          

                                            <!-- Konfirmasi Modal -->
                                            <div class="modal fade" id="konfirmasi<?=$i;?>">
                                            <div class="modal-dialog">
                                            <div class="modal-content">

                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                                <h4 class="modal-title">Konfirmasi</h4>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal">&times;</button>
                                            </div>

                                            <!-- Modal body -->
                                            <div class="modal-body">
                                               Apakah Anda yakin ingin mengkonfirmasi data tersebut?
                                               <br>
                                               <br>
                                               <input type="hidden" name="idb" value="<?=$i;?>">
                                               <button type="submit" class="btn btn-danger" name="konfirmasidata" data-bs-dismiss="modal">Konfirmasi</button>
                                            </div>

                                            </div>
                                        </div>
                                        </div>
                                        
                                        <!-- Delete Modal -->
                                        <div class="modal fade" id="delete<?=$idb;?>">
                                            <div class="modal-dialog">
                                            <div class="modal-content">

                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                                <h4 class="modal-title">Hapus Data?</h4>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal">&times;</button>
                                            </div>

                                            <!-- Modal body -->
                                            <div class="modal-body">
                                               Apakah Anda yakin ingin menghapus data tersebut?
                                               <input type="hidden" name="idb" value="<?=$i;?>">
                                               <br>
                                               <br>
                                               <button type="submit" class="btn btn-danger" name="hapusdata" data-bs-dismiss="modal">Hapus</button>
                                            </div>

                                            </div>
                                        </div>
                                        </div>
                                        
                                        <?php
                                        };
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; TKB`STORE 2022</div>
                            
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>

</html>
