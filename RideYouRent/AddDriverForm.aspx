<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDriverForm.aspx.cs" Inherits="RideYouRent.AddDriverForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Add New Car</title>
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
            <h2 class="auto-style3">Add Driver</h2>

        </div>
    </header>


    <div class="auto-style9">
<section class="ftco-section">
            <div class="container">


                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-5">
                        <div class="login-wrap p-4 p-md-5">

                             <h3 class="text-center mb-4">New Driver</h3>
                           
                             
                                <div class="form-group d-flex">

                                    <asp:TextBox ID="txtDriver" type="text" class="form-control rounded-left" placeholder="Driver Name" runat="server" required></asp:TextBox>
                                </div>

                                

                            <div class="form-group">

                                    <asp:TextBox ID="txtAddress" type="text" class="form-control rounded-left" placeholder="Driver Address" runat="server" required></asp:TextBox>
                                </div>

                            
                           
                                                           
                                <div class="form-group">

                                    <asp:TextBox ID="txtEmails" type="email" class="form-control rounded-left" placeholder="Email address" runat="server"></asp:TextBox>
                                </div>   
                            
                                <div class="form-group">

                                    <asp:TextBox ID="txtMobileNo" type="text" class="form-control rounded-left" placeholder="Mobile number" runat="server"></asp:TextBox>
                                </div>

                                 

                                    <asp:Button ID="btnAddDriver" runat="server" class="btn btn-primary rounded submit p-3 px-5" Text="Add Driver" OnClick="btnAddDriver_Click"  />
                                   
                                
                            
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
