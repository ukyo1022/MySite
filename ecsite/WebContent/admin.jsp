<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理者画面</title>
</head>
<body>
	<div id="header">
	</div>
	<div id="main">
		<div id="top">
			<p>AdminPage</p>
		</div>
		<h1>☆★管理者画面★☆</h1>
		<div id="box">
			商品
			<table>
				<tr>
					<s:form action="itemCreateAction">
						<s:submit value="新規登録"/>
					</s:form>
				</tr>
				<tr>
					<s:form action="itemListAction">
						<s:submit value="一覧"/>
					</s:form>
				</tr>
			</table>
		</div>
		<div id="box2">
			ユーザー
			<table>
				<tr>
					<s:form action="UserCreateAction">
						<s:submit value="新規登録"/>
					</s:form>
				</tr>
				<tr>
					<s:form action="userListAction">
						<s:submit value="一覧"/>
					</s:form>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>