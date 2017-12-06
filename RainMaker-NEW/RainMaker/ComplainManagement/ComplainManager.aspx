<%@ Page Title="" Language="C#" MasterPageFile="~/MainForms_Site.Master" AutoEventWireup="true" CodeBehind="ComplainManager.aspx.cs" Inherits="RainMaker.ComplainManagement.ComplainManager" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
      <div class="row">
         <main class="col-md-offset-3 col-sm-offset-3 col-lg-offset-3 col-sm-9 ml-sm-auto col-md-9 pt-3 customer" role="main">
            <div class="customer">
                <form id="Form1" runat="server">
                <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
    </telerik:RadScriptManager>
    
        <div id="page-wrapper">
        <div class="row">
            <asp:Label ID="Label1" runat="server" Text="View Complain"></asp:Label>
              
    <%--<telerik:RadButton ID="RadButton2" runat="server" Text="Export To Excel" OnClick="btnExportCM_Click">
                    </telerik:RadButton>--%>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    
        <table class="nav-justified" >
            <tr>
                <td>
                    <asp:Button ID="btSearch" runat="server" Text="Search" 
                        onclick="btSearch_Click" AutoPostBack="true" /> 
                        <asp:Button ID="Export_To_Excel" runat="server" Text="Export To Excel" OnClick="btnExportCM_Click"></asp:Button>
                    <%--<telerik:RadButton ID="btSearch" runat="server" Text="Search" 
                        onclick="btSearch_Click" AutoPostBack="true">
                    </telerik:RadButton>--%>
                    <asp:Button ID="btnClear" runat="server" OnClick="btnClearCM_Click" Text="Clear"/>
                    <%--<telerik:RadButton ID="btnClear" runat="server" OnClick="btnClearCM_Click" Text="Clear">
                    </telerik:RadButton>--%>

                    <%--

                    <asp:Button ID="btnSendMessage" runat="server" OnClick="btnSendSMS_Click" Text="Send SMS" Visible="false"/>
                    <%--<telerik:RadButton ID="RadButton3" runat="server" Text="Follow Selection">
                    </telerik:RadButton>
                    <telerik:RadButton ID="RadButton4" runat="server" Text="Unfollow Selection">
                    </telerik:RadButton>
                    <telerik:RadButton ID="RadButton5" runat="server" Text="Close">
                    </telerik:RadButton>--%>
                </td>
                </tr>
            
           <tr>
                <td bgcolor="#45a2e3" font-family=" Calibri"; font-weight="bold"; color="#FFFFFF">
                    Searching Engine
                </td>
           </tr>
    
                <td style="text-decoration: underline">
                    Basic Searching Filters
                </td>
            </tr>
            <tr>
                <td>
                    <table class="nav-justified">
                        <style scoped>
                            td
                            {
                                width: 150px;
                            }
                        </style>
                        <tr>
                            <td>
                                Signup ID
                            </td>
                            <td>
                                <asp:TextBox ID="tbSignupID" runat="server" Width="150px"></asp:TextBox>
                                <%--<telerik:RadTextBox ID="tbSignupID" runat="server" Width="150px">
                                </telerik:RadTextBox>--%>
                            </td>
                            <td>
                                CMS ID
                            </td>
                            <td>
                                <asp:TextBox ID="tbCMSID" runat="server" Width="150px"></asp:TextBox>
                                <%--<telerik:RadTextBox ID="tbCMSID" runat="server" Width="150px">
                                </telerik:RadTextBox>--%>
                            </td>
                            <td>
                                Ticket Type
                            </td>
                            <td>
                                <asp:DropDownList ID="cmbTicketType" runat="server" Width="150px">
                                </asp:DropDownList>
                                <%--<telerik:RadComboBox ID="cmbTicketType" runat="server" Width="150px">
                                </telerik:RadComboBox>--%>
                            </td>
                            <td>
                                Complain Status
                            </td>
                            <td>
                                <asp:DropDownList ID="cmbComplainStatus" runat="server" Width="150px">
                                </asp:DropDownList>
                                <%--<telerik:RadComboBox ID="cmbComplainStatus" runat="server" Width="150px">
                                </telerik:RadComboBox>--%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Ticket Number
                            </td>
                            <td>
                                <asp:TextBox ID="tbTicketNumber" runat="server" Width="150px"></asp:TextBox>
                                <%--<telerik:RadTextBox ID="tbTicketNumber" runat="server" Width="150px">
                                </telerik:RadTextBox>--%>
                            </td>
                            <td>
                                GPID
                            </td>
                            <td>
                                <asp:TextBox ID="tbGPID" runat="server" Width="150px"></asp:TextBox>
                                <%--<telerik:RadTextBox ID="tbGPID" runat="server" Width="150px">
                                </telerik:RadTextBox>--%>
                            </td>
                            <td>
                                Complain Type
                            </td>
                            <td>
                                <asp:DropDownList ID="cmbComplainType" runat="server" Width="150px">
                                </asp:DropDownList>
                                <%--<telerik:RadComboBox ID="cmbComplainType" runat="server" Width="150px">
                                </telerik:RadComboBox>--%>
                            </td>
                            <td>
                                Initial Statement
                            </td>
                            <td>
                                <asp:DropDownList ID="cmbInitialStatement" runat="server" Width="150px">
                                </asp:DropDownList>
                                <%--<telerik:RadComboBox ID="cmbInitialStatement" runat="server" Width="150px">
                                </telerik:RadComboBox>--%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Circuit Owner
                            </td>
                            <td>
                                <asp:DropDownList ID="cmbCircuitOwner" runat="server" Width="150px">
                                </asp:DropDownList>
                                <%--<telerik:RadComboBox ID="cmbCircuitOwner" runat="server" Width="150px">
                                </telerik:RadComboBox>--%>
                            </td>
                            <td>
                                City
                            </td>
                            <td>
                                <asp:DropDownList ID="cmbCity" runat="server" Width="150px">
                                </asp:DropDownList>
                                <%--<telerik:RadComboBox ID="cmbCity" runat="server" Width="150px">
                                </telerik:RadComboBox>--%>
                            </td>
                            <td>
                                Current Department
                            </td>
                            <td>
                                <asp:DropDownList ID="cmbCurrentDepartment" runat="server" Width="150px">
                                </asp:DropDownList><%--
                                <telerik:RadComboBox ID="cmbCurrentDepartment" runat="server" Width="150px">
                                </telerik:RadComboBox>--%>
                            </td>
                            <td>
                                Logged By
                            </td>
                            <td>
                                <asp:DropDownList ID="cmbLoggedBy" runat="server" Width="150px">
                                </asp:DropDownList>
                                <%--<telerik:RadComboBox ID="cmbLoggedBy" runat="server" Width="150px">
                                </telerik:RadComboBox>--%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Reported Via
                            </td>
                            <td>
                                <asp:DropDownList ID="cmbReportedVia" runat="server" Width="150px">
                                </asp:DropDownList>
                                <%--<telerik:RadComboBox ID="cmbReportedVia" runat="server" Width="150px">
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
                                Problem Diagnosed At
                            </td>
                            <td>
                                <asp:DropDownList ID="cmbProblemDiagnosedAt" runat="server" Width="150px">
                                </asp:DropDownList>
                                <%--<telerik:RadComboBox ID="cmbProblemDiagnosedAt" runat="server" Width="150px">
                                </telerik:RadComboBox>--%>
                            </td>
                            <td>
                                Case Category
                            </td>
                            <td>
                                <asp:DropDownList ID="cmbCaseCategory" runat="server" Width="150px">
                                </asp:DropDownList>
                                <%--<telerik:RadComboBox ID="cmbCaseCategory" runat="server" Width="150px">
                                </telerik:RadComboBox>--%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                From Date
                            </td>
                            <td>
                                <telerik:RadDatePicker ID="dtFromDate" Runat="server" MinDate="1900-01-01" 
                                    SelectedDate="1900-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x"></Calendar>

<DateInput DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" SelectedDate="1900-01-01"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
                                </telerik:RadDatePicker>
                            </td>
                            <td>
                                To Date
                            </td>
                            <td>
                                <telerik:RadDatePicker ID="dtToDate" Runat="server" MinDate="1900-01-01" 
                                    SelectedDate="1900-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x"></Calendar>

<DateInput DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" SelectedDate="1900-01-01"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
                                </telerik:RadDatePicker>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="nav-justified">
                        <tr>
                            <td width="150px">
                                Circuit Name
                            </td>
                            <td>
                                <asp:TextBox ID="tbCircuitName" runat="server" Width="450px"></asp:TextBox>
                                <%--<telerik:RadTextBox ID="tbCircuitName" runat="server" Width="450px">
                                </telerik:RadTextBox>--%>
                            </td>
                            <td width="150px">
                                Reason of Outage
                            </td>
                            <td>
                                <asp:DropDownList ID="cmbReasonofOutage" runat="server" Width="450px">
                                </asp:DropDownList>
                                <%--<telerik:RadComboBox ID="cmbReasonofOutage" runat="server" Width="450px">
                                </telerik:RadComboBox>--%>
                            </td>
                        </tr>
                        <tr>
                            <td width="150px">
                                Customer Code
                            </td>
                            <td>
                                <asp:DropDownList ID="cmbCustomerCode" runat="server" Width="450px">
                                </asp:DropDownList>
                                <%--<telerik:RadComboBox ID="cmbCustomerCode" runat="server" Width="450px">
                                </telerik:RadComboBox>--%>
                            </td>
                            <td width="150px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="text-decoration: underline">
                    History Searching Filters
                </td>
            </tr>
            <tr>
                <td>
                    <table class="nav-justified">
                        <style scoped>
                            td
                            {
                                width: 150px;
                            }
                        </style>
                        <tr>
                            <td width="150px">
                                Forward By Department
                            </td>
                            <td>
                                <asp:DropDownList ID="cmbForwardByDepartment" runat="server" Width="150px">
                                </asp:DropDownList>
                                <%--<telerik:RadComboBox ID="cmbForwardByDepartment" runat="server" Width="150px">
                                </telerik:RadComboBox>--%>
                            </td>
                            <td>
                                Forward To Department
                            </td>
                            <td>
                                <asp:DropDownList ID="cmbForwardToDepartment" runat="server" Width="150px">
                                </asp:DropDownList>
                                <%--<telerik:RadComboBox ID="cmbForwardToDepartment" runat="server" Width="150px">
                                </telerik:RadComboBox>--%>
                            </td>
                            <td>
                                Forward Status
                            </td>
                            <td>
                                <asp:DropDownList ID="cmbForwardStatus" runat="server" Width="150px">
                                </asp:DropDownList>
                                <%--<telerik:RadComboBox ID="cmbForwardStatus" runat="server" Width="150px">
                                </telerik:RadComboBox>--%>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <asp:Panel ID="Pnl_SMS" runat="server" Visible="false">
            <tr>
                <td bgcolor="#03828A" style="font-family: Calibri; font-weight: bold; color: #FFFFFF">
                    SMS/Email
                </td>
            </tr>

            <tr>
                <td>
                    <asp:CheckBox ID="chkIsSms" runat="server" Text="Is SMS" />
                    <asp:CheckBox ID="chkIsEmail" runat="server" Text="Is Email"/><%--
                    <asp:CheckBox ID="chkIsSms" runat="server" Text="Is SMS" />
                    <asp:CheckBox ID="chkIsEmail" runat="server" Text="Is Email" />--%>
                </td>
            </tr>
            
            
            
            <tr>
                <asp:TextBox ID="tbRemarks" runat="server" TextMode="MultiLine" Width="500px" Height="100px"></asp:TextBox>
            <td>Sms 
            <%--<telerik:RadTextBox ID="tbRemarks" runat="server" TextMode="MultiLine" Width="500px" Height="100px" >
                                </telerik:RadTextBox>--%> 
                                </td>
            
            
            </tr>           
            
            </asp:Panel>


            <tr>
                <td bgcolor="#45a2e3" style="font-family="Calibri"; font-weight="bold"; color="#FFFFFF">
                    Complain Details
                </td>
            </tr>
            <tr>
                <td>
                    <table class="nav-justified">
                        <tr>
                            <td width="150px">
                                Total Count:
                                <asp:Label ID="lblTotalCount" runat="server" Text=""></asp:Label>
                            </td>
                            <td >
                                <asp:CheckBox ID="cbQCFormat" runat="server" Text="QC Format" />
                                <asp:CheckBox ID="cbSDFormat" runat="server" Text="SD Format" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    <div class="table-responsive">
                        <telerik:RadGrid ID="gvComplainCircuits" runat="server"  AllowSorting="True"
                            GridLines="None" Skin="Office2007" onitemcommand="gvComplainCircuits_ItemCommand">
                            <ClientSettings>
                                <Selecting AllowRowSelect="True" />
                                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                            </ClientSettings>
                            <MasterTableView>
                                <CommandItemSettings ExportToPdfText="Export to Pdf" />
                                <Columns>
                                <telerik:GridTemplateColumn>
                        <ItemTemplate>
                            <asp:CheckBox ID="cb_Select" runat="server" ClientIDMode="AutoID"></asp:CheckBox>
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
                                    <telerik:GridButtonColumn CommandName="Follow Up" HeaderText="Follow Up" Text="Follow Up"
                                        UniqueName="colfollow">
                                    </telerik:GridButtonColumn>
                                    <telerik:GridButtonColumn CommandName="Solving" HeaderText="Solving" Text="Solving"
                                        UniqueName="colsolve">
                                    </telerik:GridButtonColumn>

                                    <telerik:GridButtonColumn CommandName="Ticket No" HeaderText="TicketNo" Text="TicketNo"
                                        UniqueName="colTicketNo" DataTextField="TicketNo">
                                    </telerik:GridButtonColumn>

                                    <telerik:GridButtonColumn CommandName="Complain Closure" 
                                        HeaderText="Complain Closure" Text="Complain Closure"
                                        UniqueName="ComplainClosuer">
                                    </telerik:GridButtonColumn>
                                    <telerik:GridButtonColumn CommandName="View History" HeaderText="View History" Text="View History"
                                        UniqueName="colViewHistory">
                                    </telerik:GridButtonColumn>
                                    <telerik:GridButtonColumn CommandName="Follow History" HeaderText="Follow History" Text="Follow History"
                                        UniqueName="col_followHis">
                                    </telerik:GridButtonColumn>
                                </Columns>
                            </MasterTableView>                            
                            <PagerStyle Mode="NextPrev" />
                            <HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Default" EnableImageSprites="True">
                            </HeaderContextMenu>
                        </telerik:RadGrid>
                    </div>
    
    </ContentTemplate>
    </asp:UpdatePanel>
    </div>
                </form>
            </div>
          </main>
        </div>
</div>
</asp:Content>
