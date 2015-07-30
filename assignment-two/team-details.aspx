<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="team-details.aspx.cs" Inherits="assignment_two.team_details" %>

<%@ Register Src="~/auth.ascx" TagPrefix="uc1" TagName="auth" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:auth runat="server" id="auth" />
    <h1>Team Details</h1>
    <h5>All fields are required</h5>
    
    <div class="form-group">
        <label for="txtTeam" class="col-sm-2">Team Name:</label>
        <asp:TextBox ID="txtTeam" runat="server" MaxLength="30" required />
    </div>

    <div class="form-group">
        <label for="txtWins" class="col-sm-2">Wins:</label>
        <asp:TextBox ID="txtWins" runat="server" type="number" required />
        <asp:RangeValidator runat="server" Type="Integer" ControlToValidate="txtWins" CssClass="label label-danger" MinimumValue="0" MaximumValue="162" ErrorMessage="Must be between 0 and 162" />
    </div>

    <div class="form-group">
        <label for="txtLosses" class="col-sm-2">Losses:</label>
        <asp:TextBox ID="txtLosses" runat="server" type="number" required />
        <asp:RangeValidator runat="server" Type="Integer" ControlToValidate="txtLosses" CssClass="label label-danger" MinimumValue="0" MaximumValue="162" ErrorMessage="Must be between 0 and 162" />
    </div>

    <div class="form-group">
        <label for="txtRunsScored" class="col-sm-2">Runs Scored:</label>
        <asp:TextBox ID="txtRunsScored" runat="server" type="number" required />
        <asp:RangeValidator runat="server" Type="Integer" ControlToValidate="txtRunsScored" CssClass="label label-danger" MinimumValue="0" MaximumValue="999999" ErrorMessage="Must be greater than 0" />
    </div>

    <div class="form-group">
        <label for="txtRunsAgainst" class="col-sm-2">Runs Against:</label>
        <asp:TextBox ID="txtRunsAgainst" runat="server" type="number" required />
         <asp:RangeValidator runat="server" Type="Integer" ControlToValidate="txtRunsAgainst" CssClass="label label-danger" MinimumValue="0" MaximumValue="999999" ErrorMessage="Must be greater than 0" />
    </div>

    <div class="form-group">
        <label for="txtExpectedWinPercentage" class="col-sm-2">Expected Win %:</label>
        <asp:TextBox ID="txtExpectedWinPercentage" runat="server" required />
         <asp:RangeValidator runat="server" Type="Double" ControlToValidate="txtExpectedWinPercentage" CssClass="label label-danger" MinimumValue="0" MaximumValue="1.000" ErrorMessage="Must be between 0.000 and 1.000" />
    </div>

    <div class="form-group">
        <label for="txtRelativePowerIndex" class="col-sm-2">Relative Power Index: </label>
        <asp:TextBox ID="txtRelativePowerIndex" runat="server" required />
        <asp:RangeValidator runat="server" Type="Double" ControlToValidate="txtRelativePowerIndex" CssClass="label label-danger" MinimumValue="0" MaximumValue="1.000" ErrorMessage="Must be between 0.000 and 1.000" />
    </div>

     <div class="col-sm-offset-2">
        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click"/>
    </div>


</asp:Content>
