<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hocaanasayfa.aspx.cs" Inherits="OgrenciOtomasyon2.hocaanasayfa" %>

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

        .button{  
    border-radius: 3px;
    box-shadow: #959595 0 2px 5px;
    content: "";
    display: block;
    height: 100%;
    left: 0;
    padding: 2px 0 0;
    position: absolute;
    width: 10%; }

        h1 {
            padding: 20px;
            text-align: center;
            font-size: 50px;
        }

        input[type=text] {
            display: inline-block;
            box-shadow: 0 1px 1px 0 ;
            border-radius:10px;
            height:70px;
            padding:0px;
            background-color:white;
        }

        label {
            font-size: 20px;
            font-weight:bold;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            border-radius:10px;
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
        .auto-style1 {
            width: 156px;
        }
        .auto-style2 {
            width: 476px;
        }
        .auto-style3 {
            width: 628px;
            height: 146px;
            margin-bottom: 0px;
        }
        .auto-style4 {
            width: 156px;
            height: 17px;
        }
        .auto-style5 {
            width: 476px;
            height: 17px;
        }
        .container > * {
            width: 80%;
        }
              .container{
            display:flex;
            flex-direction:column;
            align-items:center;

        }
        .dersler > input, select {
            height: 45px;
            margin: 10px;
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
                   #Button1{
            border-radius: 10px;
            border: 1px solid #ddd;
            margin-top:5px;
                   }
    </style>
    <script>
        function selectOgrenic(ogrenicNo) {
            console.log(ogrenicNo)
            var lst = ogrenicNo.split("|");
            document.getElementById("ogrenci_no").value = lst[0];
            document.getElementById("ogr_id").value = lst[1];
         
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
<div class="container">

            <h2 style="text-align: center">Öğretmen Anasayfa </h2>
            <div class="dersler">
            
        <asp:DropDownList ID="DropDownList2"  runat="server" Height="30px" Width="140px" ></asp:DropDownList> 
        &nbsp; 
        <asp:Button  runat="server" CssClass="btn" ID="ogrenciGöster" Text="Listele" OnClick="ogrenciGöster_Click" Height="23px" Width="78px"  />

     <hr />

        <table >
            <tr>
                <th>Adı</th>
                <th>Soyadı</th>
                <th>Email</th>
                <th>Okul No</th>
                <th>Vize</th>
                <th>Final</th>
                <th>Büt</th>
                <th>Ortalama</th>
                <th>Harf Notu</th>
                <th>Geçme Durumu</th>
            </tr>

              <br />    
                <br /> 
        
            <asp:Repeater runat="server" ID="repater">
                <ItemTemplate>

                    <tr onclick="selectOgrenic('<%# Eval("okul_no")+"|"+Eval("ogr_id") %>')" style="cursor: pointer">
                        <td><%# Eval("adi") %></td>
                        <td><%# Eval("soyadi") %></td>
                        <td><%# Eval("email") %></td>
                        <td><%# Eval("okul_no") %></td>
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
                    <br /> 
                    <br /> 
                     </div>
        <div>
            <hr />
          <br />    
                <br /> 

&nbsp; <label font-size="30px"> Not Girişi </label>
            <br/>
            <br/>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style1">
                        <label>Öğrenci No:</label></td>
                    <td class="auto-style2">
                        <asp:TextBox runat="server" ID="ogrenci_no" Width="100%" Height="25px" ></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <label>Vize:</label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox Width="100%" ID="TextBox1" runat="server" Height="25px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <label>Final: </label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox Width="100%" ID="TextBox2" runat="server" Height="25px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <label>Büt:</label></td>                            
                    <td class="auto-style5">
                        <asp:TextBox Width="100%" ID="TextBox3" runat="server" Height="25px"></asp:TextBox>
                    </td>
                </tr>

            </table>
           
               &nbsp;
           
      

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:Button ID="Button1"  runat="server" Text="Kaydet" OnClick="Button1_Click" Height="25px" Width="150px" />
            &nbsp;<input type="hidden" id="ogr_id" runat="server" /></div>

        </div>
    </form>
</body>
</html>
