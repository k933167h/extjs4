<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://cdn.sencha.com/ext/gpl/4.2.1/resources/css/ext-all.css" rel="stylesheet" />
        <script src="http://cdn.sencha.com/ext/gpl/4.2.1/ext-all.js"></script>
        <script>
            Ext.onReady(function() {
                
                /*
                 var nameText = Ext.create("Ext.form.field.Text", {
                 fieldLabel: "Name"
                 });
                 
                 var submitButton = Ext.create("Ext.Button", {
                 text: "Submit"
                 });
                 */

                var nameText = {
                    xtype: "textfield",
                    fieldLabel: "Name"
                };

                var submitButton = {
                    xtype: "button",
                    text: "Submit"
                };
                
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
                                },
                                enable: function() {
                                    console.log("enable");
                                }
                            }
                        }),
                        nameText,
                        submitButton
                    ],
                    renderTo: Ext.getBody()
                });

                console.log("****** Calling disable");
                pnl.getComponent("rawcomp1").disable();

                console.log("****** Calling enable");
                pnl.getComponent("rawcomp1").enable();

                console.log("****** Calling hide");
                pnl.getComponent("rawcomp1").hide();

                console.log("****** Calling show");
                pnl.getComponent("rawcomp1").show();

                /*
                 console.log("****** Calling destroy");
                 pnl.getComponent("rawcomp1").destroy();        
                 */
            });
        </script>
    </head>
    <body>
    </body>
</html>
