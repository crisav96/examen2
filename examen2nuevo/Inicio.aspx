<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="examen2nuevo.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        font-size: xx-large;
        font-weight: normal;
    }
    .nuevoEstilo1 {
        font-size: 42px;
    }
    .auto-style2 {
        font-size: x-large;
        font-weight: normal;
        text-decoration: underline;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div><h1 class="auto-style2"><strong class="nuevoEstilo1">Inicio</strong></h1></div>
    <br />
    <div><h2>Bienvenido a la Encuesta 2024 </h2></div>
    <br />
   <br />
    <div><h3>Click en Encuesta para llenar los datos </h3></div>
 <br />
    <div>
         <asp:Button ID="Bingresoinicio" runat="server" Text="Encuesta" OnClick="Bingresoinicio_Click" BackColor="#99FF66" BorderColor="Black" BorderStyle="Ridge" ForeColor="Black" Height="50px" style="font-size: large" Width="100px" />
    </div>

</asp:Content>
