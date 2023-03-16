<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hocakayıt.aspx.cs" Inherits="OgrenciOtomasyon2.hocakayıt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <style>
        h1 {
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

        .auto-style2 {
            height: 40px;
        }

        .auto-style3 {
            height: 21px;
        }

    .input {
            height: 40px !important;
            width: 300px !important;
           
            border-radius: 10px;
            border: 1px solid #ddd;
          
        }
    button{
        margin-top:5px;
    }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h1>Akademisyen Kayıt Sayfası</h1>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <label>Ad: </label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Name" runat="server" CssClass="input" ValidationGroup="form" Height="25px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Name" EnableClientScript="False"
                            Display="Dynamic" Font-Size="10" ValidationGroup="form"
                            ErrorMessage="Lütfen Adınızı Giriniz" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>


                <tr>
                    <td class="auto-style3">
                        <label>Soyad: </label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="Surname" CssClass="input" ValidationGroup="form" runat="server" Height="25px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Surname"
                            Display="Dynamic" Font-Size="10" ValidationGroup="form"
                            EnableClientScript="False" ErrorMessage="Lütfen Soyadınızı Giriniz" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>


                <tr>
                    <td>
                        <label>Kullanıcı Adı: </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="input" ValidationGroup="form" Height="25px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3"
                            Display="Dynamic" Font-Size="10" ValidationGroup="form"
                            EnableClientScript="False" ErrorMessage="Lütfen Kullanıcı Adınızı Giriniz" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>


                <tr>
                    <td>
                        <label>Şifre: </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="input" ValidationGroup="form" Height="25px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4"
                            Display="Dynamic" Font-Size="10" ValidationGroup="form"
                            EnableClientScript="False" ErrorMessage="Lütfen Şifrenizi Giriniz" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>


                <tr>
                    <td>
                        <label>Email: </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="input" ValidationGroup="form" Height="25px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5"
                            Display="Dynamic" Font-Size="10" ValidationGroup="form"
                            EnableClientScript="False" ErrorMessage="Lütfen Emailinizi Giriniz" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                </tr>


                <tr>
                    <td>
                        <label>Bölüm: </label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" CssClass="input" runat="server" AutoPostBack="true" ValidationGroup="form" Height="25px" Width="218px"></asp:DropDownList>
                    </td>
                </tr>


                <tr>
                    <td>
                        <label></label>
                    </td>
                    <td>
                        <asp:Button ID="Button" BackColor="Black" ForeColor="White" runat="server" CssClass="input" Text="Kaydet" ValidationGroup="form" OnClick="Button1_Click" Width="100px" /></td>
                </tr>


                <tr>
                    
                          <td>  <label></label>   </td> 
                     <td>
                        <asp:Label ID="msg" runat="server"></asp:Label>
                    </td>
                </tr>


                <tr>
                     <td>  <label></label></td>
                    <td><a href="hoca_giriş.aspx" style="display: none" runat="server" id="link">Giriş Yap</a>   </td>
                </tr>
            </table>






            <br />




        </div>
    </form>
</body>
</html>
