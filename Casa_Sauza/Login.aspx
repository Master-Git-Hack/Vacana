<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Casa_Sauza.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="Content/Site.css" rel="stylesheet" />

<body>
    <form id="form1" runat="server">
        <section class="container text-center" >
            <section class="center alert alert-primary" style="border-radius:35px;">
                
                <div class="card">
                    <div class="card-header">
                        <asp:Image ID="Image1" runat="server" CssClass="center rounded-circle" ImageUrl="~/Src/Images/Logo.png" />
                        <h2>Inicio de Sesión</h2>
                    </div>
                    <div class="card-body alert-primary">
                        <asp:Login ID="Login1" runat="server" UserNameLabelText="Usuario:" TitleText="" PasswordLabelText="Contraseña:" LoginButtonText="Iniciar Sesión" CssClass="pos center" RememberMeText="" CreateUserText="Registrar" DisplayRememberMe="False" EnableTheming="False" CreateUserUrl="~/Registro.aspx" PasswordRequiredErrorMessage="La contraseña es requerida" UserNameRequiredErrorMessage="El nombre de usuario es requerido" FailureText="Algo fallo, Intentalo de nuevo!" style="position: relative">
                            <HyperLinkStyle CssClass="btn btn-link pos" />
                            <LabelStyle CssClass="text-primary" />
                            <LoginButtonStyle CssClass="btn btn-success" />
                            <TextBoxStyle CssClass="form-control" />
                            <ValidatorTextStyle CssClass="alert-warning" />
                        </asp:Login>
                    </div>
                </div>
                
                
            </section>
        </section>
    </form>
</body>
</html>
