<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jquery_scroll_to_particular_position.aspx.cs" Inherits="imageSlider.jquery_scroll_to_particular_position" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body> <form id="form1" runat="server">
    <div>
    <p><a id="top">Menu:</a> <!-- Anchor tag placed around the word "Menu" so menu will always be visible -->

<a href="#middle" class="scroll">Middle</a> <a href="#bottom" class="scroll">Bottom</a></p>

<div style="background-color:#c00; width:50%; height:1500px;">Top</div>

<p><a id="middle">Menu:</a> <!-- Anchor tag placed around the word "Menu" so menu will always be visible -->

<a href="#top" class="scroll">Top</a> <a href="#bottom" class="scroll">Bottom</a></p>

<div style="background-color:#2d80e8; width:50%; height:1500px;">Middle</div>

<p><a id="bottom">Menu:</a> <!-- Anchor tag placed around the word "Menu" so menu will always be visible -->

<a href="#top" class="scroll">Top</a> <a href="#middle" class="scroll">Middle</a>

<div style="background-color:#21b81e; width:50%; height:1500px;">Bottom</div>

</div>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

<script  type="text/javascript">

    $(document).ready(function () {

        $(".scroll").click(function (event) {

            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 500);

        });

    });

</script>
    </form>
</body>
</html>
