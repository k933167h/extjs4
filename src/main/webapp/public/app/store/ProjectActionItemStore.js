Ext.define("MyApp.store.ProjectActionItemStore", {
    extend: "Ext.data.Store",
    model: "MyApp.model.ProjectActionItem",
    remoteSort: true,
    proxy: {
        type: "rest",
        url: "projectactionitems",
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