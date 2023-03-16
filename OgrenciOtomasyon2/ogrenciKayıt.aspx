<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ogrenciKayıt.aspx.cs" Inherits="OgrenciOtomasyon2.Anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        h1{
              text-align: center;
            font-size: 50px;
        }


     
        .auto-style1 {
            font-size: 25px;
            width: 398px;
            height: 112px;
            margin: auto;
            padding: 1px;
        }
                  


        

    .input {
            height: 40px !important;
            width: 300px !important;
           
            border-radius: 10px;
            border: 1px solid #ddd;
         
        }


  
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
                   <div class="auto-style2">
        
                   <h1>Öğrenci Kayıt Sayfası</h1>
        
        <div class="auto-style1">
            
            <asp:Table class="a" runat="server" Width="64%">
                <asp:TableRow>
                    <asp:TableCell Width="20%">
                        <label>Ad: </label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox Width="100%"  runat="server" ID="Name" CssClass="input"  ValidationGroup="form" Height="25px"></asp:TextBox>
                       
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" EnableClientScript="False" Display="Dynamic" Font-Size="10" 
                            ValidationGroup="form"  ErrorMessage="Lütfen Adınızı Giriniz" ForeColor="Red"></asp:RequiredFieldValidator>

                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <label>Soyad: </label>
                    </asp:TableCell>
                    <asp:TableCell>

                        <asp:TextBox Width="100%"  runat="server" ID="Surname" CssClass="input" ValidationGroup="form" Height="25px"></asp:TextBox>
                       
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Surname" EnableClientScript="False"
                            Display="Dynamic" Font-Size="10" ValidationGroup="form"
                            ErrorMessage="Lütfen Soyadınızı Giriniz" ForeColor="Red"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <label>Şifre: </label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox Width="100%"  runat="server" CssClass="input"
                          ID="TextBox4"   ValidationGroup="form" Height="25px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" EnableClientScript="False"
                            Display="Dynamic" Font-Size="10" ValidationGroup="form"
                            ErrorMessage="Lütfen Şifrenizi Giriniz" ForeColor="Red"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <label>OkulNo: </label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox Width="100%"   runat="server" ID="TextBox3"  CssClass="input" ValidationGroup="form" Height="25px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" EnableClientScript="False"
                            Display="Dynamic" Font-Size="10" ValidationGroup="form"
                            ErrorMessage="Lütfen OkulNo Giriniz" ForeColor="Red"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <label>Email: </label>
                    </asp:TableCell>
                    <asp:TableCell>
                        
                        <asp:TextBox Width="100%"  
                          ID="TextBox5" runat="server"  ValidationGroup="form" CssClass="input" Height="25px"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" EnableClientScript="False"
                            Display="Dynamic" Font-Size="10" ValidationGroup="form"
                            ErrorMessage="Lütfen Emailinizi Giriniz" ForeColor="Red"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <label>Bölüm: </label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList Width="100%" ID="DropDownList1" CssClass="input" runat="server" AutoPostBack="true">
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><span></span></asp:TableCell>
                    <asp:TableCell >
            <asp:Button runat="server" ID="button" BackColor="Black" CssClass="input" ValidationGroup="form" ForeColor="White" Text="Kaydet" Width="100px" OnClick="Unnamed_Click" />

                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                     <asp:TableCell><span></span></asp:TableCell>
                    <asp:TableCell>
                         <asp:Label  ID="msg" runat="server"></asp:Label>
                    </asp:TableCell>
                
                </asp:TableRow>
                 <asp:TableRow>
                     <asp:TableCell><span></span></asp:TableCell>
                    <asp:TableCell>
                              <a class="a" href="ogrenci_giriş.aspx" style="display: none" runat="server" id="link">Giriş Yap</a> 
                    </asp:TableCell>
                
                </asp:TableRow>
                                         

            </asp:Table>

         
                 

        </div>
        </div>
     
                 
    </form>
</body>
</html>
