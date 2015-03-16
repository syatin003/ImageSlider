<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Youtube_Video_Play.aspx.cs" Inherits="imageSlider.Youtube_Video_Play" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title> <script type="text/javascript">
                        function ShowModalPopup() {

                            var url = $get("<%=txtUrl.ClientID %>").value;
            url = url.split('v=')[1];
            $get("video").src = "//www.youtube.com/embed/" + url
            $find("mpe").show();
            return false;
        }
        function HideModalPopup() {
            $get("video").src = "";
            $find("mpe").hide();
            return false;
        }

</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>

        <asp:TextBox ID="txtUrl" runat="server" Width="300" Text = "" />

<asp:Button ID="btnShow" runat="server" Text="Play Video" OnClientClick="return ShowModalPopup()" />
<asp:LinkButton ID="lnkDummy" runat="server"></asp:LinkButton>
        <asp:ModalPopupExtender ID="ModalPopupExtender1" BehaviorID="mpe" runat="server"
    PopupControlID="pnlPopup" TargetControlID="lnkDummy" BackgroundCssClass="modalBackground" CancelControlID = "btnClose">
        </asp:ModalPopupExtender>
        <asp:Panel ID="pnlPopup" runat="server" CssClass="modalPopup" Style="display: none">
    <div class="header">
        Youtube Video
    </div>
    <div class="body">
        <iframe id = "video" width="420" height="315" frameborder="0" allowfullscreen></iframe>
        <br />
        <br />
        <asp:Button ID="btnClose" runat="server" Text="Close" />
    </div>
</asp:Panel>
    </div>
    </form>
</body>
</html>
