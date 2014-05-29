Ext.define("MyApp.view.home.ProjectActionItemDetailsPanel", {
    extend: "Ext.form.Panel",
    xtype: "projectactionitemdetails",
    border: false,
    items: [
        {
            xtype: "fieldset", title: "Details",
            defaults: {xtype: "textfield", disabled: true},
            items: [
                {name: "sno", fieldLabel: "No"},
                {name: "item", fieldLabel: "Action Item"},
                {name: "officer", fieldLabel: "Officer"},
                {name: "status", fieldLabel: "Status"},
                {name: "createdBy", fieldLabel: "Created By"},
                {name: "createdDate", fieldLabel: "Created date"}
            ]
        }
    ]
});