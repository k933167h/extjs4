Ext.define("MyApp.view.home.HomeScreen", {
    extend: "Ext.panel.Panel",
    xtype: "home",
    layout: "border",
    padding: 0,
    items: [
        {
            region: "north",
            height: 70,
            header: false,
            html: "Place holder for Logo and Menu"
        },
        {
            title: 'Navigation',
            region: "west",
            width: 250,
            collapsible: true,
            margins: '5 0 0 0',
            cmargins: '5 5 0 0'
        },
        {
            region: "center",
            items: [
                {
                    xtype: "panel",
                    layout: "hbox",
                    border: false,
                    items: [
                        {
                            xtype: "projectactionitemgrid",
                            width: 580
                        },
                        {
                            xtype: "projectactionitemdetails",
                            width: 400,
                            height: 400
                        }
                    ]
                }
            ]
        }
    ]
});