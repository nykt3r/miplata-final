<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuOperaciones.aspx.cs" Inherits="Mi_Plata.MenuOperaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mi Plata | Menú de Operaciones</title>
    <link rel="icon" href="img/webicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="css/Menu-Nav.css"/>
    <link rel="stylesheet" href="css/Menu-PanelEntrada.css"/>
    <link rel="stylesheet" href="css/Menu-PanelOperaciones.css"/>
    <link rel="stylesheet" href="css/Menu-PanelMov.css"/>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel="stylesheet"/>
</head>
<body>
    <main>
        <form id="formMenuOperaciones" runat="server">
            <div class="paneles">
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
                        <h1 class="panel_titulo"><span id="consignarNombreUsuario" runat="server"></span>! Para consignar:</h1>
                        <div id="formConsignar" class="panel_formulario">
                            <div class="panel_entrada">
                                <label class="panel_label">Ingrese el valor </label>
                                <asp:TextBox ID="txtConsignar" class="panel_txtbox" runat="server" TextMode="Number" oninput="validarNumeroPositivo(this)" ></asp:TextBox>
                            </div>
                            <div class="panel_botones">
                                <asp:Button ID="btnConsignar" class="panel_btn" runat="server" Text="Confirmar Consignación" OnClick="btnConsignar_Click"/>
                                <asp:Button ID="btnBackConsignar" class="panel_btn" runat="server" Text="Volver al Menú de Operaciones" OnClick="backMenuOperaciones_Click"/>
                            </div>
                            <div class="panel_resultado">
                                <asp:Label ID="lblRespuestaConsignar" class="panel_label" runat="server"></asp:Label>
                                <asp:Label ID="saldoActualConsignar" class="panel_label" runat="server"></asp:Label>
                            </div>              
                        </div>           
                    </div>
                </asp:Panel>

                <asp:Panel ID="PanelRetirar" runat="server" Visible="False">
                    <div class="panel">
                        <h1 class="panel_titulo"><span id="retirarNombreUsuario" runat="server"></span>! Para retirar:</h1>
                        <div id="formRetirar" class="panel_formulario">
                            <div class="panel_entrada">
                                <label class="panel_label">Ingrese el valor </label>
                                <asp:TextBox ID="txtRetirar" class="panel_txtbox" runat="server" TextMode="Number" oninput="validarNumeroPositivo(this)" ></asp:TextBox>
                            </div>
                            <div class="panel_botones">
                                <asp:Button ID="btnRetirar" class="panel_btn" runat="server" Text="Confirmar Retiro" OnClick="btnRetirar_Click"/>
                                <asp:Button ID="btnBackRetirar" class="panel_btn" runat="server" Text="Volver al Menú de Operaciones" OnClick="backMenuOperaciones_Click"/>
                            </div>
                            <div class="panel_resultado">
                                <asp:Label ID="lblRespuestaRetirar" class="panel_label" runat="server"></asp:Label>
                                <asp:Label ID="saldoActualRetirar" class="panel_label" runat="server"></asp:Label>
                            </div>              
                        </div>           
                    </div>
                </asp:Panel>

                <asp:Panel ID="PanelSaldo" runat="server" Visible="False">
                    <div class="panel">
                        <h1 class="panel_titulo"><span id="saldoNombreUsuario" runat="server"></span>! Aquí verás tu saldo:</h1>
                        <div id="formSaldo" class="panel_formulario">
                            <asp:Label ID="lblVerSaldo" runat="server"></asp:Label>
                            <div class="panel_botones">
                                <asp:Button ID="btnVerSaldo" class="panel_btn" runat="server" Text="Ver Saldo Actual" OnClick="btnVerSaldo_Click"/>
                                <asp:Button ID="btnBackSaldo" class="panel_btn" runat="server" Text="Volver al Menú de Operaciones" OnClick="backMenuOperaciones_Click"/>
                            </div>           
                        </div>           
                    </div>
                </asp:Panel>

                <asp:Panel ID="PanelMovimientos" runat="server" Visible="False">
                    <div class="panel">
                        <h1 class="panel_titulo"><span id="movimientosNombreUsuario" runat="server"></span>! Aquí verás tus movimientos:</h1>
                        <div id="formMovimientos" class="panel_formulario">
                            <div class="panel_tabla">
                                <asp:GridView ID="TablaMovimientos" class="movimientos" runat="server" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:BoundField DataField="fechaYHora" HeaderText="Fecha y Hora" />
                                        <asp:BoundField DataField="tipo" HeaderText="Tipo de Movimiento" />
                                        <asp:BoundField DataField="monto" HeaderText="Monto" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                            <div class="panel_botones">
                                <asp:Button ID="btnBackMovimientos" class="panel_btn" runat="server" Text="Volver al Menú de Operaciones" OnClick="backMenuOperaciones_Click"/>
                            </div>       
                        </div>           
                    </div>
                </asp:Panel>
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
                            <a id="btnPanelConsignar" runat="server"><i class='bx bx-up-arrow-alt'></i></a>
                        </span>
                        <span style="--i:3">
                            <a id="btnPanelRetirar" runat="server"><i class='bx bx-down-arrow-alt' ></i></a>
                        </span>
                        <span style="--i:4">
                            <a id="btnPanelSaldo" runat="server"><i class='bx bx-dollar' ></i></a>
                        </span>
                        <span style="--i:5">
                            <a id="btnPanelMovimientos" runat="server"><i class='bx bxs-detail' ></i></a>
                        </span>
                    </div>
                </nav>
            </div>
        </form>
    </main>
    <script src="js/movNav.js"></script>
    <script src="js/validarNumPositivo.js"></script>
</body>
</html>