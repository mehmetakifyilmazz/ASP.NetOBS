<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ogrencianasayfa.aspx.cs" Inherits="OgrenciOtomasyon2.ogrencianasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        html, body {
            padding: 0;
            margin: 0;
        }

        h1 {
            padding: 20px;
            text-align: center;
            font-size: 50px;
        }

        h3 {
            text-align: left;
        }

        div {
            
            
            width: 100%;
       
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

            table th {
                text-align: left;
                background-color: #2196F3;
                color: white;
            }

            table td, table th {
                border: 1px solid #ddd;
                padding: 6px;
            }

        tr:nth-child(even) {
            background-color: white;
        }
        .container{
            display:flex;
            flex-direction:column;
            align-items:center;
           

        }
        .container > * {
            width:80%;
           

        }
        .dersler > input , select{
            height:45px;
            margin:10px;

        }
        .btn{
            border:none;
            width:100px;
            border-radius:5px;
            background-color:#2196F3;
            color:white;
        }
        .select{
            padding:10px;
            border-radius:5px;
            outline-color:#2196F3;
        
           
        }
        .notlar{
            margin-top:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h2 style="text-align: center">Öğrenci Anasayfa </h2>
            <div class="dersler">
            
                <asp:DropDownList ID="DropDownList1" CssClass="select" runat="server"></asp:DropDownList>
                <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Listele" OnClick="Button1_Click" />
            </div>
            <hr />
            <div class="notlar">
                <h3>Not Bilgisi </h3>

                <table>

                    <tr>
                        <th>AKTS</th>
                        <th>Vize</th>
                        <th>Final</th>
                        <th>Büt</th>
                        <th>Ortalama</th>
                        <th>Harf Notu</th>
                        <th>Geçme Durumu</th>
                    </tr>
                    <br/>

                    <asp:Repeater runat="server" ID="repater">
                        <ItemTemplate>


                            <td><%# Eval("derskredi") %></td>
                            <td><%# Eval("vize") %></td>
                            <td><%# Eval("final") %></td>
                            <td><%# Eval("but") %></td>
                            <td><%# Eval("ortalama") %></td>
                            <td><%# Eval("harf") %></td>
                            <td><%# Eval("gecme") %></td>



                            </tr>  
                        </ItemTemplate>
                    </asp:Repeater>

                </table>
            </div>


        </div>
    </form>
</body>
</html>
