<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://cdn.sencha.com/ext/gpl/4.2.1/resources/css/ext-all.css" rel="stylesheet" />
        <script src="http://cdn.sencha.com/ext/gpl/4.2.1/ext-all.js"></script>
        <script>
            Ext.onReady(function() {
                Ext.create('Ext.tab.Panel', {
                    renderTo: Ext.getBody(),
                    title: 'Documentation',
                    plain: false,
                    height: 200,
                    tabPosition: 'bottom',
                    items: [
                        {
                            title: 'Home',
                            html: 'Welcome to Ext JS 4'
                        },
                        {
                            title: 'API',
                            html: 'API docs'
                        },
                        {
                            title: 'Guides',
                            html: 'Standard guides'
                        }
                    ]
                });
            });
        </script>
    </head>
    <body>
    </body>
</html>
