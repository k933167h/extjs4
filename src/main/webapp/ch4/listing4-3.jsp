<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://cdn.sencha.com/ext/gpl/4.2.1/resources/css/ext-all.css" rel="stylesheet" />
        <script src="http://cdn.sencha.com/ext/gpl/4.2.1/ext-all.js"></script>
        <script>
            Ext.onReady(function() {
                var win = Ext.create("Ext.window.Window", {
                    title: "Find and Replace",
                    modal: true,
                    items: [
                        {
                            xtype: "textfield",
                            fieldLabel: "Find what"
                        }
                    ],
                    buttons: [
                        {
                            text: "Find next"
                        },
                        {
                            text: "Cancel"
                        }
                    ]
                });

                win.show();
            });
        </script>
    </head>
    <body>
    </body>
</html>
