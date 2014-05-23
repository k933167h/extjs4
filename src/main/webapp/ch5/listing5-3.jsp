<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/resources/css/ext-all.css" rel="stylesheet" />
        <script src="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/ext-all.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/locale/ext-lang-ko.min.js"></script>
        <script>

            Ext.define("Book", {
                extend: "Ext.data.Model",
                fields: ["title", "author", "ISBN", "price"],
                validations: [
                    {
                        type: "presence",
                        field: "title"
                    },
                    {
                        type: "length",
                        field: "author",
                        max: 20,
                        min: 3
                    },
                    {
                        type: "format",
                        field: "ISBN",
                        matcher: /ISBN(?:-13)?:?\x20*(?=.{17}$)97(?:8|9)([ -])\d{1,5}\1\d{1,7}\1\d{1,6}\1\d$/
                    },
                    {
                        type: "inclusion",
                        field: "price",
                        list: ["$20", "$25", "$30", "$35"]
                    },
                    {
                        type: "priceRange",
                        field: "price",
                        max: 50,
                        min: 5,
                        message: "must be between 5 and 50"
                    }
                ]
            });

            Ext.data.validations.priceRange = function(config, value) {
                var max = config.max;
                var min = config.min;

                return value < max && value > min;
            };

            Ext.onReady(function() {

                var b1 = Ext.create("Book", {
                    title: "Practical XYZ",
                    ISBN: "ISBN: 978-3-5028-4391-71",
                    price: "$45"
                });
                var errors = b1.validate();

                errors.each(function(item) {
                    console.log(item.field + " " + item.message);
                });
            });
        </script>
    </head>
    <body>
    </body>
</html>
