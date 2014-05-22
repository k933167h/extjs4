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
                    layout: "card",
                    padding: 30,
                    id: "main",
                    items: [
                        {
                            xtype: "panel",
                            title: "Screen 1",
                            items: [
                                {
                                    xtype: "button",
                                    text: "go to screen 2",
                                    handler: function() {
                                        Ext.getCmp("main").getLayout().setActiveItem(1);
                                    }
                                }
                            ]
                        },
                        {
                            xtype: "panel",
                            title: "Screen 2",
                            items: [
                                {
                                    xtype: "button",
                                    text: "go to screen 3",
                                    handler: function() {
                                        Ext.getCmp("main").getLayout().setActiveItem(2);
                                    }
                                }
                            ]
                        },
                        {
                            xtype: "panel",
                            title: "Screen 3"
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
