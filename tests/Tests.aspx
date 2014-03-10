﻿
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Multiple Form Validation Tests</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
    <script type="text/javascript" src="../jquery.validation.net.webforms.min.js"></script>
    <link  type="text/css" rel="stylesheet" href="http://code.jquery.com/qunit/qunit-git.css" />
    <script type="text/javascript" src="http://code.jquery.com/qunit/qunit-git.js"></script>
    <script type="text/javascript" src="jquery.validation.net.webforms.tests.js"></script>
</head>
<body>
    <div id="qunit"></div>
    <div id="qunit-fixture"></div>
    <form id="aspForm" runat="server">
        <fieldset class="form" id="signup">
        <div class="uiValidationSummary">
            <ul></ul>
        </div>
        <legend>Sign Up</legend>
        <p>
            <asp:Label ID="uiFirstName" runat="server" AssociatedControlID="uxFirstName" Text="First name:"></asp:Label>
            <asp:TextBox ID="uxFirstName" runat="server" CssClass="required"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="uxRegister" runat="server" Text="Sign Up" CssClass="signup submit" />
            <asp:Button ID="uxCancelRegister" runat="server" Text="Cancel" />
        </p>
    </fieldset>
    <fieldset class="form" id="login">
        <legend>Login</legend>
        <p>
            <asp:Label ID="uiUserName" runat="server" AssociatedControlID="uxUserName" Text="User name:"></asp:Label>
            <asp:TextBox ID="uxUserName" runat="server" CssClass="required email"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="uxLogin" runat="server" Text="Login" CssClass="submit login" />
            <asp:Button ID="uxCancelSignUp" runat="server" Text="Cancel" />
        </p>
    </fieldset>
    </form>
</body>
</html>