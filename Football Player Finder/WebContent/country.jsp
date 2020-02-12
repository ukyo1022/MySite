<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" type="text/css" href="./css/table.css">
<title>国籍一覧</title>
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
			<h2>国籍一覧</h2>
		</div>
		<div>
			<table border="">
				<tr>
					<th>国名</th>
					<th>選手情報</th>
				</tr>
				<s:iterator value="dtolist">
					<tr>
						<td><s:property value="country" /></td>
						<td><s:form action="CountryPlayerAction">
								<input type="hidden" name="country"
									value='<s:property value="country"/>' />
								<input type="submit" value="選手情報" />
							</s:form></td>
					</tr>
				</s:iterator>
			</table>
		</div>
	</div>
	<br>
	<br>
</body>
</html>