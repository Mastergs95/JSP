<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="UTF-8">
    </head>
    <body>
        <br>
        <h2 align="center" >Registration</h2>

        <form action="register" align="center">
            Name: <input type="text" name="name"><br><br>
            Email: <input type="text" name="email"><br><br>
            Membership:
            <input type="radio" name="membership" value="regular">Regular
            <input type="radio" name="membership" value="premium" checked>Premium
            <input type="radio" name="membership" value="elite">Elite
            <br><br>
            Subscriptions:
            <input type="checkbox" name="subs" value="news">Newsletter
            <input type="checkbox" name="subs" value="offers">Offers
            <input type="checkbox" name="subs" value="recs">Recommendations
            <br><br>
            <input type="submit" value="Submit">
            <input type="reset">


       </form>

    </body>
</html>