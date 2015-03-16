<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CountDownTimer.aspx.cs" Inherits="imageSlider.CountDownTimer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CountDown/CSS/jquery.countdownTimer.css" rel="stylesheet" />
    <script src="CountDown/LIB/jquery-2.0.3.js"></script>
    <script src="CountDown/jquery.countdownTimer.js"></script>
</head>
<body>
             <table style="border:0px;">
                <tr>
                    <td style="width:70px;text-align:center;">Hours</td>
                    <td style="width:60px;text-align:center;">Minutes</td>
                    <td style="width:70px;text-align:center;">Seconds</td>
                </tr>
                <tr>
                    <td colspan="4"><span id="hms_timer"></span></td>
                </tr>
              </table>
    <table style="border:0px;">
    <tr>
        <td colspan="8"><span id="future_date"></span></td>
    </tr>
    </table>
    
     <script>
         $(function () {
             $('#hms_timer').countdowntimer({
                 hours: 3,
                 minutes: 10,
                 seconds: 10,
                 size: "lg",
                
             });
         });
    </script>
     <script>
         $(function () {
             $('#future_date').countdowntimer({
                 dateAndTime: "2018/01/01 00:00:00",
                 size: "lg",
                 regexpMatchFormat: "([0-9]{1,2}):([0-9]{1,2}):([0-9]{1,2}):([0-9]{1,2})",
                 regexpReplaceWith: "$1<sup class='displayformat'>days</sup> / $2<sup class='displayformat'>hours</sup> / $3<sup class='displayformat'>minutes</sup> / $4<sup class='displayformat'>seconds</sup>"
             });
         });
                            </script>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
