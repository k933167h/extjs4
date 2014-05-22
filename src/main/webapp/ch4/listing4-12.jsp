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

                Ext.create('Ext.panel.Panel', {
                    title: 'Column',
                    width: 600,
                    height: 200,
                    layout: 'column',
                    defaults: {
                        margin: "10"
                    },
                    items: [
                        {
                            title: "Folder List",
                            html: "Folder List contents",
                            columnWidth: 0.20
                        },
                        {
                            title: "Inbox",
                            html: "Inbox contents",
                            columnWidth: 0.30
                        },
                        {
                            html: "Mail contents",
                            columnWidth: 0.50
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
