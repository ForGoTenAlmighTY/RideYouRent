<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateInspectorForm.aspx.cs" Inherits="RideYouRent.UpdateInspectorForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Update Inspector</title>
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
            <h2 class="auto-style3">Update Inspector</h2>

        </div>
    </header>


      <div class="auto-style9">
          <div class="recentlyadded content-wrapper">
                <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceINS" Height="168px" Width="770px" CellSpacing="2" CssClass="auto-style6" DataKeyNames="Inspector_Name" >
                    <Columns>
                        <asp:BoundField DataField="Inspector_no" HeaderText="Inspector_no" SortExpression="Inspector_no" />
                        <asp:BoundField DataField="Inspector_Name" HeaderText="Inspector_Name" SortExpression="Inspector_Name" ReadOnly="True" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                        <asp:BoundField DataField="Inspect_password" HeaderText="Inspect_password" SortExpression="Inspect_password" />
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
                <asp:SqlDataSource ID="SqlDataSourceINS" runat="server" ConnectionString="<%$ ConnectionStrings:DBS_VC_CLDV6211_ST10127626ConnectionString %>" SelectCommand="SELECT Inspector.* FROM ST10127626.Inspector"></asp:SqlDataSource>
    

            </div>

<section class="ftco-section">
            <div class="container">


                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-5">
                        <div class="login-wrap p-4 p-md-5">

                            <h3 class="text-center mb-4">Edit Inspector</h3>
                           
                             
                                <div class="form-group d-flex">
                                     <p class="auto-style6">Select Inspector Number</p><br />
                                    <asp:DropDownList ID="DropDownInspector" runat="server" DataSourceID="SqlDataSource1" DataTextField="Inspector_no" DataValueField="Inspector_no"></asp:DropDownList>
                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBS_VC_CLDV6211_ST10127626ConnectionString %>" SelectCommand="SELECT Inspector_no FROM ST10127626.Inspector"></asp:SqlDataSource>
                                </div>

                                

                            <div class="form-group">

                                    <asp:TextBox ID="txtInspectorName" type="text" class="form-control rounded-left" placeholder="Inspector Name" runat="server" required></asp:TextBox>
                                </div>

                            
                           
                                                           
                                <div class="form-group">

                                    <asp:TextBox ID="txtEmails" type="email" class="form-control rounded-left" placeholder="Email address" runat="server"></asp:TextBox>
                                </div>   
                            
                                <div class="form-group">

                                    <asp:TextBox ID="txtMobileNo" type="text" class="form-control rounded-left" placeholder="Mobile number" runat="server"></asp:TextBox>
                                </div>

                                

                                    <asp:Button ID="btnUpdateInspector" runat="server" class="btn btn-primary rounded submit p-3 px-5" Text="Update Inspector" OnClick="btnUpdateInspector_Click" />
                                   
                                
                            
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
