
/*Crea las ventanas que se despliegas desde menu Desktop*/
function DynamicWindow(app, pageId, pageName, pageUrl, pageWidth, pageHeight, pageModal) {
    console.log("Instancia Ventana Dinamica Desktop");
    var desk = app.getDesktop();
    var win = null;

    if (desk.getWindow(pageId)) {
        desk.getWindow(pageId).show();
        desk.getWindow(pageId).reload();
    }
    else {
        win = desk.createWindow({
            id: pageId,
            title: Ext.util.Format.uppercase(pageName)/* + " - " + pageUrl*/,
            titleAlign: "center",
            width: pageWidth,
            height: pageHeight,
            bodyPadding: 5,
            plain: true,
            resizable: false,
            maximizable: true,
            minimizable: true,
            closeAction: "destroy",
            modal: pageModal,
            loader:
            {
                url: pageUrl,
                renderer: "frame",
                loadMask:
                {
                    showMask: true,
                    msg: "Cargando..."
                }
            }
        });
    }

    desk.getWindow(pageId).center();
    desk.getWindow(pageId).show();
}