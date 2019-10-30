<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>削除対象選手選択</title>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" type="text/css" href="./css/font.css">
<link rel="stylesheet" type="text/css" href="./css/table.css">
<link rel="stylesheet" type="text/css" href="./css/radius.css">
</head>
<body>
	<div id="header">
		<div id="title">FOOTBALL PLAYER FINDER</div>
		<ul>
			<li><a href='<s:url action="thisSiteAction"/>'>このサイトについて</a></li>
			<li><a href='<s:url action="qPositionAction"/>'>ポジションの説明</a></li>
			<li><a href='<s:url action="featureLeagueAction"/>'>リーグの特徴について</a></li>
			<li><a href='<s:url action="HomeAction"/>'>ホームへ戻る</a></li>
		</ul>
	</div>
	<div id="main">
		<div id="top">
			<h2>選手情報</h2>
		</div>

		<table border="">
			<tr>
				<th>名前</th>
				<th>背番号</th>
				<th>国籍</th>
				<th>ポジション</th>
				<th id="delete_btn">削除</th>
			</tr>
			<s:iterator value="premierList">
				<s:form action="DeleteThisPlayerAction">
					<tr>
						<td><s:property value="playername" /></td>
						<td><s:property value="number" /></td>
						<td><s:property value="country" /></td>
						<td><s:property value="position" /></td>
						<td id="delete_btn"><input type="hidden" value='<s:property value="playername" />'name="playername"/>
						<input type="submit" value="削除"/></td>
					</tr>
				</s:form>
			</s:iterator>
		</table>
		<br>
	</div>
</body>
</html>