<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rutinas1.aspx.cs" Inherits="GymVirtual.View.Private.Rutinas1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<!DOCTYPE html>

<html>
<head id="Head1" runat="server">
    <title>Rutinas</title>
   
    <script>
        var getDragDropText = function () {
            var buf = [];

            buf.push("<ul>");

            Ext.each(this.view.panel.getSelectionModel().getSelection(), function (record) {
                buf.push("<li>" + record.data.Name + "</li>");
            });

            buf.push("</ul>");

            return buf.join("");
        };
    </script>
</head>
<body>
    <form id="Form1" runat="server">
        <ext:ResourceManager ID="ResourceManager1" runat="server" />
        
        <h1>Selecciona Tu Rutina Diaria</h1> 
        
        <ext:Panel ID="Panel1" runat="server" Width="650" Height="300">
            <LayoutConfig>
                <ext:HBoxLayoutConfig Align="Stretch" Padding="5" />
            </LayoutConfig>
            <Items>
                <ext:GridPanel
                    ID="GridPanel1" 
                    runat="server" 
                    MultiSelect="true"
                    Flex="1"
                    Title="Rutinas"
                    Margins="0 2 0 0">
                    <Store>
                        <ext:Store ID="Store1" runat="server">
                            <Model>
                                <ext:Model ID="Model1" runat="server">
                                    <Fields>
                                        <ext:ModelField Name="musculo1" />
                                        <ext:ModelField Name="musculo2" />
                                        <ext:ModelField Name="idrutina" />
                                    </Fields>
                                </ext:Model>
                            </Model>
                        </ext:Store>
                    </Store>
                    <ColumnModel>
                        <Columns>
                            <ext:Column ID="Column2" runat="server" Text="Musculo 1" Width="60" DataIndex="musculo1" />
                            <ext:Column ID="Column3" runat="server" Text="Musculo 2" Width="60" DataIndex="musculo2" />
                            <ext:Column ID="Column4" runat="server" Text="id" Width="60" DataIndex="idrutina" Hidden = "true"/>
                        </Columns>
                    </ColumnModel>                    
                    <View>
                        <ext:GridView ID="GridView1" runat="server">
                            <Plugins>
                                <ext:GridDragDrop ID="GridDragDrop1" runat="server" DragGroup="firstGridDDGroup" DropGroup="secondGridDDGroup"/>
                            </Plugins>
                            <Listeners>
                                <AfterRender Handler="this.plugins[0].dragZone.getDragText = getDragDropText;" Delay="2" />
                                <Drop Handler="var dropOn = overModel ? ' ' + dropPosition + ' ' + overModel.get('Name') : ' on empty view';
                                              
                                               " />
                            </Listeners>
                        </ext:GridView>
                    </View>   
                </ext:GridPanel>
                <ext:GridPanel 
                    ID="GridPanel2" 
                    runat="server"
                    MultiSelect="true"
                    Title="Que Entrenaré Hoy"
                    Flex="1"
                    Margins="0 0 0 3">
                    <Store>
                        <ext:Store ID="Store2" runat="server">
                            <Model>
                                <ext:Model ID="Model2" runat="server">
                                    <Fields>
                                        <ext:ModelField Name="musculo1" />
                                        <ext:ModelField Name="musculo2" />
                                        <ext:ModelField Name="idrutina" />
                                    </Fields>
                                </ext:Model>
                            </Model>
                        </ext:Store>
                    </Store>
                    <ColumnModel>
                        <Columns>                            
                            <ext:Column ID="Column5" runat="server" Text="Musculo 1" Width="60" DataIndex="musculo1" />
                            <ext:Column ID="Column6" runat="server" Text="Musculo 2" Width="60" DataIndex="musculo2" />
                            <ext:Column ID="Column1" runat="server" Text="id" Width="60" DataIndex="idrutina" />
                        </Columns>
                    </ColumnModel>                   
                    <View>
                        <ext:GridView ID="GridView2" runat="server">
                            <Plugins>
                                <ext:GridDragDrop ID="GridDragDrop2" runat="server" DragGroup="secondGridDDGroup" DropGroup="firstGridDDGroup"/>
                            </Plugins>
                            <Listeners>
                                <AfterRender Handler="this.plugins[0].dragZone.getDragText = getDragDropText;" Delay="2" />
                                <Drop Handler="var dropOn = overModel ? ' ' + dropPosition + ' ' + overModel.get('Name') : ' on empty view'; 
                                               
                                               
                                                if(App.direct.InsertarRutina(data.records[0].get('idrutina'))){
                                                Ext.net.Notification.show({title:'Mensaje', html:'Rutina lista'});
                                               } else{
                                                Ext.net.Notification.show({title:'Advertencia', html:'Ocurrio un error'});
                                               }
                                               " />
                                               
                                               

                            </Listeners>
                        </ext:GridView>
                    </View>   
                </ext:GridPanel>
            </Items>
            <BottomBar>
                <ext:Toolbar ID="Toolbar1" runat="server">
                    <Items>
                        <ext:ToolbarFill ID="ToolbarFill1" runat="server" />                        
                    </Items>
                </ext:Toolbar>                
            </BottomBar>
        </ext:Panel> 
    </form>    
</body>
</html>
