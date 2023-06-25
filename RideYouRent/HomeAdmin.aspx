<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeAdmin.aspx.cs" Inherits="RideYouRent.HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ride You Rent</title>
    <link href="css/style1.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" />
    <style type="text/css">
        .auto-style1 {
            height: 47px;
            color: coral;
            font-size: 20px;
            margin-left: 5px;
        }

        .auto-style2 {
            background-image: url(image/bg.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            height: 500px;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .auto-style3 {
            display: inline-block;
            margin: 0;
            width: 1050px;
            font-family: Rockwell, Courier Bold, Courier, Georgia, Times, Times New Roman, serif;
            font-size: 30px;
            color: coral;
            padding-top: 40px;
            padding-bottom: 10px;
            text-align: center;
            height: 74px;
        }

        .btn {
            height: 88px;
            background-color: #3e054f;
            color: #fff;
            border: 1px solid #0062cc;
            font-size: 1rem;
            line-height: 1.5;
            border-radius: 0.25rem;
            display: inline-block;
            font-weight: 400;
            text-align: center;
            vertical-align: middle;
            margin-left: 16px;
        }
        .auto-style4 {
            height: 37px;
            color: coral;
            font-size: 20px;
        }
        .auto-style5 {
            height: 45px;
            color: coral;
            font-size: 20px;
        }
        .auto-style6 {
            margin-bottom: 18px;
        }
        .auto-style7 {
            margin-bottom: 15px;
        }
        .auto-style8 {
            margin-left: 431px;
        }
        .auto-style9 {
            background-image: url(image/cute-purple-aesthetic-abstract-minimal-background.png);
             background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>


<body>
    <form id="form1" runat="server">
        <header>
            <div class="content-wrapper">
                <h1>Ride You Rent</h1>
                <nav>
                    <a href="https://disasteralleviationfoundation1.azurewebsites.net/HomeAdmin.aspx">Home</a>
                    <a href="https://disasteralleviationfoundation1.azurewebsites.net/LogIn.aspx">Log-Out</a>
                    
                   
                </nav>

            </div>


            <div class="auto-style2" style="height: 153px">
                <h2 class="auto-style3">Welcome to Ride You Rent</h2>
      
            </div>
        </header>

        <div class="auto-style9">
<div class="auto-style8">
 <div class="recentlyadded content-wrapper">
                <h2 class="auto-style1">Cars</h2>
                <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataGoods" Height="168px" Width="770px" CellSpacing="2" CssClass="auto-style6" DataKeyNames="CarNo" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="CarNo" HeaderText="CarNo" ReadOnly="True" SortExpression="CarNo" />
                        <asp:BoundField DataField="Car_Make" HeaderText="Car_Make" SortExpression="Car_Make" />
                        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                        <asp:BoundField DataField="Body_Type" HeaderText="Body_Type" SortExpression="Body_Type" />
                        <asp:BoundField DataField="Kilometres_Travelled" HeaderText="Kilometres_Travelled" SortExpression="Kilometres_Travelled" />
                        <asp:BoundField DataField="Service_Travelled" HeaderText="Service_Travelled" SortExpression="Service_Travelled" />
                        <asp:BoundField DataField="Available" HeaderText="Available" SortExpression="Available" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                <asp:SqlDataSource ID="SqlDataGoods" runat="server" ConnectionString="<%$ ConnectionStrings:DBS_VC_CLDV6211_ST10127626ConnectionString %>" SelectCommand="SELECT * FROM ST10127626.Car"></asp:SqlDataSource>
     <asp:Button ID="btnAddCar" class="btn" runat="server" Text="Add Car" Height="59px" Width="146px" OnClick="btnAddCar_Click"  />
                <asp:Button ID="btnDeleteCar" class="btn" runat="server" Text="Delete Car" Height="59px" Width="146px" OnClick="btnDeleteCar_Click"  />
                <asp:Button ID="btnUpdateCar" class="btn" runat="server" Text="Update Car" Height="59px" Width="146px" OnClick="btnUpdateCar_Click"/>

            </div>
            <div class="recentlyadded content-wrapper">
                <h2 class="auto-style1">&nbsp;Driver</h2>
                <asp:GridView ID="GridView4" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Height="168px" Width="770px" CellSpacing="2" CssClass="auto-style6" DataKeyNames="Driver_Name">
                    <Columns>
                        <asp:BoundField DataField="Driver_Name" HeaderText="Driver_Name" SortExpression="Driver_Name" ReadOnly="True" />
                        <asp:BoundField DataField="Driver_Address" HeaderText="Driver_Address" SortExpression="Driver_Address" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DBS_VC_CLDV6211_ST10127626ConnectionString %>" SelectCommand="SELECT * FROM ST10127626.Driver"></asp:SqlDataSource>
                 <asp:Button ID="btnAddDriver" class="btn" runat="server" Text="Add Driver" Height="59px" Width="146px" OnClick="btnAddDriver_Click" />
                <asp:Button ID="btnDeleteDriver" class="btn" runat="server" Text="Delete Driver" Height="59px" Width="146px" OnClick="btnDeleteDriver_Click" />
                <asp:Button ID="btnUpdateDriver" class="btn" runat="server" Text="Update Driver" Height="59px" Width="146px" OnClick="btnUpdateDriver_Click"  />

               
            </div>

           

            <div class="recentlyadded content-wrapper">
                <h2 class="auto-style4">Inspector</h2><asp:GridView ID="GridView3" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceins" Height="148px" Width="560px" CellSpacing="2" CssClass="auto-style7" DataKeyNames="Inspector_Name">
                    <Columns>
                        <asp:BoundField DataField="Inspector_no" HeaderText="Inspector_no" SortExpression="Inspector_no" />
                        <asp:BoundField DataField="Inspector_Name" HeaderText="Inspector_Name" ReadOnly="True" SortExpression="Inspector_Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceins" runat="server" ConnectionString="<%$ ConnectionStrings:DBS_VC_CLDV6211_ST10127626ConnectionString %>" SelectCommand="SELECT * FROM ST10127626.[Inspector]"></asp:SqlDataSource>
                <asp:Button ID="btnAddInspector" class="btn" runat="server" Text="Add Inspector" Height="59px" Width="146px" OnClick="btnAddInspector_Click" />
                <asp:Button ID="btnDeleteInspector" class="btn" runat="server" Text="Delete Inspector" Height="59px" Width="146px" OnClick="btnDeleteInspector_Click"  />
                <asp:Button ID="btnUpdateInspector" class="btn" runat="server" Text="Update Inspector" Height="59px" Width="146px" OnClick="btnUpdateInspector_Click"  />


            </div>
            <div class="recentlyadded content-wrapper">
                <h2 class="auto-style5">Rentals</h2>
<asp:GridView ID="GridView2" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataDisaster" Height="165px" Width="646px" CellSpacing="2" CssClass="auto-style6" DataKeyNames="Rental_ID">
                    <Columns>
                        <asp:BoundField DataField="Rental_ID" HeaderText="Rental_ID" SortExpression="Rental_ID" ReadOnly="True" />
                        <asp:BoundField DataField="CarNo" HeaderText="CarNo" SortExpression="CarNo" />
                        <asp:BoundField DataField="Inspector" HeaderText="Inspector" SortExpression="Inspector" />
                        <asp:BoundField DataField="Driver" HeaderText="Driver" SortExpression="Driver" />
                        <asp:BoundField DataField="Rental_Fee" HeaderText="Rental_Fee" SortExpression="Rental_Fee" />
                        <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                        <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                <asp:SqlDataSource ID="SqlDataDisaster" runat="server" ConnectionString="<%$ ConnectionStrings:DBS_VC_CLDV6211_ST10127626ConnectionString %>" SelectCommand="SELECT * FROM ST10127626.[Rental]"></asp:SqlDataSource>
                <asp:Button ID="btnRental" class="btn" runat="server" Text="Add Rental" Height="59px" Width="146px" OnClick="btnRental_Click" />
                
            </div>

                <div class="recentlyadded content-wrapper">
                <h2 class="auto-style4">Returnals</h2><asp:GridView ID="GridView5" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" Height="148px" Width="560px" CellSpacing="2" CssClass="auto-style7">
                    <Columns>
                        <asp:BoundField DataField="CarNo" HeaderText="CarNo" SortExpression="CarNo" />
                        <asp:BoundField DataField="Inspector" HeaderText="Inspector" SortExpression="Inspector" />
                        <asp:BoundField DataField="Driver" HeaderText="Driver" SortExpression="Driver" />
<asp:BoundField DataField="Return_Date" HeaderText="Return_Date" SortExpression="Return_Date"></asp:BoundField>
                        <asp:BoundField DataField="Elapsed_Date" HeaderText="Elapsed_Date" SortExpression="Elapsed_Date" ReadOnly="True" />
                        <asp:BoundField DataField="Fine" HeaderText="Fine" ReadOnly="True" SortExpression="Fine" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DBS_VC_CLDV6211_ST10127626ConnectionString %>" SelectCommand="SELECT Returnal.CarNo, Returnal.Inspector, Returnal.Driver, Returnal.Return_Date, DATEDIFF(day, Rental.EndDate, Returnal.Return_Date) AS Elapsed_Date, DATEDIFF(day, Rental.EndDate, Returnal.Return_Date) * 500 AS Fine FROM ST10127626.Returnal INNER JOIN ST10127626.Rental ON Returnal.CarNo = Rental.CarNo AND Returnal.Inspector = Rental.Inspector"></asp:SqlDataSource>
                     <asp:Button ID="btnReturnals" class="btn" runat="server" Text="Add Returnals" Height="59px" Width="146px" OnClick="btnReturnals_Click" />
            </div>

        </div>

        </div>
        





        <footer>
            <div class="content-wrapper">
                <p>@2023 Ride You Rent</p>
            </div>
        </footer>



    </form>
</body>
</html>

