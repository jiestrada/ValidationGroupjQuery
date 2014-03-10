<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Multiple Form Validation</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
    <script type="text/javascript" src="jquery.validation.net.webforms.min.js"></script>
    <script type="text/javascript">
        $(function() {
            $("#aspForm").validateWebForm();
        });
    </script>
    <style type="text/css">
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <form id="aspForm" runat="server">
        <fieldset class="form" id="signup">
            <div class="something">
                <ul></ul>
            </div>
            <legend>Regístrese al boletín de noticias</legend>
            <p>
                <asp:Label ID="uiFirstName" runat="server" AssociatedControlID="uxFirstName" Text="Correo Electrónico:"></asp:Label>
                <asp:TextBox ID="uxFirstName" runat="server" CssClass="required email"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="uxRegister" runat="server" Text="Registrarme" CssClass="submit signup" />
                <asp:Button ID="uxCancelRegister" runat="server" Text="Cancelar" />
            </p>
        </fieldset>
        <fieldset class="form" id="login">
            <legend>Entrar a su cuenta</legend>
            <p>
                <asp:Label ID="uiUserName" runat="server" AssociatedControlID="uxUserName" Text="Correo Electrónico:"></asp:Label>
                <asp:TextBox ID="uxUserName" runat="server" CssClass="required email"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label1" runat="server" AssociatedControlID="uxPassword" Text="Contraseña:"></asp:Label>
                <asp:TextBox ID="uxPassword" runat="server" CssClass="required" TextMode="Password"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="uxLogin" runat="server" Text="Entrar" CssClass="submit login" />
                <asp:Button ID="uxCancelSignUp" runat="server" Text="Cancelar" />
            </p>
        </fieldset>
    </form>
</body>
</html>