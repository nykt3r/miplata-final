﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuOperaciones.aspx.cs" Inherits="Mi_Plata.MenuOperaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mi Plata | Menú de Operaciones</title>
    <link rel="icon" href="img/webicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="css/Menu-Nav.css"/>
    <link rel="stylesheet" href="css/Menu-PanelEntrada.css"/>
    <link rel="stylesheet" href="css/Menu-PanelOperaciones.css"/>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel="stylesheet"/>
</head>
<body>
    <main>
        <asp:Panel ID="PanelEntrada" runat="server" Visible="False">
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
        </asp:Panel>

        <asp:Panel ID="PanelConsignar" runat="server" Visible="False">
            <div class="panel">
                <h1 class="panel_titulo"><span></span>! Para consignar:</h1>
                <form id="formConsignar" class="panel_formulario" runat="server">
                    <div class="panel_entrada">
                        <label class="panel_label">Ingrese el valor </label>
                        <asp:TextBox ID="txtConsignar" class="panel_txtbox" runat="server" TextMode="Number" oninput="validarNumeroPositivo(this)" ></asp:TextBox>
                    </div>
                    <div class="panel_botones">
                        <asp:Button ID="btnConsignar" class="panel_btn" runat="server" Text="Confirmar Consignación"/>
                        <asp:Button ID="btnBackConsignar" class="panel_btn" runat="server" Text="Volver al Menú de Operaciones"/>
                    </div>
                    <div class="panel_resultado">
                        <asp:Label ID="lblRespuestaConsignar" class="panel_label" runat="server">ERROR AL CONSIGNAR</asp:Label>
                        <asp:Label ID="saldoActualConsignar" class="panel_label" runat="server">SALDO ACTUAL: $500</asp:Label>
                    </div>              
                </form>           
            </div>
        </asp:Panel>

        <asp:Panel ID="PanelRetirar" runat="server" Visible="False">
            <div class="panel">
                <h1 class="panel_titulo"><span></span>! Para retirar:</h1>
                <form id="formRetirar" class="panel_formulario" runat="server">
                    <div class="panel_entrada">
                        <label class="panel_label">Ingrese el valor </label>
                        <asp:TextBox ID="txtRetirar" class="panel_txtbox" runat="server" TextMode="Number" oninput="validarNumeroPositivo(this)" ></asp:TextBox>
                    </div>
                    <div class="panel_botones">
                        <asp:Button ID="btnRetirar" class="panel_btn" runat="server" Text="Confirmar Retiro"/>
                        <asp:Button ID="btnBackRetirar" class="panel_btn" runat="server" Text="Volver al Menú de Operaciones"/>
                    </div>
                    <div class="panel_resultado">
                        <asp:Label ID="lblRespuestaRetirar" class="panel_label" runat="server">ERROR AL RETIRAR</asp:Label>
                        <asp:Label ID="saldoActualRetirar" class="panel_label" runat="server">SALDO ACTUAL: $400</asp:Label>
                    </div>              
                </form>           
            </div>
        </asp:Panel>

        <asp:Panel ID="PanelSaldo" runat="server" Visible="False">
            <div class="panel">
                <h1 class="panel_titulo"><span></span>! Aquí verás tu saldo:</h1>
                <form id="formSaldo" class="panel_formulario" runat="server">
                    <asp:Label ID="lblVerSaldo" runat="server">SALDO ACTUAL: $300</asp:Label>
                    <div class="panel_botones">
                        <asp:Button ID="btnVerSaldo" class="panel_btn" runat="server" Text="Ver Saldo Actual"/>
                        <asp:Button ID="btnBackSaldo" class="panel_btn" runat="server" Text="Volver al Menú de Operaciones"/>
                    </div>           
                </form>           
            </div>
        </asp:Panel>

        <asp:Panel ID="PanelMovimientos" runat="server" Visible="True">
            <div class="panel">
                <h1 class="panel_titulo"><span></span>! Aquí verás tus movimientos:</h1>
                <form id="formMovimientos" class="panel_formulario" runat="server">
                    <div class="panel_tabla">
                        <table>
                            <thead>
                                <tr>
                                    <th>Fecha y Hora</th>
                                    <th>Tipo de Movimiento</th>
                                    <th>Monto</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>0000-00-00 00:00</td>
                                    <td>Consignó</td>
                                    <td>$500</td>
                                </tr>
                                <tr>
                                    <td>0000-00-00 00:00</td>
                                    <td>Retiró</td>
                                    <td>$400</td>
                                </tr>
                                <tr>
                                    <td>0000-00-00 00:00</td>
                                    <td>Consignó</td>
                                    <td>$100</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="panel_botones">
                        <asp:Button ID="btnBackMovimientos" class="panel_btn" runat="server" Text="Volver al Menú de Operaciones"/>
                    </div>       
                </form>           
            </div>
        </asp:Panel>


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
    <script src="js/movNav.js"></script>
    <script src="js/validarNumPositivo.js"></script>
</body>
</html>
