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

    
});

function operateFormatter(value, row, index){
    return[
        '<center>',
        '<a class="edit" href="../pages/editItem.html" title="Edit" id="linkEditItem">',
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

        $('#txtEditID').val(objct["id"]);
        $('#txtEditeName').val(objct["name"]);

    },

    'click .delete':function(){
        $('#itemDeleteModal').modal('show');
    }
}
