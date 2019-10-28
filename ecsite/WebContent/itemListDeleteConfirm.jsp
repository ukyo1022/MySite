<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/style.css">
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>商品登録削除確認画面</p>
		</div>
		<div>
			<s:form action="itemListDeleteCompleteAction">
				<input type="hidden" name="deleteFlg" value="1">
				<s:submit value="削除" />
			</s:form>
			<s:form action="itemListAction">
				<s:submit value="キャンセル" />
			</s:form>
		</div>
	</div>
</body>
</html>