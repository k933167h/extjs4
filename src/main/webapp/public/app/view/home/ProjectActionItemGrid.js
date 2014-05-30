Ext.define("MyApp.view.home.ProjectActionItemGrid", {
    extend: "Ext.grid.Panel",
    xtype: "projectactionitemgrid",
    title: "Action items",
    store: null,
    columns: [
        {
            header: "No",
            dataIndex: "sno",
            width: 30
        },
        {
            header: "Action Item",
            dataIndex: "item",
            width: 200},
        {
            header: "Action Officer",
            dataIndex: "officer"
        },
        {
            header: "Status",
            dataIndex: "status",
            width: 150
        }
    ],
    initComponent: function() {
        this.dockedItems = [
            {
                xtype: 'pagingtoolbar',
                store: Ext.getStore("ProjectActionItemStore"),
                dock: 'bottom',
                displayInfo: true
            }
        ];
        this.callParent(arguments);
    }
});