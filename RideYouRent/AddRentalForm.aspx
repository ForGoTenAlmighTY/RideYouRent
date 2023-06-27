<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRentalForm.aspx.cs" Inherits="RideYouRent.AddRentalForm" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Add Rental</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet" />

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/StyleSheet1.css" />
    <link rel="stylesheet" href="css/style1.css" />
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

        .auto-style6 {
            color: darkmagenta;
            margin-bottom: 0px;
        }

        .auto-style9 {
            background-image: url(image/cute-purple-aesthetic-abstract-minimal-background.png);
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>

    <header>
        <div class="content-wrapper">
            <h1>Ride You Rent</h1>
            <nav>
                    <a href="https://rideyourentst10127626.azurewebsites.net/HomeAdmin.aspx">Home</a>
                    <a href="https://rideyourentst10127626.azurewebsites.net/LogIn.aspx">Log-Out</a>
                    
                   
                </nav>

        </div>


        <div class="auto-style2" style="height: 153px">
            <h2 class="auto-style3">Add Rental</h2>

        </div>
    </header>
    <form id="form1" runat="server">
        <div class="auto-style9">

            
            <section class="ftco-section">
                <div class="container">

                    <div class="row justify-content-center">
                        <div class="col-md-6 col-lg-5">
                            <div class="login-wrap p-4 p-md-5">

                                <h3 class="text-center mb-4">New Rental</h3>

                                <div class="form-group">

                                    <asp:TextBox ID="txtRental_ID" type="text" class="form-control rounded-left" placeholder="Enter Rental ID" runat="server" required></asp:TextBox>
                                </div>

                                
                                <div class="form-group">
                                    <div class="auto-style6">
                                        <p class="auto-style6">Select Car Number</p>
                                        <asp:DropDownList ID="DropDownCarNo" class="form-control rounded-left" runat="server" DataSourceID="SqlDataCarNo" DataTextField="CarNo" DataValueField="CarNo"></asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataCarNo" runat="server" ConnectionString="<%$ ConnectionStrings:DBS_VC_CLDV6211_ST10127626ConnectionString %>" SelectCommand="SELECT CarNo FROM ST10127626.Car"></asp:SqlDataSource>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="auto-style6">
                                        <p class="auto-style6">Select Inspector</p>
                                        <asp:DropDownList ID="DropDownInspector" class="form-control rounded-left" runat="server" DataSourceID="SqlDataInspec" DataTextField="Inspector_Name" DataValueField="Inspector_Name"></asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataInspec" runat="server" ConnectionString="<%$ ConnectionStrings:DBS_VC_CLDV6211_ST10127626ConnectionString %>" SelectCommand="SELECT Inspector_Name FROM ST10127626.Inspector"></asp:SqlDataSource>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="auto-style6">
                                        <p class="auto-style6">Select Driver</p>
                                        <asp:DropDownList ID="DropDownDriver" class="form-control rounded-left" runat="server" DataSourceID="SqlDataDriver" DataTextField="Driver_Name" DataValueField="Driver_Name"></asp:DropDownList>
                                        
                                        <asp:SqlDataSource ID="SqlDataDriver" runat="server" ConnectionString="<%$ ConnectionStrings:DBS_VC_CLDV6211_ST10127626ConnectionString %>" SelectCommand="SELECT Driver_Name FROM ST10127626.Driver"></asp:SqlDataSource>
                                        
                                    </div>
                                </div>

                                <div class="form-group">

                                    <asp:TextBox ID="txtRentalFee" type="text" class="form-control rounded-left" placeholder="Rental Fee" runat="server"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <p class="auto-style6">Start Date</p>
                                    <asp:TextBox ID="txtSartDate" type="date" class="form-control rounded-left" placeholder="Start Date" runat="server" required></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <p class="auto-style6">End Date</p>
                                    <asp:TextBox ID="txtEndDate" type="date" class="form-control rounded-left" placeholder="End Date" runat="server" required></asp:TextBox>

                                </div>
                                

                                    <asp:Button ID="btnAddRental" runat="server" class="btn btn-primary rounded submit p-3 px-5" Text="Add Rental" OnClick="btnAddRental_Click" />
                           

                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </div>

    </form>
    <footer>
        <div class="content-wrapper">
            <p>@2022 Ride You Rent</p>
        </div>
    </footer>

</body>
&nbsp;
</html>
