<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/resources/css/ext-all.css" rel="stylesheet" />
        <script src="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/ext-all.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/locale/ext-lang-ko.min.js"></script>
        <script>
            /*
             Ext.define("Book", {
             extend: "Ext.data.Model",
             fields: ["title", "author", "price"]
             });
             
             var bookStore = Ext.create("Ext.data.Store", {
             model: "Book"
             });
             */

            /*
             var bookStore = Ext.create("Ext.data.Store", {
             fields: ["title", "author", "price"]
             });
             */

            Ext.define("BookStore", {
                extend: "Ext.data.Store",
                fields: ["title", "author", "price"]
            });

            var bookStore = Ext.create("BookStore");

            bookStore.add({title: "Zend Framework", author: "Zend", price: 49.99});
            bookStore.add({title: "Beginning F#", author: "Robert Pickering", price: 44.99});
            bookStore.add({title: "Pro Hadoop", author: "Jason Venner", price: 39.99});

            bookStore.sort([
                {property: "price", direction: "DESC"},
                {property: "title", direction: "ASC"}
            ]);

            //bookStore.filter("price", 49.99);

            /*
             bookStore.filterBy(function(record) {
             return record.get("price") > 40.00;
             });
             */

            Ext.onReady(function() {

                bookStore.each(function(book) {
                    console.log(book.get("title") + ", " + book.get("author"));
                });

                var record = bookStore.findRecord("title", "Pro Hadoop");
                console.log(record.get("author"));

                var books = bookStore.queryBy(function(record) {
                    return record.get("price") > 40;
                });

                books.each(function(book) {
                    console.log(book.get("title"));
                });
            });
        </script>
    </head>
    <body>
    </body>
</html>
