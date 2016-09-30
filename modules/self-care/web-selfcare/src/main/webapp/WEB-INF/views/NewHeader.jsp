<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="signupmodal.jsp" %>
<nav class="navbar navbar-default ">
  <div class="container-fluid">
    <div class="col-sm-4"><a href="home"> <img src="<c:url value="/resources/images/logo.png"/>" style="width:75px;height:65px;"></a></div>

    <div style="padding: 10px"></div>
    <div>

    </div>
    <div class="col-sm-8">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="menu"><fmt:message key="new.header.menu" bundle="${lang}"/></a></li>
        <li><a href="locations"><fmt:message key="new.header.location" bundle="${lang}"/></a></li>
        <li><a href="createfeedback"><fmt:message key="new.header.feedback" bundle="${lang}"/></a></li>
        <li><a href="contactus"><fmt:message key="new.header.contact" bundle="${lang}"/></a></li>
        <li><a href="aboutus"><fmt:message key="new.header.about" bundle="${lang}"/></a></li>
        <li>

          <a href="shopping-cart"><img src="<c:url value="/resources/images/shopping-cart.png"/>"
                                            style="padding-left: 30px"></a>
        </li>
        <li>
          <a class="form-group" data-toggle="modal" data-target="#modal-signup"><img
                  src="<c:url value="/resources/images/signup.png"/>" style=""></span>
          </a>
        </li>

        <li>

          <a class="form-group-sm" data-toggle="modal" data-target="#modal-login"><img src="<c:url value="/resources/images/user2.png"/>" style=""></span> </a>

        </li>
      </ul>
    </div>
  </div>

</nav>

<!------------------------------login modal--------------------------->

<div id="modal-login" class="modal fade">
  <div class="modal-dialog modal-lg"  >
    <div class="modal-content" style="width: 750px">

      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" >x</button>
        <p class="modal-title" style="font-size: x-large"><fmt:message key="new.header.login" bundle="${lang}"/></p>
      </div>

      <div class="modal-body" >

          <button>btn</button>
        <form class="contact_form" action="login" method="post" name="contact_form">

          <h1 style="font-size: larger;color: #22ca1f"><fmt:message key="new.header.loginto" bundle="${lang}"/></h1>
            <ul>
                <li>
                    <input type="text" class="textbox1" id="uname" name="username"
                           placeholder="<fmt:message key="signup.username" bundle="${lang}"/>"/>
                    <%--<span class="form_hint"><fmt:message key="new.header.enter.valid" bundle="${lang}"/></span>--%>
                    <label id="tst"></label>
<%--<p></p>--%>
                    <p><img src="<c:url value="/resources/images/contact.png"/>" alt=""></p>
                </li>

                <li>
                    <input type="password" name="password" class="textbox2"
                           placeholder="<fmt:message key="signup.password" bundle="${lang}"/>">
                    <p><img src="<c:url value="/resources/images/lock.png"/>" alt=""></p>
                    <%--<span class="form_hint"><fmt:message key="new.header.enter.valid" bundle="${lang}"/></span>--%>
                </li>
            </ul>
          <input type="submit" name="Sign In" value="<fmt:message key="new.header.login" bundle="${lang}"/>"/>

          <div class="clear"></div>
          <label class="checkbox"><input type="checkbox" name="checkbox" checked><i></i><fmt:message key="new.header.remember" bundle="${lang}"/>
          </label>

          <div class="forgot">
            <a href="forgotpassword"><fmt:message key="new.header.forget" bundle="${lang}"/></a>
          </div>
          <div class="clear"></div>
        </form>


        <!-- end-form -->

        <!-- start-account -->
        <div class="account">
          <div class="row">
            <div class="col-sm-10">
              <h2><a class="form-group-sm" data-toggle="modal" data-target="#modal-signup" data-dismiss="modal"><fmt:message key="new.header.dont.have" bundle="${lang}"/></a></h2>
            </div>

          </div>

          <div class="span"><a href="#"><img src="<c:url value="/resources/images/facebook.png"/>" alt=""/><i><fmt:message key="new.header.facebook" bundle="${lang}"/></i>

            <div class="clear"></div>
          </a></div>
          <div class="span1"><a href="#"><img src="<c:url value="/resources/images/twitter.png"/>" alt=""/><fmt:message key="new.header.twitter" bundle="${lang}"/><i></i>

            <div class="clear"></div>
          </a></div>
          <div class="span2"><a href="#"><img src="<c:url value="/resources/images/gplus.png"/>" alt=""/><i><fmt:message key="new.header.google" bundle="${lang}"/></i>

            <div class="clear"></div>
          </a></div>
        </div>

        <!-- end-account -->
        <div class="clear"></div>

      </div>

    </div>
  </div>
</div>