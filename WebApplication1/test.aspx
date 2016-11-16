<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="WebApplication1.test" %>

<!DOCTYPE html>
<html>
<head>
    <script type="text/javascript" src="jquery.min.js"></script>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places&key=AIzaSyDnt5-Xf-6L_UYdx9c51bIl48UyJCkT9io"></script>
    <script type="text/javascript" src="jquery.geocomplete.min.js"></script>
    <script>
        $(function () {
            $("#location").geocomplete();
        });
    </script>
</head>
<body>
<form>
<input type="text" name="location" id="location">
</form>
</body>
</html>