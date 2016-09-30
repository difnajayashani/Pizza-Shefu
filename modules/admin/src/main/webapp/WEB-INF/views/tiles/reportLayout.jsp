<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="cache-control" content="max-age=0, no-cache, no-store, must-revalidate"/>
    <link rel="shortcut icon" href="images/favicon.png" type="image/png" />

    <script type="text/javascript">

        function addLoadEvent(func) {
            var oldonload = window.onload;
            if (typeof window.onload != 'function') {
                if(typeof func == 'function'){
                    window.onload = func;
                }else{
                    alert("This is not a function " + func);
                }
            } else {
                window.onload = function() {
                    oldonload();
                    func();
                }
            }
        }

    </script>
    <title> <%out.print("mchoiceRewards");%> </title>
    <%-- <title><%
            if (request.getParameter("page")!=null) {
                out.print(request.getParameter("page"));
            } else {
                out.print("mchoiceRewards");
            } %></title>
    --%>
    <jsp:include page="library.jsp"/>

    <!--[if IE]>
    <style type="text/css">
            /* css for IE 8 */
        #selectionCriteria .inline_block {
            margin: 3px 0 0 0px;
            padding: 0px;
            position: relative;
            float: none

        }

        #selectionCriteria .fixed_width_label {
            width: 90px;
            margin: 0 0 0 0px;
            float: left;
        }

        #selectionCriteria .float_left_style {
            float: none;
        }


        #selectionCriteria .sub_table_cell {
            min-height: 23px;
            float: left;
            padding-left: 0px;

        }

        #selectionCriteria .sub_table_cell1 {
            min-height: 23px;
            float: none;
        }

        .dropdown_box {
            height: 60px;
        }

    </style>
    <![endif]-->
</head>
<body>
<fmt:bundle basename="messages">

    <div class="maincontent" id="custom-doc" align="center">
        <div id="hd" align="center">
            <%--<tiles:insertAttribute name="header" />--%>
        </div>
        <div id="bd" align="center">
            <div id="wrapper">
                    <%-- <div>
                        <tiles:insertAttribute name="menu" />
                    </div>--%>
                <div class="bumperpack">
                    <div class="bw1">
                        <div class="bw2">
                            <div class="bw3">
                                <div class="bw4">
                                    <div class="bw5">
                                        <div class="bw7">
                                            <div id="mask" >

                                            </div>
                                            <tiles:insertAttribute name="container" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer">
            <tiles:insertAttribute name="footer" />
        </div>
    </div>
    <div id="dialog-modal" style="display: none; height: 32px; ">
        <c:url var="loadingImg" value="/themes/${theme}/images/loading.gif"/>
        <img src="${loadingImg}" />
        <label class="label_for_waitbox" style="margin-left: 10px;">Please wait...</label>
    </div>
</fmt:bundle>

<script type="text/javascript">
    //var myMenu;

    //    function loadMainLayOut() {
    //        $("#cm_rule_create").click(function(event){
    //            injectFacebox();
    //            $('#sccf').css('left','300px');
    //        });
    //        myMenu = new SDMenu("my_menu");
    //
    //        myMenu.init();
    //        try {
    //            doStuff();
    //            enableCampaignCreation();
    //        } catch (e) {
    //            alert(e)
    //        }


    //    }
    //    addLoadEvent(loadMainLayOut);

    $(document).ready(function(){
        $("#hd").parent().append($(".bw1 .footer"));
        $('.customerCareTab a').click(function(){this.addClass('selected')})
    });

    $( "#dialog-modal" ).dialog({
        height: 50,
        width:40,
        modal: true ,
        draggable: false,
        resizable: false,
        closeOnEscape:false,
        autoOpen: false
    });

    $(function() {
        $('#bw6 *').tooltip()
        updateTitleForTooltip()
    })

    function updateTitleForTooltip(){
        $('input').each(function(){$(this).attr('title', $(this).val())})
        $('input:checkbox').each(function(){$(this).attr('title', $(this).attr('checked'))})
        $('select').each(function(){$(this).attr('title', $(this).children("option:selected").html())})
    }

    $(document).change(function(){
        updateTitleForTooltip();
    })
</script>
</body>
</html>