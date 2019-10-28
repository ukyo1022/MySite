<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ログイン</title>
<link rel="stylesheet" type="text/css" href="./css/style.css">
</head>
<body>
	<div id="hesder"></div>
	<div id="main">
		<div id="top">
			<p>Login</p>
		</div>
		<div>
			<h3>商品を購入するためにはログインをお願いします。</h3>
			<s:form action="LoginAction">
				<s:textfield name="loginUserId" />
				<s:password name="loginPassword" />
				<s:submit value="ログイン" />
			</s:form>
			<br />
			<div id="text-link">
				<p>新規ユーザー登録は</p>
				<a href='<s:url action="UserCreateAction"/>'>こちら</a>
				<p>Homeへ戻る場合は</p>
				<a href='<s:url action="GoHomeAction"/>'>こちら</a>
			</div>
		</div>
	</div>
	<div id="footer"></div>
</body>
</html>