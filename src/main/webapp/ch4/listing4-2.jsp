<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://cdn.sencha.com/ext/gpl/4.2.1/resources/css/ext-all.css" rel="stylesheet" />
        <script src="http://cdn.sencha.com/ext/gpl/4.2.1/ext-all.js"></script>
        <script>
            Ext.onReady(function() {
                
                var container = Ext.create("Ext.container.Container", {
                    html: "Default Container",
                    listeners: {
                        beforeadd: function() {
                            console.log("beforeadd");
                        },
                        add: function() {
                            console.log("add");
                        },
                        beforeremove: function() {
                            console.log("beforeremove");
                        },
                        remove: function() {
                            console.log("remove");
                        }
                    },
                    renderTo: Ext.getBody()
                });

                console.log("****** Addiing comp1");
                container.add({
                    xtype: "component",
                    html: "Raw",
                    id: "comp1"
                });

                console.log("****** Removing comp1");
                container.remove("comp1");
            });
        </script>
    </head>
    <body>
    </body>
</html>
