<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ogrenci_giriş.aspx.cs" Inherits="OgrenciOtomasyon2.ogrenci_giriş" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Giriş</title>
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
           
        }

        .input {
            height: 50px !important;
            width: 300px !important;
            border-radius: 10px;
            border: 1px solid #ddd;
        }
        .main{
            box-shadow: 0 3px 10px rgb(0 0 0 / 0.2);
            border-radius:10px;
            width:500px;
            height:265px;
            padding:20px;
            background-color:white;
                   }
        .container{
            display:flex;
            justify-content:center;
            height:30%;
        }
        html,body,form{
            height:100vh;
        }
        .btn{
           
            margin-top:5px;
        }
       
    </style>


</head>

<body>
    <form id="form1" runat="server">
        <div class="container">


        <div class="main">
            <h2 style="text-align:center">Öğrenci Giriş</h2>

            <table class="auto-style1">
                <tr>
                    <td>
                        <label>Email: </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" class="input" runat="server" Width="150px" Height="30px"></asp:TextBox>
                    </td>


                </tr>

                <tr>
                    <td>
                        <label>Şifre: </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" class="input" Width="150px" Height="30px"></asp:TextBox>
                    </td>
                </tr>



                <tr>

                    <td>
                        <label></label>
                    </td>
                    <td>
                        <asp:Button CssClass="input btn" runat="server" ID="Button2" Text="Giriş" OnClick="Button1_Click" Height="42px" Width="72px" />
                    </td>
    </tr>

                    <tr>
                        <td>
                            <label></label>
                        </td>
                        <td>
                            <asp:Label ID="msg" runat="server"></asp:Label>
                        </td>
                    </tr>



              
            </table>


        </div>
                    </div>
    </form>
</body>
</html>
