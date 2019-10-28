<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品リスト</title>
<link rel="stylesheet" type="text/css" href="./css/style.css">
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>商品リスト</p>
		</div>
		<div>
			<s:if test="itemlist==null">
				<h3>登録している商品はありません</h3>
			</s:if>

			<s:elseif test="message==null">
				<h3>商品情報は以下になります</h3>
				<table border="">
					<tr>
						<th>商品名</th>
						<th>値段</th>
						<th>在庫</th>
						<th>登録日</th>
					</tr>
					<s:iterator value="itemlist">
						<tr>
							<td><s:property value="itemName" /></td>
							<td><s:property value="price" /><span>円</span></td>
							<td><s:property value="stock" /><span>個</span></td>
							<td><s:property value="insert_date" /></td>
						</tr>
					</s:iterator>
				</table>
				<s:form action="itemDeleteConfirmAction">
					<s:submit value="削除"></s:submit>
				</s:form>
				<s:form action="AdminAction">
					<s:submit value="トップへ"></s:submit>
				</s:form>
			</s:elseif>
		</div>
	</div>
	<div id="footer"></div>
</body>
</html>