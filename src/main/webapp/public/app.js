Ext.Loader.setConfig({enabled: true});
Ext.application({
    name: 'MyApp',
    appFolder: 'public/app',
    controllers: [
        'HomeController'
    ],
    launch: function() {
        this.viewport = Ext.create('Ext.container.Viewport', {
            renderTo: Ext.getBody(),
            layout: 'border',
            items: [{
                    region: 'north',
                    html: '<h1 class="x-panel-header">Page Title</h1>',
                    autoHeight: true
                }, {
                    region: 'west',
                    collapsible: true,
                    title: 'Navigation',
                    width: 150,
                    margins: '5 0 0 0'
                }, {
                    region: 'center',
                    xtype: 'tabpanel',
                    activeTab: 0,
                    margins: '5 0 0 5',
                    defaults: {
                        closable: true,
                        autoScroll: true
                    },
                    items: [{
                            title: 'Home',
                            xtype: 'home'
                        }]
                }
            ]
        });
    }
});