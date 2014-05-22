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

                Ext.create("Ext.form.Panel", {
                    renderTo: Ext.getBody(),
                    title: "Panel with a toolbar",
                    html: "This is an example to use a toolbar",
                    dockedItems: [
                        {
                            xtype: "toolbar",
                            dock: "bottom",
                            items: [
                                {
                                    xtype: "tbtext",
                                    text: "Item: 19"
                                },
                                "-",
                                {
                                    xtype: "tbtext",
                                    text: "English (United States)"
                                },
                                " ",
                                {
                                    xtype: "combo",
                                    fieldLabel: "Go to",
                                    labelAlign: "right"
                                },
                                "➤",
                                {
                                    text: "Print"
                                },
                                " ",
                                {
                                    text: "Outline"
                                }
                            ]
                        }
                    ]
                });
            });
        </script>
    </head>
    <body>
    </body>
</html>
