$(document).ready(function () {

    $('#tableStaff').bootstrapTable({

        url: '../js/customer.json',
        height: 350,
        pagination: true,
        pageSize: 8,
        clickToSelect: true,
        singleSelect: true,
        minimumCountColumns: 3,
        columns: [{
            //field: 'id',
            field:'ID',
            title: 'ID :',
            sortable: true,
            align:'left'
        },{
            field: 'Username',
            title: 'Username :',
            sortable: true,
            align:'left',
            searchable:true
        }, {
            field: 'f_name',
            title: 'First Name :',
            align:'left',
            sortable: true
        }, {
            field: 'l_name',
            title: 'Last Name :',
            align:'left',
            sortable: true
        }, {
            field: 'mobile',
            title: 'Phone No :',
            align:'left'
        }, {
            field: 'designation',
            title: 'Designation :',
            align:'left'
        },  {
            field: 'Options',
            title: 'Operations :',
            align: 'center',
            formatter: operateFormatter2,
            events: operateEvents2
        }]
    });
});

function operateFormatter2(value, row, index) {
    return [
        '<a class="likes" href="../pages/userStaff_edit.html" title="LikeStaff" >',
        '<i class="glyphicon glyphicon-edit">Edit</i>',
        '</a>  ',
        '<a class="remove" href="javascript:void(0)" title="Delete">',
        '<i class="glyphicon glyphicon-remove">Block</i>',
        '</a>'
    ].join('');
}

window.operateEvents2 = {
      'click .remove': function () {
        $('#removeStaffModal').modal({show:true});

        //alert('You click remove action, row: ');

    }
}