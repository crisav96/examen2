<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="encuesta.aspx.cs" Inherits="examen2nuevo.encuesta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .nuevoEstilo1 {
        font-size: 42px;
    }
        .auto-style2 {
            font-size: 42px;
            text-decoration: underline;
        }
        .form-control {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1 class="auto-style2">Encuesta</h1>
    </div>
    <div>
        Nombre:
        <asp:TextBox ID="Tnombre" runat="server" required></asp:TextBox>
        Apellido:
       <asp:TextBox ID="Tapellido" runat="server" required></asp:TextBox>
        <br />
        <br />
        Año de nacimiento:
        <asp:TextBox ID="Tnacimiento" runat="server" TextMode="Date" required></asp:TextBox>
        Edad: 
        <asp:TextBox ID="Tedad" runat="server" TextMode="Number" OnTextChanged="Tedad_TextChanged" required></asp:TextBox>
        <br />
        <asp:Label ID="lblMensajeError1" runat="server" ForeColor="Red" Visible="false"></asp:Label>

        <br />
        <br />
        Correo Electronico:
  <asp:TextBox ID="Tcorreo" runat="server" TextMode="Email" required></asp:TextBox>
        <br />
        <br />      
        <div>
            <label>Carro propio:</label>
            <asp:RadioButtonList ID="RadioButtonListCarroPropio" runat="server" required OnSelectedIndexChanged="RadioButtonListCarroPropio_SelectedIndexChanged ">
                <asp:ListItem Text="Sí" Value="Si"></asp:ListItem> <asp:ListItem Text="No" Value="No"></asp:ListItem>
                
            </asp:RadioButtonList>
        </div>
    </div>
    <div>
    <asp:Label ID="lblMensajeExito" runat="server" Text="" ForeColor="Green"></asp:Label>
</div>
    <br />
    <div>
        <asp:Button ID="Bingresar" runat="server" Text="Ingresar" BackColor="Lime" style="font-weight: 700; font-size: xx-large;" OnClick="Bingresar_Click" />
    </div>
    <div>
</div>
</asp:Content>
