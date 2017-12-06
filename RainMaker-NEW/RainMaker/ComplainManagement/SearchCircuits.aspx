<%@ Page Title="" Language="C#" MasterPageFile="~/MainForms_Site.Master" AutoEventWireup="true" CodeBehind="SearchCircuits.aspx.cs" Inherits="RainMaker.ComplainManagement.SearchCircuits" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        .style1
        {
        width: 150px;
        }
        </style>
   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="container-fluid">
      <div class="row">
         <main class="col-md-offset-3 col-sm-offset-3 col-lg-offset-3 col-sm-9 ml-sm-auto col-md-9 pt-3 customer" role="main">
            <div class="customer">
                <form id="Form1" runat="server">
                <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
    </telerik:RadScriptManager>
                    
                        <div class="row">
                        <div class="col-lg-12"  border-left: thick solid #03828a;
                        height: 30px; margin-top: -3.6em">
                        <h6 tyle="text-align: center; color: Black;">
                        Search Circuits</h6>
                        </div>
                        </div>      


                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
    
        <table class="nav-justified">
            <tr>
                <td>
                    <asp:Button ID="btSearch" runat="server" Text="Search"
                     OnClick="btSearch_Click" SplitButtonPosition="Right"/>
                    <%--<telerik:RadButton ID="btSearch" Text="Search" runat="server" 
                        OnClick="btSearch_Click" SplitButtonPosition="Right">
                    </telerik:RadButton>--%>

                    
                    <asp:Button ID="btMultipleCircuitsComplain" runat="server" Text="Multiple Circuits Complain" Visible = "false"
                    AutoPostBack = "true" onclick="btMultipleCircuitsComplain_Click"></asp:Button>
                    <%--<telerik:RadButton ID="btMultipleCircuitsComplain" runat="server" Visible = "false"
                        Text="Multiple Circuits Complain" AutoPostBack = "true"
                        onclick="btMultipleCircuitsComplain_Click">
                    </telerik:RadButton>--%>
                    
                    <asp:Button ID="btClear" runat="server" Text="Clear" />

                    <%--<telerik:RadButton ID="btClear" Text="Clear" runat="server">
                    </telerik:RadButton>--%>

                    <asp:Button ID="btClose" runat="server" Text="Close" />

                    <%--<telerik:RadButton ID="btClose" Text="Close" runat="server">
                    </telerik:RadButton>--%>
                </td>
            </tr>
            <tr>
                <td bgcolor="#03828A" style="font-family: Calibri; font-weight: bold; color: #45a2e3">
                    Searching Engine
                </td>
            </tr>
            <tr>
                <td>
                    <table class="nav-justified">
                        <tr>
                            <td>
                                <table class="nav-justified" style="border: thin groove #C0C0C0;">
                                    <style scoped>
                                        td
                                        {
                                            width: 150px;
                                        }
                                    </style>
                                    <tr>
                                        <td width="100px">
                                            Complain At
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="cmbComplainAt" runat="server" Width="150px" 
                                                AutoPostBack="True">
                                            </asp:DropDownList>
                                           <%-- <telerik:RadComboBox ID="cmbComplainAt" runat="server" Width="150px" 
                                                AutoPostBack="True">
                                            </telerik:RadComboBox>--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Ticket Type
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="cmbTicketType" runat="server" Width="150px" 
                                                AutoPostBack="True" OnSelectedIndexChanged = "cmbTicketType_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            
                                            <%--<telerik:RadComboBox ID="cmbTicketType" runat="server" Width="150px" 
                                                AutoPostBack="True" OnSelectedIndexChanged = "cmbTicketType_SelectedIndexChanged">
                                            </telerik:RadComboBox>--%>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <asp:Panel ID="pnlSingleSearch" runat="server" Enabled = "true">
                                <table class="nav-justified" style="border: thin groove #C0C0C0;">
                                    <style scoped>
                                        td
                                        {
                                            width: 150px;
                                        }
                                    </style>
                                    <tr>
                                        <td class="style1">
                                            Signup ID
                                        </td>
                                        <td class="style5">
                                            <%--<<%--asp:TextBox ID="tbSignupID" runat="server" Width="150px" 
                                                AutoPostBack="True" OnTextChanged = "btSearch_Click"></asp:TextBox>--%>
                                            <asp:TextBox ID="tbSignupID" runat="server" Width="150px" AutoPostBack="True" OnTextChanged="btSearch_Click" ></asp:TextBox>
                                            <%--<telerik:RadTextBox ID="tbSignupID" runat="server" Width="150px" 
                                                AutoPostBack="True">
                                            </telerik:RadTextBox>--%>
                                        </td>
                                        <td width="150px">
                                            CMSID
                                        </td>
                                        <td width="150px">
                                            <asp:TextBox ID="tbCMSID" runat="server" Width="150px" Text="" OnTextChanged="btSearch_Click"></asp:TextBox>

                                           <%-- <telerik:RadTextBox ID="tbCMSID" runat="server" Width="150px" Text=" ">
                                            </telerik:RadTextBox>--%>
                                        </td>
                                        <td width="150px">
                                            GPID
                                        </td>
                                        <td width="150px">
                                        <asp:TextBox ID="tbGPID" runat="server" Text="" Width="150px" OnTextChanged="btSearch_Click"></asp:TextBox>                                         
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style1">
                                            Customer Name
                                        </td>
                                        <td class="style5" width="200px">
                                            <asp:TextBox ID="tbCustomerName" runat="server" Width="150px" Text=" " OnTextChanged="btSearch_Click"></asp:TextBox>
                                            <%--<telerik:RadTextBox ID="tbCustomerName" runat="server" Width="150px" Text=" ">
                                            </telerik:RadTextBox>--%>
                                        </td>
                                        <td>
                                            
                                            ServiceUnit</td>
                                        <td>
                                            <asp:DropDownList ID="cmbServiceUnit" runat="server" Width="150px">
                                            </asp:DropDownList>
                                            <%--<telerik:RadComboBox ID="cmbServiceUnit" runat="server" Width="150px">
                                            </telerik:RadComboBox>--%>
                                        </td>
                                        <td>
                                            IP Address
                                        </td>
                                        <td>
                                            <asp:TextBox ID="tbIPAddress" runat="server" Width="150px" OnTextChanged="btSearch_Click"></asp:TextBox>
                                            <%--<telerik:RadTextBox ID="tbIPAddress" runat="server" Width="150px">
                                            </telerik:RadTextBox>--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style1">
                                            CPE IP Address
                                        </td>
                                        <td class="style5">
                                            <asp:TextBox ID="tbCPEIPAddress" runat="server" Width="150px" OnTextChanged="btSearch_Click"></asp:TextBox>
                                            <%--<telerik:RadTextBox ID="tbCPEIPAddress" runat="server" Width="150px">
                                            </telerik:RadTextBox>--%>
                                        </td>
                                        <td>
                                            City
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="cmbCity1" runat="server" Width="150px">
                                            </asp:DropDownList>
                                            <%--<telerik:RadComboBox ID="cmbCity1" runat="server" Width="150px">
                                            </telerik:RadComboBox>--%>
                                        </td>
                                        <td>
                                            </td>
                                        <td>
                                            </td>
                                    </tr>
                                </table>
                                </asp:Panel>
                                
                            </td>
                        </tr>
                        <tr>
                            <td>

                                <table class="nav-justified" style="border: thin groove #C0C0C0;">
                                    <style scoped>
                                        td
                                        {
                                            width: 150px;
                                        }
                                    </style>
                                    <tr>
                                        <td width="100px">
                                            Status
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="cmbStatus" runat="server" Width="150px" 
                                                AutoPostBack="True">
                                            </asp:DropDownList>
                                            <%--<telerik:RadComboBox ID="cmbStatus" runat="server" Width="150px" 
                                                AutoPostBack="True">
                                            </telerik:RadComboBox>--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Infra
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="cmbInfra" runat="server" Width="150px" 
                                                AutoPostBack="True">
                                            </asp:DropDownList><%--
                                            <telerik:RadComboBox ID="cmbInfra" runat="server" Width="150px" 
                                                AutoPostBack="True">
                                            </telerik:RadComboBox>--%>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <asp:Panel ID="pnlMultipleSearch" runat="server" Enabled = "false">
                                <table class="nav-justified" style="border: thin groove #C0C0C0;">
                                    <style scoped>
                                        td
                                        {
                                            width: 150px;
                                        }
                                    </style>
                                    <tr>
                                        <td>
                                            Region
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="cmbRegion" runat="server" Width="150px"></asp:DropDownList>
                                            <%--<telerik:RadComboBox ID="cmbRegion" runat="server" Width="150px">
                                            </telerik:RadComboBox>--%>
                                        </td>
                                        <td>
                                            Node
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="cmbNode" runat="server" Width="150px">
                                            </asp:DropDownList>
                                            <%--<telerik:RadComboBox ID="cmbNode" runat="server" Width="150px">
                                            </telerik:RadComboBox>--%>
                                        </td>
                                        <td>
                                            Ring
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="cmbRing" runat="server" Width="150px">
                                            </asp:DropDownList>
                                            <%--<telerik:RadComboBox ID="cmbRing" runat="server" Width="150px">
                                            </telerik:RadComboBox>--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Customer Code
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="cmbCustomerCode" runat="server" Width="150px">
                                            </asp:DropDownList>
                                            <%--<telerik:RadComboBox ID="cmbCustomerCode" runat="server" Width="150px">
                                            </telerik:RadComboBox>--%>
                                        </td>
                                        <td>
                                            City</td>
                                        <td>
                                            <asp:DropDownList ID="cmbCity2" runat="server" Width="150px">
                                            </asp:DropDownList>
                                            <%--<telerik:RadComboBox ID="cmbCity2" runat="server" Width="150px">
                                            </telerik:RadComboBox>--%>
                                        </td>
                                        <td>
                                            </td>
                                        <td>
                                            </td>
                                    </tr>
                                </table>
                                </asp:Panel>
                                
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    Total Count :
                    <asp:Label ID="lblTotalCount" runat="server"></asp:Label>
                </td>
            </tr>

            <tr>
                <td>                    
                    <asp:Label ID="lblAlreadyExist"  runat="server"></asp:Label>
                </td>           
            </tr>
            <tr>
            
            <td>                    
                    <asp:Button ID="btnViewDetails" OnClick="btnviewDetails_Click" runat="server" Text="View Details" />
            </td>
            
            </tr>

            <tr>
                <td>
                    
                </td>
            </tr>
        </table>
        <asp:UpdatePanel ID="UPPanel2" runat="server">
        <ContentTemplate>
        <div class="table-responsive">
                        <telerik:RadGrid ID="gvActiveCircuits" runat="server" AllowPaging="True" AllowSorting="True"
                            GridLines="None" Skin="Office2007" onitemcommand="gvActiveCircuits_ItemCommand" 
                            >
                            <ClientSettings>
                                <Selecting AllowRowSelect="True" />
                                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                            </ClientSettings>
                            <MasterTableView>
                                <CommandItemSettings ExportToPdfText="Export to Pdf" />
                                <Columns>
                                    <telerik:GridButtonColumn CommandName="Complain" HeaderText="Complain" Text="Complain"
                                        UniqueName="column1">
                                    </telerik:GridButtonColumn>
                                    <%--<telerik:GridButtonColumn CommandName="ComplainHistory" HeaderText="ComplainHistory" Text="ComplainHistory"
                                        UniqueName="column2">
                                    </telerik:GridButtonColumn><telerik:GridButtonColumn CommandName="StatusHistory" HeaderText="StatusHistory" Text="StatusHistory"
                                        UniqueName="column3">
                                    </telerik:GridButtonColumn>--%>
                                </Columns>
                            </MasterTableView>
                            <PagerStyle Mode="NextPrev" />
                            <HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Default" EnableImageSprites="True">
                            </HeaderContextMenu>
                        </telerik:RadGrid>
                    </div>
                    </ContentTemplate>
                    </asp:UpdatePanel>
    
    </ContentTemplate>
    </asp:UpdatePanel>


         


                    
                </form>
            </div>
          </main>
        </div>
</div>


</asp:Content>
