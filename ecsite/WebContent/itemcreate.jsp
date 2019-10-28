<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品登録</title>
<link rel="stylesheet" type="text/css" href="./css/style.css">
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>商品登録</p>
		</div>
		<div id="box">
			<s:if test="errorMessage !=''">
				<s:property value="errorMessage" escape="false" />
			</s:if>
		</div>
		<div>
			<table>
				<s:form action="itemCreateConfirmAction">
					<tr>
						<td><label>商品名:</label></td>
						<td><input type="text" name="itemName" value="" /></td>
					</tr>
					<tr>
						<td><label>値段:</label></td>
						<td><input type="text" name="price" value="" /></td>
					</tr>
					<tr>
						<td><label>在庫:</label></td>
						<td><input type="text" name="stock" value="" /></td>
					</tr>
					<s:submit value="登録する" />
				</s:form>
			</table>
		</div>
	</div>
</body>
</html>