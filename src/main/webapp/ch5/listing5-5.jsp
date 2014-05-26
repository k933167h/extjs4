<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/resources/css/ext-all.css" rel="stylesheet" />
        <script src="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/ext-all.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/locale/ext-lang-ko.min.js"></script>
        <script>
            Ext.define("Continent", {
                extend: "Ext.data.Model",
                fields: ["name"]
            });

            Ext.define("City", {
                extend: "Ext.data.Model",
                fields: ["name"]
            });

            Ext.define("CountryDetails", {
                extend: "Ext.data.Model",
                fields: ["id", "population"]
            });

            Ext.define("Country", {
                extend: "Ext.data.Model",
                idProperty: "name",
                fields: ["name", "capital"],
                hasMany: [{
                        name: "cities",
                        model: "City"
                    }],
                hasOne: [
                    {model: "CountryDetails"}],
                belongsTo: [{
                        model: "Continent"
                    }],
                proxy: {
                    type: "memory",
                    data: {
                        country: {
                            name: "France",
                            capital: "Paris",
                            countrydetails: {
                                id: "cd101",
                                population: 65436552
                            },
                            cities: [
                                {name: "Lyon"},
                                {name: "Avignon"}
                            ],
                            continent: {
                                name: "Europe"
                            }
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
                        var continent = record.getContinent();
                        console.log(continent.get("name"));
                        var countryDetails = record.getCountryDetails();
                        console.log(countryDetails.get("population"));
                        var cities = record.cities();
                        cities.each(function(city) {
                            console.log(city.get("name"));
                        });
                    }
                });
            });
        </script>
    </head>
    <body>
    </body>
</html>
