<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>確認</title>
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>登録内容確認</p>
		</div>
		<div>
			<h3>登録する内容は以下でよろしいですか？</h3>
			<table>
				<s:form action="itemCreateCompleteAction">
					<tr id="box">
						<td><label>商品名:</label></td>
						<td><s:property value="itemName" escape="false" /></td>
					</tr>
					<tr id="box">
						<td><label>値段:</label></td>
						<td><s:property value="price" escape="false" /></td>
					</tr>
					<tr id="box">
						<td><label>在庫:</label></td>
						<td><s:property value="stock" escape="false" /></td>
					</tr>
					<tr>
						<td><s:submit value="完了" /></td>
					</tr>
				</s:form>
			</table>
		</div>
	</div>
	<div id="footer"></div>
</body>
</html>