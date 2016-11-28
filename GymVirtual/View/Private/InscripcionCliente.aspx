<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InscripcionCliente.aspx.cs" Inherits="GymVirtual.View.Private.Inscripcion" %>

<%@ Import Namespace="System.Collections.Generic"%>

<%@ Register assembly="Ext.Net" namespace="Ext.Net" tagprefix="ext" %>
    
<script runat="server">

</script>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>FieldContainer - Ext.NET Examples</title>
    <link href="/resources/css/examples.css" rel="stylesheet" />
    <style>
        .dot-label {
            font-weight : bold; 
            font-size   : 20px;            
        }
        
        .note .x-form-item {
            margin-bottom : 0px;
        }
        
        .note .x-form-display-field {
            color : gray;
            padding-top   : 0px;
            padding-left  : 105px;
            margin-bottom : 5px;
        }
    </style>
</head>
<body>
    <ext:ResourceManager runat="server" Theme="Access" />
    
    <ext:FormPanel 
        runat="server" 
        Height="600"
        Width="728"
        Title="ESCOGE TU PLAN" 
        BodyPadding="5" 
        MonitorResize="true">
        <Items>
            <ext:Panel
                runat="server" 
                FieldLabel="PLANES" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout"
                Collapsed="false"
                Title="OFERTA PLANES"
                Collapsible="true">  
                <Items>
                    <ext:TextField runat="server" Width="150" Margins="0 3 0 0" />
                    <ext:TextField runat="server" Width="150" />
                </Items>
            </ext:Panel>
             <ext:Panel
                runat="server" 
                Title="FORMA DE PAGO" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout"
                Collapsed="false"
                Collapsible="true">  
                                                
                <Items>
                    <ext:FieldSet 
                    runat="server"
                    Title="Payment"
                    Layout="AnchorLayout"
                    DefaultAnchor="100%">
                    
                </ext:FieldSet>
                </Items>

            </ext:Panel>
             <ext:Panel
                runat="server" 
                Title="SELECCIÓN INSTRUCTOR" 
                AnchorHorizontal="100%"
                Layout="HBoxLayout"
                Collapsed="false"
                Collapsible="true">  
                                                 
                <Items>
                    <ext:TextField runat="server" Width="150" Margins="0 3 0 0" />
                    <ext:TextField runat="server" Width="150" />
                </Items>
            </ext:Panel>
        </Items>
    </ext:FormPanel>
   
</body>
</html>