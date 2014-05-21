<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://cdn.sencha.com/ext/gpl/4.2.1/resources/css/ext-all.css" rel="stylesheet" />
        <script src="http://cdn.sencha.com/ext/gpl/4.2.1/ext-all.js"></script>
        <script>
            Ext.onReady(function() {
                var editMenu = Ext.create("Ext.menu.Menu", {
                    items: [
                        {
                            text: "Undo"
                        },
                        {
                            text: "Cut"
                        },
                        {
                            text: "Copy"
                        },
                        {
                            text: "Paste"
                        }
                    ]
                });

                //editMenu.show();

                Ext.create("Ext.button.Button", {
                    text: "Edit",
                    menu: editMenu,
                    renderTo: Ext.getBody()
                });
            });
        </script>
    </head>
    <body>
    </body>
</html>
