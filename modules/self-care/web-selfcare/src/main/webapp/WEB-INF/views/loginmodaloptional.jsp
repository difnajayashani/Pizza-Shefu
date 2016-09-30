
<form class="contact_form" action="#" method="post" name="contact_form">

    <h1 style="font-size: larger;color: #22ca1f"><fmt:message key="new.header.loginto" bundle="${lang}"/></h1>
    <ul>
        <li>
            <input type="text" class="textbox1" name="" placeholder="username" required/>
            <span class="form_hint"><fmt:message key="new.header.enter.valid" bundle="${lang}"/></span>

            <p><img src="<c:url value="/resources/images/contact.png"/>" alt=""></p>
        </li>
        <li>
            <input type="password" name="" class="textbox2" placeholder="password">

            <p><img src="<c:url value="/resources/images/contact.png"/>"></p>
        </li>
    </ul>
    <input type="submit" name="Sign In" value="Log In"/>

    <div class="clear"></div>
    <label class="checkbox"><input type="checkbox" name="checkbox" checked><i></i><fmt:message key="new.header.remember" bundle="${lang}"/></label>

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
    <div class="span1"><a href="#"><img src="<c:url value="/resources/images/twitter.png"/>" alt=""/><i><fmt:message key="new.header.twitter" bundle="${lang}"/></i>

        <div class="clear"></div>
    </a></div>
    <div class="span2"><a href="#"><img src="<c:url value="/resources/images/gplus.png"/>" alt=""/><i><fmt:message key="new.header.google" bundle="${lang}"/></i>
        <div class="clear"></div>
    </a></div>
</div>

<!-- end-account -->
<div class="clear"></div>






