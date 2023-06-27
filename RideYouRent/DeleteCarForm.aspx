<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteCarForm.aspx.cs" Inherits="RideYouRent.DeleteCarForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Register New Account</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/StyleSheet1.css">
    <link rel="stylesheet" href="css/style1.css">
    <style type="text/css">
        
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

        .auto-style8 {
            margin-left: 431px;
        }

        </style>
</head>
<body>
    <header>
        <div class="content-wrapper">
            <h1>Disaster Alleviation Foundation</h1>
              <nav>
                    <a href="https://disasteralleviationfoundation1.azurewebsites.net/Home.aspx">Home</a>
                    <a href="https://disasteralleviationfoundation1.azurewebsites.net/LogIn.aspx">Log-Out</a>
                   
                </nav>

        </div>


        <div class="auto-style2" style="height: 153px">
            <h2 class="auto-style3">Delete Car</h2>

        </div>
    </header>
     <form id="form1" runat="server">
    <div class="auto-style8">
        <div class="recentlyadded content-wrapper">
                <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataGoods" Height="168px" Width="770px" CellSpacing="2" CssClass="auto-style6" DataKeyNames="CarNo" >
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
    

            </div></div>
    

    <section class="ftco-section">
        <div class="container">

            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-5">
                    <div class="login-wrap p-4 p-md-5">

                        <h3 class="text-center mb-4">Remove Car</h3>
                              <div class="form-group">
                                <p class="auto-style6">Select Car Number</p>
                                <asp:DropDownList ID="DropDownCars" runat="server" DataSourceID="SqlDataDelCar" DataTextField="CarNo" DataValueField="CarNo"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataDelCar" runat="server" ConnectionString="<%$ ConnectionStrings:DBS_VC_CLDV6211_ST10127626ConnectionString %>" SelectCommand="SELECT [CarNo] FROM ST10127626.[Car]"></asp:SqlDataSource>
                            </div>


                            <div class="form-group">

                                <asp:Button ID="btnDeleteCar" runat="server" class="btn btn-primary rounded submit p-3 px-5" Text="Delete Car" OnClick="btnDeleteCar_Click"  />
                            </div>
                        
                    </div>
                </div>
            </div>
    </section>
         </form>

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>

    <footer>
        <div class="content-wrapper">
            <p>@2022 Disaster Alleviation Foundation</p>
        </div>
    </footer>

</body>
&nbsp;
</html>
