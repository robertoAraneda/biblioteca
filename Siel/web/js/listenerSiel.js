

function addRowHandlers() {
    var table = document.getElementById("table1");
    var rows = table.getElementsByTagName("tr");
    for (i = 0; i < rows.length; i++) {
        var currentRow = table.rows[i];
        var createClickHandler = function (row) {
            return function () {
                var cell = row.getElementsByTagName("td")[0];
                var id = cell.innerHTML;
                var input_name = document.getElementById("validationCustom01");
                input_name.value = id;

                var cell = row.getElementsByTagName("td")[1];
                var id = cell.innerHTML;
                var input_name = document.getElementById("validationCustom02");
                input_name.value = id;

                var cell = row.getElementsByTagName("td")[2];
                var id = cell.innerHTML;
                var input_name = document.getElementById("validationCustom03");
                input_name.value = id;

                var cell = row.getElementsByTagName("td")[3];
                var id = cell.innerHTML;
                var input_name = document.getElementById("validationCustom04");
                input_name.value = id;

                var cell = row.getElementsByTagName("td")[4];
                var id = cell.innerHTML;
                var input_name = document.getElementById("validationCustom05");
                input_name.value = id;

                var cell = row.getElementsByTagName("td")[5];
                var id = cell.innerHTML;
                var input_name = document.getElementById("validationCustom06");
                input_name.value = id;

                var cell = row.getElementsByTagName("td")[6];
                var id = cell.innerHTML;
                var input_name = document.getElementById("validationCustom07");
                input_name.value = id;
            };
        };
        currentRow.onclick = createClickHandler(currentRow);
    }

    $(document).ready(function () {

        (function ($) {

            $('#filtrar').keyup(function () {

                var rex = new RegExp($(this).val(), 'i');
                $('.buscar tr').hide();
                $('.buscar tr').filter(function () {
                    return rex.test($(this).text());
                }).show();

            })

        }(jQuery));

    });

}

