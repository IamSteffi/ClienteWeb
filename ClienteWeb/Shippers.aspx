<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Shippers.aspx.cs" Inherits="ClienteWeb.Shippers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <center>
     <h3>Shippers maintenance</h3>
    <p>
        ShippersID: <asp:TextBox runat="server" ID="txtShippersID" />
    </p>
    <p>
        CompanyName: <asp:TextBox runat="server" ID="txtCompanyName" />
    </p>
    <p>
        Phone: <asp:TextBox runat="server" ID="txtPhone" />
    </p>
  
    <p> 
        <asp:Button Text="Agregar" runat="server" Id="btnAgregar" OnClick="btnAgregar_Click" />
        <asp:Button Text="Eliminar" runat="server" Id="btnEliminar" OnClick="btnEliminar_Click" />
        <asp:Button Text="Actualizar" runat="server" Id="btnActualizar" OnClick="btnActualizar_Click" />
    </p>
    
    <p> 
        <asp:GridView runat="server" ID="gvShippers"></asp:GridView>
    </p>
        </center>
</asp:Content>
