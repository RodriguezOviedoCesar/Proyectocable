<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cable Visi&oacuten</title>
    <link rel="shortcut icon" href="../../Others/ImagenesWEB/cropped-favicon-180x180.png" type="image/x-icon">
    <!-- Custom fonts for this template-->
    <link href="../../../Others/Dash/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../../../Others/Dash/css/sb-admin-2.css" rel="stylesheet">

    <link href="../../../Others/Dash/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-success sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="Agente.php?id=<?php echo $_GET['id'] ?>">
                <div class="sidebar-brand-icon rotate-n-15">
                    <img style="height: 45px; width:45px; margin-left:-10px" src="../../../Others/ImagenesWEB/Logo Empresa/cropped-favicon-180x180.png" alt="">
                </div>
                <div class="sidebar-brand-text mx-3">Cable Visi&oacuten</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="Agente.php?id=<?php echo $_GET['id'] ?>">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Panel de control</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Control
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Tablas</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Tablas de:</h6>
                        <a class="collapse-item" href="Agentecolaborador.php?id=<?php echo $_GET['id'] ?>">Colaboradores</a>
                        <a class="collapse-item" href="Agenteabonado.php?id=<?php echo $_GET['id'] ?>">Abonados</a>
                        <a class="collapse-item" href="Agenteproveedores.php?id=<?php echo $_GET['id'] ?>">Proveedores</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>


        </ul>
        <!-- End of Sidebar -->
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <?php
                    require('../../conexion/conexion.php');
                    $id = $_GET['id'];

                    $sql1 = "SELECT * FROM usuario_seg WHERE id_usuario=$id";
                    $result1 = $mysqli->query($sql1);

                    if ($result1) {
                        if ($result1->num_rows > 0) {
                            while ($Usuario = $result1->fetch_assoc()) {
                                echo '<span>Bienvenid(@) ', $Usuario['Nomape'], ' al Panel de control de Cable Visi&oacuten Per&uacute</span>';
                            }
                        }
                    }
                    ?>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <?php

                                require('../../conexion/conexion.php');

                                $id = $_GET['id'];

                                $sql = "SELECT * FROM usuario_seg WHERE id_usuario=$id";
                                $result = $mysqli->query($sql);

                                ?>

                                <?php
                                if ($result) {
                                    if ($result->num_rows > 0) {
                                        while ($Usuario = $result->fetch_assoc()) {
                                ?>
                                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Nombre: <?php echo $Usuario['Nomape'] ?></span>
                                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Sede: <?php echo $Usuario['sede'] ?></span>

                                <?php
                                        }
                                    }
                                }
                                ?>
                                <img class="img-profile rounded-circle" src="../../../Others/Dash/img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">

                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Salir
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Tabla de Colaboradores</h1>
                    <p class="mb-4">Control de Colaboradores</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Colaboradores</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>DNI</th>
                                            <th>Area</th>
                                            <th>Jefe</th>
                                            <th>Cargo</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>ID</th>
                                            <th>DNI</th>
                                            <th>Area</th>
                                            <th>Jefe</th>
                                            <th>Cargo</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <?php
                                        require('../../conexion/conexion.php');

                                        $col = "SELECT * FROM colaborador";
                                        $resultcol = $mysqli->query($col);
                                        if ($resultcol) {
                                            if ($resultcol ->num_rows > 0) {
                                                while ($colaborador = $resultcol->fetch_assoc()) {
                                        ?>
                                                    <tr>
                                                        <td><?php echo $colaborador['id_tipo'] ?></td>
                                                        <td><?php echo $colaborador['DNI_COLA'] ?></td>
                                                        <td><?php echo $colaborador['area'] ?></td>
                                                        <td><?php echo $colaborador['jefe'] ?></td>
                                                        <td><?php echo $colaborador['cargo'] ?></td>
                                                    </tr>
                                        <?php
                                                }
                                            }
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Realmente quiere salir?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">??</span>
                    </button>
                </div>
                <div class="modal-body">Seleccione "Cerrar sesi&aacuten" a continuaci&oacuten si est?? listo para finalizar su sesi&oacuten actual.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                    <a class="btn btn-primary" href="../../../Loginuser.html">Cerrar sesi&oacuten
                        <?php
                        require '../../conexion/conexion.php';
                        $mysqli->close();
                        ?>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="../../../Others/Dash/vendor/jquery/jquery.min.js"></script>
    <script src="../../../Others/Dash/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../../../Others/Dash/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../../../Others/Dash/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../../../Others/Dash/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../../../Others/Dash/js/demo/chart-area-demo.js"></script>
    <script src="../../../Others/Dash/js/demo/chart-pie-demo.js"></script>

    <!-- Page level plugins -->
    <script src="../../../Others/Dash/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="../../../Others/Dash/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../../../Others/Dash/js/demo/datatables-demo.js"></script>
</body>

</html>