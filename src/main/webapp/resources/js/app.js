Ext.define("MyController", {
    extend: "Ext.app.Controller",
    refs: [
        {ref: "referenceVariable1", selector: "component selector expression"},
        {ref: "referenceVariable2", selector: "component selector expression"}
    ],
    models: [],
    stores: [],
    views: [],
    init: function() {
        this.control({
            "component selector expression1": {
                eventName: this.eventHandlerFunction1
            },
            "component selector expression2": {
                eventName: this.eventHandlerFunction2
            }
        });
    },
    eventHandlerFunction1: function() {
    },
    eventHandlerFunction2: function() {
    }
});