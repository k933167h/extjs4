<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/resources/css/ext-all.css" rel="stylesheet" />
        <script src="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/ext-all.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/extjs/4.2.1/locale/ext-lang-ko.min.js"></script>
        <script>
            Ext.onReady(function() {
                Ext.Ajax.request(
                        {
                            url: "books.txt",
                            success: function(xhr) {
                                console.log(xhr.responseText);
                            },
                            failure: function(xhr) {
                                console.log("Error: " + xhr.statusText);
                            }
                        }
                );
            });
        </script>
    </head>
    <body>
    </body>
</html>
