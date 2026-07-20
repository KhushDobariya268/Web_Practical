<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Web_Practical.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AdRotator Example</title>
</head>
<body>
    <form id="form1" runat="server">

        <!-- Required for Timer -->
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div style="text-align:center">

            <asp:Label ID="Label6"
                runat="server"
                Text="Advertisement"
                Font-Bold="true"
                Font-Size="Large">
            </asp:Label>

            <br />
            <br />

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

                    <!-- Timer -->
                    <asp:Timer ID="Timer1"
                        runat="server"
                        Interval="300"
                        OnTick="Timer1_Tick">
                    </asp:Timer>

                    <!-- AdRotator -->
                    <asp:AdRotator ID="AdRotator1"
                        runat="server"
                        AdvertisementFile="~/XMLFile1.xml"
                        Height="500px"
                        Width="500px">
                    </asp:AdRotator>

                    <br />

                </ContentTemplate>
            </asp:UpdatePanel>

        </div>

        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />



    </form>
</body>
</html>