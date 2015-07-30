<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="assignment_two.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Login</h1>
    <h5>Don't have an account? <a href="register.aspx">Register!</a></h5>

    <div>
        <asp:Label id="lblError" runat="server" CssClass="label label-danger" />
    </div>

     <div class="form-group">
        <label for="txtUsername" class="col-sm-2">Username:</label>
        <asp:TextBox ID="txtUsername" runat="server" MaxLength="30" required />
    </div>

    <div class="form-group">
        <label for="txtPassword" class="col-sm-2">Password:</label>
        <asp:TextBox ID="txtPassword" runat="server" MaxLength="30" TextMode="Password" required />
    </div>

    <div class="col-sm-offset-2">
        <asp:Button ID="btnLogin" Text="Login" runat="server" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
    </div>

</asp:Content>
