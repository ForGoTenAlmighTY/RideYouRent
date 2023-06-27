<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateCarForm.aspx.cs" Inherits="RideYouRent.UpdateCarForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Update Car</title>
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

        .p {
            color: darkmagenta;
        }

        .auto-style9 {
            background-image: url(image/cute-purple-aesthetic-abstract-minimal-background.png);
            background-repeat: no-repeat;
            background-size: cover;
        }

        .auto-style6 {
            color: darkmagenta;
            margin-bottom: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <header>
        <div class="content-wrapper">
            <h1>Ride You Rent</h1>
             <nav>
                    <a href="https://rideyourentst10127626.azurewebsites.net/HomeAdmin.aspx">Home</a>
                    <a href="https://rideyourentst10127626.azurewebsites.net/LogIn.aspx">Log-Out</a>
                    
                   
                </nav>

        </div>


        <div class="auto-style2" style="height: 153px">
            <h2 class="auto-style3">Update Car</h2>

        </div>
    </header>

        

             
    <div class="auto-style9">
          <div class="recentlyadded content-wrapper">
                <asp:GridView ID="GridView2" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataCar" Height="168px" Width="770px" CellSpacing="2" CssClass="auto-style6" DataKeyNames="CarNo" >
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
                <asp:SqlDataSource ID="SqlDataCar" runat="server" ConnectionString="<%$ ConnectionStrings:DBS_VC_CLDV6211_ST10127626ConnectionString %>" SelectCommand="SELECT Car.* FROM ST10127626.Car"></asp:SqlDataSource>
    

            </div>
<section class="ftco-section">
            <div class="container">


                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-5">
                        <div class="login-wrap p-4 p-md-5">

                            <h3 class="text-center mb-4">Edit Car</h3>
                           
                             <div class="form-group">
                                 <p class="auto-style6">Select Car Number</p>
                                 <asp:DropDownList ID="DropDownCar" runat="server" DataSourceID="SqlDataSourceCarNo" DataTextField="CarNo" DataValueField="CarNo"></asp:DropDownList>
                                 <asp:SqlDataSource ID="SqlDataSourceCarNo" runat="server" ConnectionString="<%$ ConnectionStrings:DBS_VC_CLDV6211_ST10127626ConnectionString %>" SelectCommand="SELECT CarNo FROM ST10127626.Car"></asp:SqlDataSource>
                                </div>  
                                <div class="form-group">
                                    <p class="auto-style6">Car Make</p>
                                    <asp:DropDownList ID="DropDownMake" runat="server" DataSourceID="SqlDataSourceCarMake" DataTextField="CarDescription" DataValueField="CarDescription"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSourceCarMake" runat="server" ConnectionString="<%$ ConnectionStrings:DBS_VC_CLDV6211_ST10127626ConnectionString %>" SelectCommand="SELECT [CarDescription] FROM ST10127626.[Car_Make]"></asp:SqlDataSource>
                                </div>

                            <div class="form-group">

                                    <asp:TextBox ID="txtModel" type="text" class="form-control rounded-left" placeholder="Model of the car" runat="server" required></asp:TextBox>
                                </div>

                            <div class="form-group">
                                    <p class="auto-style6">Car Body Type</p>
                                <asp:DropDownList ID="DropDownBodyType" runat="server" DataSourceID="SqlDataBodytype" DataTextField="CarBodyTypeDescription" DataValueField="CarBodyTypeDescription"></asp:DropDownList>
                                     <asp:SqlDataSource ID="SqlDataBodytype" runat="server" ConnectionString="<%$ ConnectionStrings:DBS_VC_CLDV6211_ST10127626ConnectionString %>" SelectCommand="SELECT [CarBodyTypeDescription] FROM ST10127626.[CarBodyType]"></asp:SqlDataSource>
                                     </div>
                           
                                                           
                                <div class="form-group">

                                    <asp:TextBox ID="txtKilometresTravelled" type="text" class="form-control rounded-left" placeholder="Kilometres Travelled" runat="server"></asp:TextBox>
                                </div>   
                            
                                <div class="form-group">

                                    <asp:TextBox ID="txtServiceTravelled" type="text" class="form-control rounded-left" placeholder="Service Travelled" runat="server"></asp:TextBox>
                                </div>

                             
                            <div class="form-group">
                                 <p class="auto-style6">Available</p>
                                 <asp:DropDownList ID="DropDownAvailable" runat="server">
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:DropDownList>
                            </div>

                                

                                    <asp:Button ID="btnUpdateCar" runat="server" class="btn btn-primary rounded submit p-3 px-5" Text="Update Car" OnClick="btnUpdateCar_Click" />
                                   
                                
                            
                        </div>
                    </div>
                </div>
        </section>

    </div>
    
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
            
    <footer>
        <div class="content-wrapper">
            <p>@2023 Ride You Rent</p>
        </div>
    </footer>

</body>
&nbsp;
    </form>
</html>
