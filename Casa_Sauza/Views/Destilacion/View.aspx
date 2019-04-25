<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="View.aspx.vb" Inherits="Casa_Sauza.View1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        
    <div class="container text-center">
        
        <br />
        <div class="card">   
            <div class="card-header">
                <h2>Torre de Destilacion</h2>
                <br />
                <div class="card-header-tabs">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                      <li class="nav-item">
                          <asp:LinkButton CssClass="nav-link" ID="LinkButton1" runat="server">Presión de Vapor</asp:LinkButton>
                      </li>
                        <li class="nav-item">
                            <asp:LinkButton CssClass="nav-link" ID="LinkButton2" runat="server"> Temperatura de Entrada</asp:LinkButton>
                      </li>
                      <li class="nav-item">
                            <asp:LinkButton CssClass="nav-link" ID="LinkButton3" runat="server">Muestra de Vinasa</asp:LinkButton>
                      </li>
          
                      <li class="nav-item">
                            <asp:LinkButton CssClass="nav-link" ID="LinkButton4" runat="server">Consumo de Energia</asp:LinkButton>
                      </li>
                      <li class="nav-item">
                            <asp:LinkButton CssClass="nav-link" ID="LinkButton5" runat="server">Valore Ordinarios</asp:LinkButton>
                      </li>
                      <li class="nav-item">
                            <asp:LinkButton CssClass="nav-link" ID="LinkButton6" runat="server">Mostrar Todo</asp:LinkButton>
                      </li>
                        <li class="nav-item">
                            <asp:LinkButton CssClass="nav-link" ID="LinkButton7" runat="server">Reporte</asp:LinkButton>
                      </li>
                    </ul>
                </div>
            </div>
            <div class="card-body alert-primary">
                <asp:Panel ID="Panel1" runat="server">
                    <div class="center alert alert-secondary">
                            <h4 class="text-left">Toma de Presión de Vapor</h4>
                            <br />
                            <div class="row">
                               <div class="col-md-1 text-right">
                                    Calderas
                               </div>
                               <div class="col-md-5">
                                    <asp:TextBox ID="txt_calderas" CssClass="form-control" runat="server"></asp:TextBox>
                               </div>
                               <div class="col-md-1  text-right">
                                    Operación
                               </div>
                               <div class="col-md-5">
                                     <asp:TextBox ID="txt_operacion" CssClass="form-control" runat="server"></asp:TextBox>
                               </div>
                            </div>
                        </div>
                    <br />
                </asp:Panel>

                 <asp:Panel ID="Panel2" runat="server">
                    <div class="center alert alert-secondary">
                            <h4 class="text-left">Toma de Temperatura de Entrada</h4>
                            <br />
                            <div class="row">
                               <div class="col-md-2  text-right">
                                    Muestra de Entrada
                               </div>
                               <div class="col-md-10">
                                    <asp:TextBox ID="txt_muestra_entrada" CssClass="form-control" runat="server"></asp:TextBox>
                               </div>
                            </div> 
                        </div>
                    <br />
                </asp:Panel>

                <asp:Panel ID="Panel3" runat="server">
                     <div class="center alert alert-secondary">
                        <h4 class="text-left">Toma de Muestra Vinasa</h4>
                        <br />
                        <div class="row">
                           <div class="col-md-2  text-right">
                                Litros
                           </div>
                           <div class="col-md-4">
                                <asp:TextBox ID="txt_litros_vinasa" CssClass="form-control" runat="server"></asp:TextBox>
                           </div>
                           <div class="col-md-2  text-right">
                                Temperatura
                           </div>
                           <div class="col-md-4">
                                <asp:TextBox ID="txt_temp_vinasa" CssClass="form-control" runat="server"></asp:TextBox>
                           </div>
                        </div> 
                   </div>
                   <br />
                </asp:Panel>

                <asp:Panel ID="Panel4" runat="server">
                    <div class="center alert alert-secondary">
                        <h4 class="text-left">Consumo de Energia</h4>
                        <br />
                        <div class="row">
                           <div class="col-md-2  text-right">
                                Energia consumida
                           </div>
                           <div class="col-md-10">
                                <asp:TextBox ID="txt_consumo" CssClass="form-control" runat="server"></asp:TextBox>
                           </div>
                        </div> 
                    </div>
                    <br />
                </asp:Panel>

                <asp:Panel ID="Panel5" runat="server">
                    <div class="center alert alert-secondary">
                        <h4 class="text-left">Valores Ordinarios</h4>
                        <br />
                        <div class="row">
                           <div class="col-md-1  text-right">
                                Litros
                           </div>
                           <div class="col-md-5">
                                <asp:TextBox ID="txt_litros_ord" CssClass="form-control" runat="server"></asp:TextBox>
                           </div>
                            <div class="col-md-1  text-right">
                                Porcentaje
                           </div>
                           <div class="col-md-5">
                                <asp:TextBox ID="txt_por_ord" CssClass="form-control" runat="server"></asp:TextBox>
                           </div>
                        </div> 
                    </div>
                </asp:Panel>

               <asp:Panel ID="Panel6" runat="server">
                    <div class="center alert alert-light">
                        <div class="row">
                            <div class="col-2">
                                Reporte
                            </div>
                            <div class="col-4">
                                <asp:DropDownList ID="ddlPeriodo" CssClass="form-control" runat="server">
                                    <asp:ListItem>Diario</asp:ListItem>
                                    <asp:ListItem>Semanal</asp:ListItem>
                                    <asp:ListItem>Mensual</asp:ListItem>
                                    <asp:ListItem>Anual</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-4">
                                <input type="date" class="form-control" runat="server" id="periodo" name="perido" value="" />
                            </div>
                            <div class="col-2 text-right">
                                <asp:Button ID="btn_reporte" CssClass="btn btn-info" runat="server" Text="Generar" />
                            </div>
                        </div>
                    </div>

                </asp:Panel>

            </div>

            <div class="card-footer">
                <div class="row">
                    <div class="col-6 text-left">
                          <asp:HyperLink ID="Link_Reporte" runat="server"></asp:HyperLink>
                    </div>           
                    <div class="col-6 text-right">
                        <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Guargar" />
                    </div>

                </div>
            </div>
        </div>
    </div>
    <%
        Response.Write(Date.Now.Year & "-0" & Date.Now.Month & "-" & Date.Now.Day)
    %>
</asp:Content>
