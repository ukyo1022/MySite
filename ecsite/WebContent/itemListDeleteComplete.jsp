<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>完了画面</title>
<link rel="stylesheet" type="text/css" href="./css/style.css">
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>削除完了</p>
		</div>
		<div>
			<h1>商品データの削除が完了しました</h1>
		</div>
		<div>
			<a href='<s:url action="AdminAction"/>'>管理者トップへ</a>
		</div>
	</div>
</body>
</html>