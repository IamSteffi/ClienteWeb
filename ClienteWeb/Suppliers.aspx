<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Suppliers.aspx.cs" Inherits="ClienteWeb.Suppliers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <center>
     <h3>Suppliers maintenance</h3>
     <p>
        SupplierID: <asp:TextBox runat="server" ID="txtSupplierID" />
    </p>
    <p>
        CompanyName: <asp:TextBox runat="server" ID="txtCompanyName" />
    </p>
    <p>
        ContactName: <asp:TextBox runat="server" ID="txtContactName" />
    </p>
    <p>
        ContactTitle: <asp:TextBox runat="server" ID="txtContactTitle" />
    </p>
    <p>
        Address: <asp:TextBox runat="server" ID="txtAddress" />
    </p>
    <p>
        City: <asp:TextBox runat="server" ID="txtCity" />
    </p>
    <p>
        Region: <asp:TextBox runat="server" ID="txtRegion" />
    </p>
    <p>
        PostalCode: <asp:TextBox runat="server" ID="txtPostalCode" />
    </p>
    <p>
        Country: <asp:TextBox runat="server" ID="txtCountry" />
    </p>
    <p>
        Phone: <asp:TextBox runat="server" ID="txtPhone" />
    </p>
    <p>
        Fax: <asp:TextBox runat="server" ID="txtFax" />
    </p>
    <p>
        HomePage: <asp:TextBox runat="server" ID="txtHomePage" />
    </p>
    <p> 
        <asp:GridView runat="server" ID="gvSuppliers"></asp:GridView>
    </p>
        </center>
</asp:Content>
