<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/resources/css/ext-all.css" rel="stylesheet" />
        <script src="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/ext-all.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/locale/ext-lang-ko.min.js"></script>
        <script>
            Ext.define("Screen1", {
                extend: "Ext.panel.Panel",
                xtype: "screen1",
                title: "Screen 1",
                items: [
                    {
                        xtype: "button",
                        text: "Go to Screen 2",
                        handler: function() {
                            Ext.getCmp("viewport").getLayout().setActiveItem(1);
                        }
                    }
                ]
            });

            Ext.define("Screen2", {
                extend: "Ext.panel.Panel",
                xtype: "screen2",
                title: "Screen 2",
                items: [
                    {
                        xtype: "button",
                        text: "Go to Screen 3",
                        handler: function() {
                            Ext.getCmp("viewport").getLayout().setActiveItem(2);
                        }
                    }
                ]
            });

            Ext.define("Screen3", {
                extend: "Ext.panel.Panel",
                xtype: "screen3",
                title: "Screen 3"
            });

            Ext.onReady(function() {

                Ext.create("Ext.container.Viewport", {
                    layout: "card",
                    padding: 30,
                    id: "viewport",
                    items: [
                        {
                            xtype: "screen1",
                            id: "screen1"
                        },
                        {
                            xtype: "screen2",
                            id: "screen2"
                        },
                        {
                            xtype: "screen3",
                            id: "screen3"
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
