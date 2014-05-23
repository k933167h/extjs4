<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/resources/css/ext-all.css" rel="stylesheet" />
        <script src="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/ext-all.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/locale/ext-lang-ko.min.js"></script>
        <script>

            Ext.define("Country", {
                extend: "Ext.data.Model",
                fields: ["name", "capital", "population"],
                idProperty: "name",
                proxy: {
                    type: "memory",
                    data: {
                        country: {
                            name: "France",
                            capital: "Paris",
                            population: 65436552
                        }
                    },
                    reader: {
                        type: "json",
                        root: "country"
                    }
                }
            });

            Ext.onReady(function() {

                Country.load("France", {
                    success: function(record) {
                        console.log(record.get("capital"));
                        console.log(record.get("population"));
                    }
                });
            });
        </script>
    </head>
    <body>
    </body>
</html>
