<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="standings.aspx.cs" Inherits="assignment_two.standings" %>

<%@ Register Src="~/auth.ascx" TagPrefix="uc1" TagName="auth" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:auth runat="server" id="auth" />
    <h1>AL East Standings</h1>

     <a href="team-details.aspx">Add Team</a>

    <asp:GridView runat="server" ID="grdTeams" CssClass="table table-striped table-hover" OnRowDeleting="grdTeams_RowDeleting" AutoGenerateColumns="false" DataKeyNames="TeamID">
        <Columns>
            <asp:BoundField DataField="TeamID" HeaderText="ID" Visible="false" />
            <asp:BoundField DataField="TeamName" HeaderText="Team" />
            <asp:BoundField DataField="Wins" HeaderText="Wins" />
            <asp:BoundField DataField="Losses" HeaderText="Losses" />
            <asp:BoundField DataField="RunsScored" HeaderText="Runs Scored" />
            <asp:BoundField DataField="RunsAgainst" HeaderText="Runs Against" />
            <asp:BoundField DataField="ExpectedWinningPercentage" HeaderText="Expected Win %" />
            <asp:BoundField DataField="RelativePowerIndex" HeaderText="Relative Power Index" />
            <asp:HyperLinkField HeaderText="Edit" Text="Edit" DataNavigateUrlFields="TeamID" DataNavigateUrlFormatString="team-details.aspx?TeamID={0}" />
            <asp:CommandField ShowDeleteButton="true" DeleteText="Delete" HeaderText="Delete" />
        </Columns>
    </asp:GridView>

</asp:Content>
