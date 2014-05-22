<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/resources/css/ext-all.css" rel="stylesheet" />
        <script src="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/ext-all.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/locale/ext-lang-ko.min.js"></script>
        <script>
            Ext.onReady(function() {

                Ext.create("Ext.panel.Panel", {
                    layout: "border",
                    padding: 30,
                    id: "main",
                    height: 500,
                    width: 400,
                    items: [
                        {
                            xtype: "panel",
                            html: "Top ",
                            region: "north"
                        },
                        {
                            xtype: "panel",
                            html: "Main contents",
                            region: "center"
                        },
                        {
                            xtype: "panel",
                            html: "Side bar",
                            collapsible: false,
                            split: true,
                            region: "west"
                        }
                    ],
                    renderTo: Ext.getBody()
                });
            });
        </script>
    </head>
    <body>
    </body>
</html>
