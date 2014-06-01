Ext.define("MyApp.store.ProjectActionItemStore", {
    extend: "Ext.data.Store",
    model: "MyApp.model.ProjectActionItem",
    proxy: {
        type: "rest",
        url: "http://localhost:8080/extjs4/projectactionitems",
        reader: {
            type: "json",
            root: "_embedded.projectActionItems",
            idProperty: "sno",
            totalProperty: "page.totalElements"
        },
        writer: {
            type: 'json',
            writeAllFields: true
        }
    }
});