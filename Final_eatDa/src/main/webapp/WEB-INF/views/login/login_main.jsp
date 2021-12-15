<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
</head>
<style type="text/css">
    *{
	margin: 0px;
	padding: 0px;
}

a{
	text-decoration: none;
	color: black;
	font-weight: bold;
}

.wrap{
	width: 100%;
	height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
}

.login{
	width: 350px;
	height: 470px;
	display: flex;
	position: absolute;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	border: none;
	border-radius: 30px;
	text-align: center;
	margin-bottom: 20px;
    background-color: #FAEED2;

}

.logo{
	align-items: center;
    margin-bottom: 20px;
}

.login_id{
	margin-top: 30px;
	align-items: left;
    text-align: left;

}

.login_id input, .login_pw input{
	width: 220px;
	height: 15px;
	padding: 0px 15px;
	border: 2px solid white;
    background-color: #FAEED2;
    border-top: none; border-left: none; border-right: none;
}

input:focus {outline:none;}

.login_pw{
	margin-top: 25px;
	align-items: center;
    text-align: left;
}


.regist{
	margin-top: 15px;
	align-items: center;
	font-size: 0.8em;
}

.regist a{
    color: blue;
}

.submit{
	margin-top: 45px;
}

.submit input{
	width: 250px;
	height: 40px;
	border: 0;
	background: #ffe084;
	color: gray;
	border-radius: 7px;
    font-weight: bold;
    font-size: 12pt;
}

</style>
<body>
	<form action="" method="post">
        <div class="wrap">
            <div class="login">
            
                <div class="logo">
                    <img src="resources/images/logo.png" width="200" height="70">
                </div>
                <div class="login_id">
                    <span>ID</span><br>
                    <input type="text" name="user_id">     
                </div>
                <div class="login_pw">
                    <span>Password</span><br>
                    <input type="password" name="user_pw">
                </div> 
                <div class="submit">
                    <input type="submit" value="L O G I N">
                </div>
                <div class="regist">
                    <span>Not a member yet?</span>
                    &nbsp;&nbsp;&nbsp;
                    <a href="">sign up</a>
                </div>
</body>
</html>