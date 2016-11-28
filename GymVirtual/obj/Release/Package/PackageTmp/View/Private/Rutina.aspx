<%@ Page Language="C#" %>

<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %>

<script runat="server">
    protected void ShowValue(object sender, DirectEventArgs e)
    {
        StringBuilder sb = new StringBuilder(256);

        foreach (Ext.Net.ListItem item in ItemSelector1.SelectedItems)
        {
            sb.AppendFormat("Value={0}, Index={1}, Text={2} <br/>", item.Value, item.Index, item.Text);
        }

        X.Msg.Alert("Selection", sb.ToString()).Show();
    }    
</script>

<!DOCTYPE html>

<html>
<head id="Head1" runat="server">
    <title>Rutinas</title>
   
    
    <style>
        .label {
            font    : bold 11px tahoma,arial,sans-serif;
            width   : 300px;
            height  : 25px;
            padding : 5px 0;
            border  : 1px dotted #99bbe8;
            color   : #15428b;
            cursor  : default;
            margin  : 10px;
            background  : #dfe8f6;
            text-align  : center;
            margin-left : 0px;
        }
    </style>
</head>
<body>
    <form id="Form1" runat="server">
        <ext:ResourceManager ID="ResourceManager1" runat="server" />
        
        <ext:FormPanel ID="FormPanel1" 
            runat="server"
            Title="Selecciona Rutina Diaria"
            Width="700"
            BodyPadding="10"
            Height="300"
            Layout="FitLayout">
            <Items>
                <ext:ItemSelector 
                    ID="ItemSelector1" 
                    runat="server"
                    FieldLabel="Seleccionador"
                    AllowBlank="false"
                    MsgTarget="Side"
                    FromTitle="Rutinas"
                    ToTitle="Hoy Entrenaré">
                    <Items>

                    </Items>
                    <SelectedItems>

                        

                        <ext:ListItem Value="3" />
                        <ext:ListItem Value="4" />
                        <ext:ListItem Value="6" />

                        
                    </SelectedItems>
                </ext:ItemSelector>
            </Items>
            <DockedItems>                

                <ext:Toolbar ID="Toolbar2" runat="server" Dock="Bottom">
                    <Defaults>
                        <ext:Parameter Name="minWidth" Value="75" />
                    </Defaults>
                    <Items>
                        <ext:ToolbarFill />
                        <ext:Button ID="Button2" runat="server" Text="Limpiar" Handler="if (!App.ItemSelector1.disabled) { App.ItemSelector1.clearValue(); }" />
                        <ext:Button ID="Button3" runat="server" Text="Resetear" Handler="App.ItemSelector1.reset();" />
                        <ext:Button ID="Button4" runat="server" Text="Guardar" OnDirectClick="ShowValue" />
                    </Items>
                </ext:Toolbar>
            </DockedItems>
        </ext:FormPanel>
    </form>
</body>
</html>