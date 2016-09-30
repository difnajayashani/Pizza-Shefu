$(document).ready(function () {

        $('#tblItems').bootstrapTable({
            /*method: '',*/
            url: '../js/data2.json',
            height: 400,
            striped: true,
            pagination: true,
            pageSize: 50,
            pageList: [10, 25, 50, 100, 200],
            search: false,
            showColumns: false,
            showRefresh: false,
            minimumCountColumns: 2,
            columns: [{
                field: 'id',
                title: 'Item ID',
                sortable: true
            }, {
                field: 'name',
                title: 'Item Name',
                sortable: true
            },{
                field: 'category',
                title: 'Category',
                sortable: true
            },{
                field: 'subcategory',
                title: 'Sub-category',
                sortable: true
            }, {
                field: 'type',
                title: 'Type',
                sortable: true
            }, {
                field: 'images',
                title: 'Images',
                sortable: true
            },{
                field: 'price',
                title: 'Item Price',
                align: 'right',
                sortable: true
            }, {
                field: 'operate',
                title: 'Operations',
                align: 'center',
                formatter: operateFormatter,
                events: operateEvents
            }]
        });

        /*
        *populating drop-down list according to the table's field
        */
   /* $.ajax({
        type: 'POST',
        dataType: 'JSON',
        success: function(data){

            var selctedCat = document.getElementById("#editSlctCat");

            for(var x =0; x<data.length; x++){
                option = option +"<option value='" +data[x].sele "'"
                    *//* option = option + "<option value='" + data[i].groupNm + "'>" + data[i].groupNm + "</option>";*//*
            }
        }

    })*/

});

function operateFormatter(value, row, index){
    return[
        '<center>',
        '<a class="edit" title="Edit" id="linkEditItem">',
        '<i class="glyphicon glyphicon-edit">Edit</i>',
        '</a>&nbsp;&nbsp;&nbsp;&nbsp;',
        '<a class="delete" href="javascript:void(0)" title="Delete" id="linkDeleteItem">',
        '<i class="glyphicon glyphicon-remove">Delete</i>',
        '</a></center>'
    ].join('');
}

window.operateEvents = {

    'click .edit': function (e, value, row,index){

        var data =JSON.stringify(row);
        var objct = JSON.parse(data);
        window.location.href = '../pages/editItem.html';
        $('#txtEditID').val(objct["id"]);
        $('#txtEditeName').val(objct["name"]);
        /*  $('#editSlctCat').val(objct["category"]);
        $('#slctEditSubCat').val(objct["subcategory"]);*/
        alert(objct["id"]);
    },

    'click .delete':function(){
        $('#itemDeleteModal').modal('show');
    }
}
