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
                    title: "Controls",
                    items: [
                        {
                            xtype: "radiogroup",
                            fieldLabel: "Title",
                            vertical: true,
                            columns: 1,
                            items: [
                                {
                                    boxLabel: "Mr",
                                    name: "title"
                                },
                                {
                                    boxLabel: "Ms",
                                    name: "title"
                                }
                            ]
                        },
                        {
                            xtype: "textfield",
                            fieldLabel: "Name",
                            allowBlank: false,
                            maxLength: 50,
                            msgTarget: "side"
                        },
                        {
                            xtype: "datefield",
                            fieldLabel: "Date of birth",
                            format: "Y-m-d",
                            msgTarget: "side"
                        },
                        {
                            xtype: "textfield",
                            fieldLabel: "Blog",
                            vtype: "url"
                        },
                        {
                            xtype: "numberfield",
                            fieldLabel: "Years of experience",
                            minValue: 5,
                            maxValue: 15
                        },
                        {
                            xtype: "textarea",
                            fieldLabel: "Address"
                        },
                        {
                            xtype: "button",
                            text: "Submit"
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
