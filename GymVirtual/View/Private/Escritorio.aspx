<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Escritorio.aspx.cs" Inherits="GymVirtual.View.Private.Escritorio" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Plataforma de Cursos</title>
    <link rel="shortcut icon" href="http://lineadecodigo.com/wp-content/uploads/2007/03/favicon.ico">

    <style type="text/css">
        /**/
        #unlicensed {
            display: none !important;
        }
    </style>
    <script src="../../Content/js/Ventana.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <%--Desktop Manager--%>
        <ext:ResourceManager runat="server" Theme="Access" />

        <ext:Desktop runat="server" ID="DESCRITORIO">
          
            <StartMenu Title="Menu" Icon="Ruby" Height="350" Width="350">
              <MenuItems>
                    <ext:MenuItem ID="MENUPRINCIPAL" runat="server" Text="GYM VIRTUAL" Icon="Folder" HideOnClick="false">
                        <Menu>
                            <ext:Menu ID="MIDENTIDAD" runat="server">
                                <Items>
                                    <ext:MenuItem Text="Inscripcion" Icon="User" ID="MINSCRIPCION" >
                                        <Listeners>
                                            <Click Handler="DynamicWindow(#{DESCRITORIO},'win_' + MINSCRIPCION , 'INCRIPCIÓN', 'InscripcionCliente.aspx', 750, 600)" />
                                        </Listeners>
                                    </ext:MenuItem>
                                   
                                </Items>
                            </ext:Menu>
                        </Menu>
                    </ext:MenuItem>
              </MenuItems>
                <ToolConfig>
                    <ext:Toolbar runat="server" Width="130">
                        <Items>
                            <ext:Hidden ID="NombreUsuario" runat="server" />
                            <ext:Button runat="server" Text="Cerrar Sesión" Icon="Key">
                                <DirectEvents>
                                    <Click OnEvent="Logout_Click">
                                        <EventMask ShowMask="true" Msg="Cerrando Sesión" MinDelay="1000" />
                                    </Click>
                                </DirectEvents>
                            </ext:Button>
                        </Items>
                    </ext:Toolbar>
                </ToolConfig>
            </StartMenu>

            <TaskBar Dock="None" HideTray="true" HideQuickStart="false">
                <CustomConfig>
                    <ext:ConfigItem Name="startBtnText" Value="Inicio" Mode="Value" />
                </CustomConfig>
                <TrayClock Dock="Left" TimeFormat="dddd, dd \de MMMM \de yyyy  hh:mm:ss tt" RefreshInterval="1">
                </TrayClock>

            </TaskBar>

            <DesktopConfig Wallpaper="../../content/img/fondo.jpg" WallpaperStretch="true" ShortcutDragSelector="true" Width="200" Height="300" />
        </ext:Desktop>
    </form>
</body>
</html>
