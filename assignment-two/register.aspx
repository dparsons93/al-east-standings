<%@ Page Title="Register" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="assignment_two.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>User Registration</h1>
    <h5>All fields are required</h5>

    <div class="form-group">
        <label for="txtName" class="col-sm-2">Name:</label>
        <asp:TextBox ID="txtName" runat="server" MaxLength="30" required />
    </div>

    <div class="form-group">
        <label for="txtUsername" class="col-sm-2">Username:</label>
        <asp:TextBox ID="txtUsername" runat="server" MaxLength="30" required />
    </div>

    <div class="form-group">
        <label for="txtPassword" class="col-sm-2">Password:</label>
        <asp:TextBox ID="txtPassword" runat="server" MaxLength="30" TextMode="Password" required />
    </div>

      <div class="form-group">
        <label for="txtConfirm" class="col-sm-2">Confirm Password:</label>
        <asp:TextBox ID="txtConfirm" runat="server" MaxLength="30" TextMode="Password" required />
        <asp:CompareValidator runat="server" ControlToValidate="txtPassword" ControlToCompare="txtConfirm" CssClass="label label-danger" ErrorMessage="Passwords must match" Operator="Equal" />
    </div>

     <div class="col-sm-offset-2">
        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="btnRegister_Click"/>
    </div>



</asp:Content>
