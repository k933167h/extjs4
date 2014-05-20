<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://cdn.sencha.com/ext/gpl/4.2.1/resources/css/ext-all.css" rel="stylesheet" />
        <script src="http://cdn.sencha.com/ext/gpl/4.2.1/ext-all.js"></script>
        <script>
            Ext.onReady(function() {
                var pnl = Ext.create("Ext.panel.Panel", {
                    items: [
                        Ext.create("Ext.Component", {
                            html: "Raw Component",
                            itemId: "rawcomp1",
                            listeners: {
                                activate: function() {
                                    console.log("activate");
                                },
                                added: function() {
                                    console.log("added");
                                },
                                afterrender: function() {
                                    console.log("afterrender");
                                },
                                beforeactivate: function() {
                                    console.log("beforeactive");
                                },
                                beforedeactivate: function() {
                                    console.log("beforedeactivate");
                                },
                                beforerender: function() {
                                    console.log("beforerender");
                                },
                                beforeshow: function() {
                                    console.log("beforeshow");
                                },
                                beforedestory: function() {
                                    console.log("beforedestory");
                                },
                                destory: function() {
                                    console.log("destory");
                                },
                                render: function() {
                                    console.log("render");
                                },
                                show: function() {
                                    console.log("show");
                                },
                                beforehide: function() {
                                    console.log("beforehide");
                                },
                                hide: function() {
                                    console.log("hide");
                                }
                            }
                        })
                    ]
                });
            });
        </script>
    </head>
    <body>
    </body>
</html>
