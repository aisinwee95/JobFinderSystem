﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"  CodeBehind="Register.aspx.cs" Inherits="Job_Finder_System.Register" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 162px;
        }
        .auto-style3 {
            width: 151px;
        }
    </style>
     
</head>
<body>
    
 

  <h2>Register form</h2>
  
    
    <form class="form-horizontal" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>  
        <center>
    
            <div class="form-group">
                <label class="control-label col-sm-2" for="firstname">Firstname</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="firstname" runat="server" class="form-control" placeholder="Enter Firstname"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="firstname" ErrorMessage="Please enter firstname with only alphabet" ForeColor="Red">*</asp:RequiredFieldValidator>
               </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="lastname">Lastname</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="lastname" runat="server" class="form-control" placeholder="Enter Lastname" ></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lastname" ErrorMessage="Please enter lastname with only alphabet" ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="username">Username</label>
                <div class="col-sm-10">  
                    <asp:TextBox ID="username" runat="server" class="form-control" placeholder="Enter Username"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="username" ErrorMessage="Please enter username " ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
            </div>  
            <div class="form-group">
                <label class="control-label col-sm-2" for="email">Email</label>
                <div class="col-sm-10">  
                    <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Enter Email"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="email" ErrorMessage="Please enter email " ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email address!" ForeColor="Red" Width="200px" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
            </div>  
            <div class="form-group">
                <label class="control-label col-sm-2" for="role">Role</label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="role" runat="server" class="form-control" placeholder="Enter Role" >
                        <asp:ListItem>Poster</asp:ListItem>
                        <asp:ListItem>Seeker</asp:ListItem>
                    </asp:DropDownList><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="username" ErrorMessage="Please enter username " ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
            </div>   
            <div class="form-group">
                <label class="control-label col-sm-2" for="password">Password</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="password" runat="server" class="form-control" placeholder="Enter Password" TextMode="Password" ></asp:TextBox><br />
                    <ajaxToolkit:PasswordStrength ID="txtpassword_passwordstrength" runat="server" BehaviorID="txtpassword_passwordstrength" TargetControlID="password" 
                         MinimumLowerCaseCharacters="1" MinimumNumericCharacters="1" MinimumUpperCaseCharacters="1" PreferredPasswordLength="10" />
                    
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="password" ErrorMessage="Please enter password" ForeColor="Red">*</asp:RequiredFieldValidator>
               </div>
            </div>  
            <div class="form-group">
                <label class="control-label col-sm-2" for="confirmpassword">ConfirmPassword</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="confirmpassword" runat="server" class="form-control" placeholder="Enter ConfirmPassword" TextMode="Password"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="confirmpassword" ErrorMessage="Please enter confirmpassword" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirmpassword" ErrorMessage="Password not match." ForeColor="Red">Password not match </asp:CompareValidator>
                </div>
            </div>  
        </center>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <asp:Button ID="Button1" runat="server" Text="Register" class="btn btn-default" OnClick="Button1_Click" />
            </div>
        </div>
        <br />
    </form>
</div>
    
</body>
</html>
    </asp:Content>