<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registro.aspx.vb" Inherits="Casa_Sauza.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registro</title>
</head>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="Content/Site.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
        <section class="container text-center">
            <section class="center card">
                <section class="card-header">
                    <h2>Registro</h2>
                </section>
                <section class="card-body alert-primary">
                    <section class="row">
                        <section class="col-5 text-right">
                            Usuario
                        </section>
                        <section class="col-7">
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                        </section>
                    </section>
                    <br />
                    <section class="row">
                        <section class="col-5 text-right">
                            Departamento
                        </section>
                        <section class="col-7">
                            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                <asp:ListItem>Area 1</asp:ListItem>
                                <asp:ListItem>Area 2</asp:ListItem>
                                <asp:ListItem>Area 3</asp:ListItem>
                            </asp:DropDownList>
                        </section>
                    </section>
                    <br />
                    <section class="row">
                        <section class="col-5 text-right">
                            Contraseña
                        </section>
                        <section class="col-7">
                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                        </section>
                    </section>
                </section>
                <section class="card-footer">
                    <section class="row" >
                        <section class="col-6 text-left">
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Login.aspx" CssClass="btn btn-primary">Regresar</asp:LinkButton>
                        </section>
                        <section class="col-6 text-right">
                            <asp:Button ID="Button2" CssClass="btn btn-success" runat="server" Text="Registrar" />
                        </section>
                    </section>
                </section>
            </section>
        </section>
    </form>
</body>
</html>
