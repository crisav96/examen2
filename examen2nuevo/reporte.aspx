<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reporte.aspx.cs" Inherits="examen2nuevo.reporte" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            font-size: xx-large;
            text-decoration: underline;
        }
        .nuevoEstilo1 {
            font-size: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="auto-style3"><span class="nuevoEstilo1">Reporte</span></h1>
    <br />
    <br />
    <div>
        <span class="auto-style2">
            <!-- Aquí se muestran los resultados del reporte -->
            Cantidad de Encuestas: 
        <asp:Label ID="lblCantidadEncuestas" runat="server" Text="Cantidad de Encuestas:"></asp:Label>
            &nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">Cantidad de usuarios sin carro: </span>
        <asp:Label ID="lblCantidadSinCarroPropio" runat="server" Text="Cantidad sin Carro Propio:" BackColor="#CCFFFF" CssClass="auto-style2"></asp:Label>
    </div>
    <span class="auto-style2">Cantidad de usuarios con carro: 
        <asp:Label ID="lblCantidadConCarroPropio" runat="server" Text="Cantidad con Carro Propio:" BackColor="White"></asp:Label>
    </span>
    <div style="display: flex; justify-content: center;">
        <div style="max-height: 350px; overflow-y: auto; margin-bottom: 50px;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="conexion" Style="margin-top: 73px; margin-bottom: 11px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                    <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                    <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
                    <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                    <asp:BoundField DataField="carro" HeaderText="carro" SortExpression="carro" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="conexion" runat="server" ConnectionString="<%$ ConnectionStrings:examen2ConnectionString %>" ProviderName="<%$ ConnectionStrings:examen2ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [usuario]"></asp:SqlDataSource>
    </div>
</asp:Content>

