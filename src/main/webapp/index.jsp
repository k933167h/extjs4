<html>
    <head>
        <link href="http://cdn.sencha.com/ext/gpl/4.2.1/resources/css/ext-all.css" rel="stylesheet" />
        <script src="http://cdn.sencha.com/ext/gpl/4.2.1/ext-all.js"></script>
        <script>
            Ext.onReady(function() {
                Ext.create("Ext.Component", {
                    //html: "Raw Component",
                    autoEl: {
                        html: "Link",
                        href: "#",
                        tag: "a"
                    },
                    renderTo: Ext.getBody()
                });
            });
        </script>
    </head>
    <body>
    </body>
</html>
