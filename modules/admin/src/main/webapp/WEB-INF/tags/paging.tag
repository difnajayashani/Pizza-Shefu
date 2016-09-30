<%@ tag import="org.springframework.util.StringUtils" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ attribute name="pagedList" required="true"  type="hms.mchoice.rewards.corelogic.bean.paging.PagedList" %>
<%@ attribute name="pageInfo" required="true"  type="hms.mchoice.rewards.corelogic.bean.paging.PageInfo" %>
<%@ attribute name="formName" required="true"  type="java.lang.String" %>
<%@ attribute name="formElementId" required="true"  type="java.lang.String" %>

<div class="pagebarUTH">

<c:if test="${(pageInfo.total > 0) && (pageInfo.batchSize >0)}">
    <c:forEach var="i" begin="0" end="${pageInfo.total/pageInfo.batchSize}" step="1" varStatus ="status">
        <a href="#" onclick="selectPage('${formElementId}', '${formName}', ${i});" id="index" title="Page ${i+1}">${i+1}</a>
    </c:forEach>
</c:if>
</div>

