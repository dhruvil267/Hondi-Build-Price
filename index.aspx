<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MidTerm.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hondi Build & Price</title>
    <style type="text/css">
        

        .auto-style1 {
            text-align:center;
        }

      

      
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <table>
            <tr>
            <td colspan="2">
                <h3 class="auto-style1">Hondi Build & Price</h3>
            </td>
            </tr>
            <tr style="vertical-align: top" >
                <td width="500px">
                    <asp:Panel BackColor="#42f5e0" ID="CarInfo" runat="server" GroupingText="Car Informations" Height="100%" >
                        <table>
                            <tr>
                                <td width="300px">
                                    <asp:Label ID="lblCity" runat="server" Text="Your City:"></asp:Label>

                                </td>
                                <td width="250px">
                                    <asp:TextBox  ID="txtCity" runat="server" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="300px">
                                    <asp:Label ID="lblZip" runat="server"   Text="Zip Code:"></asp:Label>

                                </td>
                                <td width="250px">
                                    <asp:TextBox  ID="txtZip" runat="server" ></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="300px">
                                    <asp:Label ID="lblModel" runat="server" Text="Select Car Model:"></asp:Label>

                                </td>
                                <td width="350px">
                                    <asp:DropDownList ID="cboModel" runat="server" Width="300px" AutoPostBack="true" OnSelectedIndexChanged="cboModel_SelectedIndexChanged">
                                        <asp:ListItem> Select a Car </asp:ListItem>
                                    </asp:DropDownList>
                                   
                               
                                </td>
                            </tr>
                            <tr>
                                <td width="300px">
                                    <asp:Label ID="lblColor" runat="server" Text="Interior Color:"></asp:Label>

                                </td>
                                <td >
                                    <asp:ListBox ID="lstColor" width="250px"  AutoPostBack="true" runat="server"></asp:ListBox>
                                  
                                </td>
                            </tr>
                            <tr>
                                <td width="300px">
                                    <asp:Label ID="lblAccessories" runat="server" Text="Accessories:"></asp:Label>

                                </td>
                                <td >
                                    <asp:CheckBoxList ID="chklstAccessories" runat="server" AutoPostBack="true"></asp:CheckBoxList>
                                  



                                </td>
                            </tr>
                            <tr>
                                <td width="300px">
                                    <asp:Label ID="lblWarrenty" runat="server" Text="Warrenty:"></asp:Label>

                                </td>
                                <td >
                                    <asp:RadioButtonList ID="rdlstWarrenty" runat="server" AutoPostBack="true"></asp:RadioButtonList>
                                


                                </td>
                            </tr>
                            <tr>
                                <td width="300px">
                                    <asp:Label ID="lblContact" runat="server" Text="Dealer Contact You By Phone?"></asp:Label>

                                </td>
                                <td >

                                    <asp:CheckBox ID="chkContact" runat="server" AutoPostBack="true" OnCheckedChanged="chkContact_CheckedChanged" />

                                </td>
                            </tr>
                            <tr>
                                <td width="300px">
                                    <asp:Label ID="lblContactNo" runat="server" Text="Phone Number:"></asp:Label>

                                </td>
                                <td width="250px">
                                    <asp:TextBox  ID="txtPhone" runat="server" TextMode="Number"></asp:TextBox>
                                </td>
                            </tr>
                            



                        </table>
                    </asp:Panel>


                </td>
                <td >
                    <asp:Panel ID="priceResume" BackColor="#e642f5" runat="server" GroupingText="Price Resume" Height="300px" Width="400px">
                   
                    <asp:Literal ID="litPricing" runat="server"></asp:Literal>
                    <asp:Button ID="btnConclude" runat="server" Text="Conclude" OnClick="btnConclude_Click" />


                    </asp:Panel>
                    <br />
       
                    <asp:Panel ID="finalInfo" BackColor="#51f542" runat="server"  GroupingText="Final Information" Height="100%" Width="400px">
                        <asp:Literal ID="litInfo" runat="server"></asp:Literal>

                    </asp:Panel>

                </td>

            </tr>






        </table>
    </form>
</body>
</html>
