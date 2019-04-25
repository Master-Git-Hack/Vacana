<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="View.aspx.vb" Inherits="Casa_Sauza.View2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container text-center">
        <div class="center">
            <br />
            <h2>Extración</h2>
            <br />
            <div class="alert alert-primary">
                <h4 class="text-left">Báscula</h4>
                <br />
                <div class="row">
                    <div class="col-3">
                        Kg Agave
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <br />
            <div class="alert alert-secondary">
                <h4 class="text-left">Difusor</h4>
                <br />
                <div class="row">
                    <div class="col-3">
                        Porcentaje Agave
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-3">
                        Porcentaje Jugo Crudo
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-3">
                        Porcentaje Bagazo
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-3">
                        Porcentaje Bagazo
                    </div>
                    <div class="col-9">
                        <input type="text" runat="server" class="form-control" id="input1" onchange="val()" name="name" value="" />
                    </div>
                    <script type="text/javascript">
                        function val()
                        {
                            console.log(document.getElementById("input1").value);
                        }
                    </script>
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </div>
            </div>

        </div>
    </div>
</asp:Content>
