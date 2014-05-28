<html>
    <head>
        <link href="http://cdn.sencha.com/ext/gpl/4.2.1/resources/css/ext-all.css" rel="stylesheet" />
        <script src="http://cdn.sencha.com/ext/gpl/4.2.1/ext-all.js"></script>
        <script src="resources/js/app.js"></script>
        <script>
            Ext.Loader.setConfig({enabled: true});

            Ext.application({
                name: "MyApp",
                appFolder: "app",
                controllers: ["LoginController", "HomeController"],
                launch: function() {
                    this.viewport = Ext.create("Ext.container.Viewport", {
                        renderTo: Ext.getBody(),
                        layout: "card",
                        items: []
                    });
                })
            });
        </script>
    </head>
    <body>
    </body>
</html>
