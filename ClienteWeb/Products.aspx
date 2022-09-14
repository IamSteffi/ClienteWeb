<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="ClienteWeb.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <center>
    <h3>Products maintenance</h3>
     <p>
        ProductID: <asp:TextBox runat="server" ID="txtProductID" />
    </p>
    <p>
        ProductName: <asp:TextBox runat="server" ID="txtProductName" />
    </p>
    <p>
        SupplierID: <asp:TextBox runat="server" ID="txtSupplierID" />
    </p>
    <p>
        CategoryID: <asp:TextBox runat="server" ID="txtCategoryID" />
    </p>
    <p>
        QuantityPerUnit: <asp:TextBox runat="server" ID="txtQuantityPerUnit" />
    </p>
    <p>
        UnitPrice: <asp:TextBox runat="server" ID="txtUnitPrice" />
    </p>
    <p>
        UnitsInStock: <asp:TextBox runat="server" ID="txtUnitsInStock" />
    </p>
    <p>
        UnitsOnOrder: <asp:TextBox runat="server" ID="txtUnitsOnOrder" />
    </p>
    <p>
        ReorderLevel: <asp:TextBox runat="server" ID="txtReorderLevel" />
    </p>
    <p>
        Discontinued: <asp:TextBox runat="server" ID="txtDiscontinued" />
    </p>
    <p> 
        <asp:Button Text="Agregar" runat="server" Id="btnAgregar" OnClick="btnAgregar_Click" />
        <asp:Button Text="Eliminar" runat="server" Id="btnEliminar" OnClick="btnEliminar_Click" />
        <asp:Button Text="Actualizar" runat="server" Id="btnActualizar" OnClick="btnActualizar_Click" />
    </p>
    
    <p> 
        <asp:GridView runat="server" ID="gvProducts"></asp:GridView>
    </p>
        </center>
</asp:Content>
