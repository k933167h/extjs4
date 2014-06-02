Ext.define('MyApp.view.home.HomeScreen', {
    extend: 'Ext.panel.Panel',
    xtype: 'home',
    layout: 'fit',
    padding: 0,
    items: [{
            xtype: 'panel',
            layout: 'hbox',
            border: false,
            items: [{
                    xtype: 'projectactionitemgrid',
                    width: 560
                }, {
                    xtype: 'projectactionitemdetails',
                    width: 400,
                    height: 400
                }
            ]
        }]
});