Ext.Loader.setConfig({enabled: true});

Ext.application({
    name: "MyApp",
    appFolder: "public/app",
    controllers: ["LoginController", "HomeController"],
    launch: function() {
        this.viewport = Ext.create("Ext.container.Viewport", {
            renderTo: Ext.getBody(),
            layout: "card",
            items: [
                {
                    xtype: "login"
                }
            ]
        });
    }
});