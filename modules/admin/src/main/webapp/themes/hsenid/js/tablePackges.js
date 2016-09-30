$(document).ready(function () {

    $('#tblPackages').bootstrapTable({
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
            title: 'Package ID',
            sortable: true
        }, {
            field: 'name',
            title: 'Package Name',
            sortable: true
        },{
            field: 'content',
            title: 'Package Content',
            sortable: true
        },{
            field: 'images',
            title: 'Package Images',
            sortable: true
        }, {
            field: 'price',
            title: 'Package Price',
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
});

function operateFormatter(value, row, index){
    return[
        '<center>',
        '<a class="edit" title="Edit" id="linkEditPkg">',
        '<i class="glyphicon glyphicon-edit">Edit</i>',
        '</a>&nbsp;&nbsp;&nbsp;&nbsp;',
        '<a class="delete" title="Delete" id="linkDeletePkg">',
        '<i class="glyphicon glyphicon-remove">Delete</i>',
        '</a></center>'
    ].join('');
}

window.operateEvents = {

    'click .delete': function () {
        $('#pkgDeleteModal').modal('show');
    },
    'click .edit': function (e, value, row, index) {

        var data = JSON.stringify(row);
        var objct = JSON.parse(data);

        $('#txtEditPkgId').val(objct["id"]);
        $('#txtEditPkgNm').val(objct["name"]);
        /*$('#editPkgCont').val(objct["id"]);*/
        /*$('#imge').val(objct["id"]);*/
        $('#editPkgPrice').val(objct["price"]);

        $('#pkgEditModal').modal('show');
    }
}

