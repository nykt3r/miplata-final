<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuOperaciones.aspx.cs" Inherits="Mi_Plata.MenuOperaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mi Plata | Menú de Operaciones</title>
    <link rel="stylesheet" href="css/styleCircular.css"/>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel="stylesheet"/>
</head>
<body>
    <main>
        <div class="entrada">
            <h1 class="entrada_titulo">Bienvenido/a nuevamente!</h1>
            <ul class="entrada_lista">
                <li class="entrada_descripcion">Dale al icono <i class='bx bxs-bank'></i> para acceder al menú de operaciones</li>
                <li class="entrada_descripcion">Regresa a la página de inicio con:<i class='bx bxs-home' ></i></li>
                <li class="entrada_descripcion">Para consignar:<i class='bx bx-up-arrow-alt'></i></li>
                <li class="entrada_descripcion">Para retirar:<i class='bx bx-down-arrow-alt' ></i></li>
                <li class="entrada_descripcion">Para ver tu saldo:<i class='bx bx-dollar' ></i></li>
                <li class="entrada_descripcion">Para ver tus movimientos:<i class='bx bxs-detail' ></i></li>
            </ul>
        </div>
        <div class="navegacion">
            <nav>
                <div class="nav-content">
                    <div class="toggle-btn">
                        <i class='bx bxs-bank'></i>
                    </div>
                    <span style="--i:1">
                        <a href="Default.aspx"><i class='bx bxs-home' ></i></a>
                    </span>
                    <span style="--i:2">
                        <a href="#"><i class='bx bx-up-arrow-alt'></i></a>
                    </span>
                    <span style="--i:3">
                        <a href="#"><i class='bx bx-down-arrow-alt' ></i></a>
                    </span>
                    <span style="--i:4">
                        <a href="#"><i class='bx bx-dollar' ></i></a>
                    </span>
                    <span style="--i:5">
                        <a href="#"><i class='bx bxs-detail' ></i></a>
                    </span>
                </div>
            </nav>
        </div>
    </main>
    <script src="script.js"></script>
</body>
</html>
