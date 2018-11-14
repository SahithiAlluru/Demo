<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineTest.Login" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Daily Walkins test</title>
    <link rel="stylesheet" type="text/css" href="assets/css/styleslogin.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/normalize.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>

<body class="background-images-ciry" style="background-image: url(../assets/css/Online-Learning.jpg)">
    <div class="">
     
   


<%--<body style="background-image: url(../assets/css/purty_wood.png);">
    <div class="" style="margin: 0 auto; display: block; text-align: center; top: 68px; position: relative;">
<%-<%---        <h1>Online Test Login</h1>
    </div>--%>
    <!-- demo content -->
    <div class="loginform cf">
        <div class="header">
	
     <a href="test.html">
	 <img src="images/DW-logo-img.png" alt="CSGO Howl" style="margin:0 auto;display:block;position: relative;
    left: -15px;"/>
	 </a> 	
         </div>
        <form name="login" id="form1" runat="server" method="get" accept-charset="utf-8">
            <div class="row form-horizontal" style="margin: 16px;">
                <div class="form-group">
<%--   <label for="usermail" class="col-sm-3 control-label">Name :</label>--%>
                        <div class="col-sm-9">
                        &nbsp;&nbsp;<asp:TextBox ID="txtuser" runat="server" placeholder="Enter Name" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="reqName" ControlToValidate="txtuser" ForeColor="Red" ErrorMessage="Please enter your Name!" />
                    </div>
                </div>
                <div class="form-group">
<%--                    <label for="usermail" class="col-sm-3 control-label">E-mail :</label>--%>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtmail" runat="server" placeholder="Enter Email" CssClass ="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="reqemail" ControlToValidate="txtmail" ForeColor="Red" ErrorMessage="Please enter your Mail!" />
                       <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ControlToValidate="txtmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
<%--                    <label for="mobileno" class="col-sm-3 control-label">Mobile No :</label>--%>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtmobno" runat="server" placeholder="Enter Mobile Number" CssClass="form-control"></asp:TextBox>
                      
                        <asp:RequiredFieldValidator runat="server" ID="reqmobno" ControlToValidate="txtmobno" ForeColor="Red" ErrorMessage="Please enter your MobileNumber!" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  ControlToValidate="txtmobno" ErrorMessage="Invalid Number" ForeColor="Red"  ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator> 
                    </div>
                </div>

                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label"></label>
                    <div class="col-sm-8">
                        <asp:Button ID="btnsubmit" class="button" runat="server" Text="Submit" OnClick="btnsubmit_Click" CssClass="btn btn-primary btn-sm" />

                    </div>

                </div>

            </div>
        </form>
    </div>
    </div>
</body>
</html>

