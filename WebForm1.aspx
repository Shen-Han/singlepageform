<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="singlePageForm.WebForm1" %>

<!DOCTYPE html>
<link href="Content/bootstrap.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href ="stylesheet1.css" rel =" stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>

    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1301px;
            height: 737px;
        }
        .auto-style3 {
            width: 279px;
        }
        .auto-style4 {
            width: 279px;
            height: 19px;
        }
        .auto-style5 {
            height: 19px;
        }
    </style>
</head>
<body>
    <div class="form-group"><label for="email">Email:</label><input type="email" class="form-control"id="email" /></div><div class="form-group"><label for="pwd">Password:</label><input type="password" class="form-control"id="pwd" /></div>

    <form id="form1" runat="server">
        <p><img alt="" class="auto-style1" src="images/Capture.PNG" /></p>
        <table class="table table-striped">
            <tr>
                <td class="auto-style3">Monthly Investment</td>
                <td>
                    <asp:DropDownList ID="investmentDropDown" runat="server" Font-Bold="False" Height="34px" Width="256px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Annual Interest Rate</td>
                <td>
                    <asp:TextBox ID="interestRateInput" runat="server" Height="21px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="interestRateInput" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">The Annual Interest is required</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" Display="Dynamic" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="50" MinimumValue="0" Type="Double" ControlToValidate="interestRateInput">Enter a decimal value between 0 and 50</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Number of Years</td>
                <td>
                    <asp:TextBox ID="yearsInput" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="yearsInput" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0066">The next of years is required</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" Display="Dynamic" ErrorMessage="RangeValidator" MaximumValue="25" MinimumValue="1" Type="Double" ControlToValidate="yearsInput">Enter a value between 1 and 25</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Future Value</td>
                <td>
                    <asp:Label ID="futureValueLabel" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="calculateButton" runat="server" OnClick="calculateButton_Click" Text="Calculate" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="clearButton" runat="server" Text="Clear" OnClick="clearButton_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    
</body>
</html>
