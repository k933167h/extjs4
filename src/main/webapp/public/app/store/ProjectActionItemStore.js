Ext.define("MyApp.store.ProjectActionItemStore", {
    extend: "Ext.data.Store",
    model: "MyApp.model.ProjectActionItem",
    id: 'projectActionItemStore',
    proxy: {
        type: "rest",
        url: "http://localhost:8080/extjs4/projectactionitems",
        limitParam: "size",
        totalProperty: 'page.totalElements',
        idProperty: 'sno',
        reader: {
            type: "json",
            root: "_embedded.projectActionItems"
        }
    }
});