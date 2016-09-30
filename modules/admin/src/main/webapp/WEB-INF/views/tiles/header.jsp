<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<jsp:directive.page contentType="text/html;charset=windows-1252"/>
<jsp:directive.page import="java.util.Date"/>
<jsp:directive.page import="java.text.SimpleDateFormat"/>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.userdetails.User" %>

<fmt:bundle basename="messages">
<div class="maincontent" id="wrapper">
<script type="text/javascript">
    var count = 0;
    function logoutConfirm(url) {
        window.location.replace(url);
    }
</script>
<div class="topnav">
    <div class="logo">
        <a href="/customercare"> <img src="<c:url value="/themes/${theme}/images/logo-rewards.png" />" alt=""
                                      width="114"/> </a>
        <img src="<c:url value="/themes/${theme}/images/company-logo.png" />" alt="" width="50" height="50"/>

    </div>
        <%-- <div class="quicklinks">
            <ul>
                <%
                    if (request.getParameter("page")!=null) {
                        out.print("<li><a href=\"\">" + request.getParameter("page") + "</a></li>");
                    } %>
                 <%
                    if (request.getParameter("subPage")!=null) {
                        out.print("<li><a href=\"\">" + request.getParameter("subPage") + "</a></li>");
                    } %>
            </ul>
        </div>--%>
    <div class="top-right"><fmt:message key="header.username"/><authz:authentication
            property="principal.username"/>
        <%
            User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            out.print(user.getUsername());
        %> <a
                href="/campaign-management">Campaign Management</a> | <a
                href="/admin">Admin</a> | <a
                href="/viewer">Reporting</a> | <a
                href="<c:url value="/j_spring_security_logout" />">Logout</a> <br/>
        <jsp:useBean id="now" class="java.util.Date"/>
        <div id="cTime"> <fmt:formatDate value="${now}" pattern="EEEE, dd/MM/yyyy"/>  </div>

    </div>
</div>
<sec:authorize
        ifAnyGranted="ROLE_SMS_NOTIFICATION_REPORT,ROLE_SUBSCRIBER_VIEW_REPORT,ROLE_SUBSCRIBER_QUERY_REPORT,ROLE_CAMPAIGN_WINNER_REPORT,ROLE_PIN_USAGE_REPORT,ROLE_CUSTOMER_CARE_VIEW">
<div class="customerCareTabs">

<div id="smsTab" class="customerCareTab ">
    <% String navi1 = request.getParameter("navi");
        if (navi1 != null && navi1.equals("1")) {
    %> <sec:authorize ifAnyGranted="ROLE_SMS_NOTIFICATION_REPORT">
    <a class="selected" tabindex="-1"
       href="<c:url value="/reports/smsNotification.html?page=SMS Notification Based Reports&navi=1" />"><fmt:message
            key="side.menu.reports.sms.notification"/></a>
    <script>
        count++;
    </script>
</sec:authorize>
    <sec:authorize ifNotGranted="ROLE_SMS_NOTIFICATION_REPORT">
        <script>
            $('#smsTab').css({'display': 'none'});
        </script>
    </sec:authorize> <%
} else {%>
    <sec:authorize ifAnyGranted="ROLE_SMS_NOTIFICATION_REPORT">
        <a class="notSelected" tabindex="-1"
           href="<c:url value="/reports/smsNotification.html?page=SMS Notification Based Reports&navi=1" />"><fmt:message
                key="side.menu.reports.sms.notification"/></a>
        <script>
            count++;
        </script>
    </sec:authorize>
    <sec:authorize ifNotGranted="ROLE_SMS_NOTIFICATION_REPORT">
        <script>
            $('#smsTab').css({'display': 'none'});
        </script>
    </sec:authorize> <%
    }
%>
</div>
<div class="panel"></div>
<div id="subscriberTab" class="customerCareTab ">
    <% String navi2 = request.getParameter("navi");
        if (navi2 != null && navi2.equals("2")) {
    %> <sec:authorize ifAnyGranted="ROLE_SUBSCRIBER_VIEW_REPORT">
    <a class="selected" tabindex="-1"
       href="<c:url value="/reports/subscriberView.html?page=Subscriber View&navi=2"/>"><fmt:message
            key="side.menu.reports.subscriber.view"/></a>
    <script>
        count++;
    </script>
</sec:authorize>
    <sec:authorize ifNotGranted="ROLE_SUBSCRIBER_VIEW_REPORT">
        <script>
            $('#subscriberTab').css({'display': 'none'});
        </script>
    </sec:authorize> <%
} else {%>
    <sec:authorize ifAnyGranted="ROLE_SUBSCRIBER_VIEW_REPORT">
        <a class="notSelected" tabindex="-1"
           href="<c:url value="/reports/subscriberView.html?page=Subscriber View&navi=2"/>"><fmt:message
                key="side.menu.reports.subscriber.view"/></a>
        <script>
            count++;
        </script>
    </sec:authorize>
    <sec:authorize ifNotGranted="ROLE_SUBSCRIBER_VIEW_REPORT">
        <script>
            $('#subscriberTab').css({'display': 'none'});
        </script>
    </sec:authorize> <%
    }
%>
</div>
<div class="panel"></div>
<div id="queryTab" class="customerCareTab ">
    <% String navi3 = request.getParameter("navi");
        if (navi3 != null && navi3.equals("3")) {
    %> <sec:authorize ifAnyGranted="ROLE_SUBSCRIBER_QUERY_REPORT">
    <a class="selected" tabindex="-1"
       href="<c:url value="/reports/customerCare.html?page=Subscriber Query&navi=3" />"><fmt:message
            key="side.menu.reports.subscriber.query"/></a>
    <script>
        count++;
    </script>
</sec:authorize>
    <sec:authorize ifNotGranted="ROLE_SUBSCRIBER_QUERY_REPORT">
        <script>
            $('#queryTab').css({'display': 'none'});
        </script>
    </sec:authorize><%
} else {%>
    <sec:authorize ifAnyGranted="ROLE_SUBSCRIBER_QUERY_REPORT">
        <a class="notSelected" tabindex="-1"
           href="<c:url value="/reports/customerCare.html?page=Subscriber Query&navi=3" />"><fmt:message
                key="side.menu.reports.subscriber.query"/></a>
        <script>
            count++;
        </script>
    </sec:authorize>
    <sec:authorize ifNotGranted="ROLE_SUBSCRIBER_QUERY_REPORT">
        <script>
            $('#queryTab').css({'display': 'none'});
        </script>
    </sec:authorize><%
    }
%>
</div>
<div class="panel"></div>
<div id="winnerTab" class="customerCareTab ">
    <% String navi4 = request.getParameter("navi");
        if (navi4 != null && navi4.equals("4")) {
    %> <sec:authorize ifAnyGranted="ROLE_CAMPAIGN_WINNER_REPORT">
    <a class="selected" tabindex="-1"
       href="<c:url value="/reports/campaignWinners.html?page=Campaign Winners&navi=4" />"><fmt:message
            key="side.menu.reports.campaign.winners"/></a>
    <script>
        count++;
    </script>
</sec:authorize>
    <sec:authorize ifNotGranted="ROLE_CAMPAIGN_WINNER_REPORT">
        <script>
            $('#winnerTab').css({'display': 'none'});
        </script>
    </sec:authorize><%
} else {%>
    <sec:authorize ifAnyGranted="ROLE_CAMPAIGN_WINNER_REPORT">
        <a class="notSelected" tabindex="-1"
           href="<c:url value="/reports/campaignWinners.html?page=Campaign Winners&navi=4" />"><fmt:message
                key="side.menu.reports.campaign.winners"/></a>
        <script>
            count++;
        </script>
    </sec:authorize>
    <sec:authorize ifNotGranted="ROLE_CAMPAIGN_WINNER_REPORT">
        <script>
            $('#winnerTab').css({'display': 'none'});
        </script>
    </sec:authorize><%
    }
%>
</div>
<div class="panel"></div>
<div id="pinTab" class="customerCareTab ">
    <% String navi5 = request.getParameter("navi");
        if (navi5 != null && navi5.equals("5")) {
    %> <sec:authorize ifAnyGranted="ROLE_PIN_USAGE_REPORT">
    <a class="selected" tabindex="-1"
       href="<c:url value="/reports/pinUsage.html?page=PIN Usage Report&navi=5" />"><fmt:message
            key="side.menu.reports.pin.usage"/></a>
    <script>
        count++;
    </script>
</sec:authorize>
    <sec:authorize ifNotGranted="ROLE_PIN_USAGE_REPORT">
        <script>
            $('#pinTab').css({'display': 'none'});
        </script>
    </sec:authorize><%
} else {%>
    <sec:authorize ifAnyGranted="ROLE_PIN_USAGE_REPORT">
        <a class="notSelected" tabindex="-1"
           href="<c:url value="/reports/pinUsage.html?page=PIN Usage Report&navi=5" />"><fmt:message
                key="side.menu.reports.pin.usage"/></a>
        <script>
            count++;
        </script>
    </sec:authorize>
    <sec:authorize ifNotGranted="ROLE_PIN_USAGE_REPORT">
        <script>
            $('#pinTab').css({'display': 'none'});
        </script>
    </sec:authorize><%
    }
%>
</div>
<div class="panel"></div>
<div id="custViewTab" class="customerCareTab ">
    <% String navi6 = request.getParameter("navi");
        if (navi6 != null && navi6.equals("6")) {
    %> <sec:authorize ifAnyGranted="ROLE_CUSTOMER_CARE_VIEW">
    <a class="selected" tabindex="-1"
       href="<c:url value="/reports/customerCareView.html?page=Customer Care View&navi=6" />"><fmt:message
            key="side.menu.reports.customer.care"/></a>
    <script>
        count++;
    </script>
</sec:authorize>
    <sec:authorize ifNotGranted="ROLE_CUSTOMER_CARE_VIEW">
        <script>
            $('#custViewTab').css({'display': 'none'});
        </script>
    </sec:authorize><%
} else {%>
    <sec:authorize ifAnyGranted="ROLE_CUSTOMER_CARE_VIEW">
        <a class="notSelected" tabindex="-1"
           href="<c:url value="/reports/customerCareView.html?page=Customer Care View&navi=6" />"><fmt:message
                key="side.menu.reports.customer.care"/></a>
        <script>
            count++;
        </script>
    </sec:authorize>
    <sec:authorize ifNotGranted="ROLE_CUSTOMER_CARE_VIEW">
        <script>
            $('#cuctViewTab').css({'display': 'none'});
        </script>
    </sec:authorize><%
    }
%>
</div>
<div class="panel"></div>
<div id="adminTab" class="customerCareTab ">
    <%
        String navi7 = request.getParameter("navi");
        if (navi7 != null && navi7.equals("7")) {
    %>
    <sec:authorize ifAnyGranted="ROLE_ADMIN_REPORTS">
        <a class="selected" tabindex="-1"
           href="<c:url value="/reports/adminReports.html?page=Admin Reports&navi=7" />">
            <fmt:message key="side.menu.reports.admin.reports"/>
        </a>
        <script>
            count++;
        </script>
    </sec:authorize>
    <sec:authorize ifNotGranted="ROLE_ADMIN_REPORTS">
        <script>
            $('#adminTab').css({'display': 'none'});
        </script>
    </sec:authorize>
    <%
    } else {
    %>
    <sec:authorize ifAnyGranted="ROLE_ADMIN_REPORTS">
        <a class="notSelected" tabindex="-1"
           href="<c:url value="/reports/adminReports.html?page=Admin Reports&navi=7" />">
            <fmt:message key="side.menu.reports.admin.reports"/>
        </a>
        <script>
            count++;
        </script>
    </sec:authorize>
    <sec:authorize ifNotGranted="ROLE_ADMIN_REPORTS">
        <script>
            $('#adminTab').css({'display': 'none'});
        </script>
    </sec:authorize>
    <%
        }
    %>
</div>
<script>
    $('.customerCareTab').css({'width': (100 / count) - 0.1 + '%'});
</script>
</div>
</sec:authorize>


</div>
</fmt:bundle>
<script type="text/javascript">
    function startTime()
    {
        var today=new Date();
        var d=today.getDate();
        var mn=today.getMonth()+1;
        var y=today.getFullYear();
        var h=today.getHours();
        var m=today.getMinutes();
        var s=today.getSeconds();

        m=checkTime(m);
        s=checkTime(s);
        document.getElementById('cTime').innerHTML=d+"/"+mn+"/"+y+" "+h+":"+m+":"+s;
        t=setTimeout(function(){startTime()},500);
    }

    function checkTime(i)
    {
        if (i<10)
        {
            i="0" + i;
        }
        return i;
    }
    startTime();
</script>