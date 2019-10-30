<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>削除対象のクラブ選択</title>
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
			<h2>クラブ一覧</h2>
		</div>
		<table id="clubList">
			<tr>
				<th>クラブ名</th>
				<th>選手情報</th>
			</tr>
			<tr>
				<s:iterator value="premierList">
					<s:form action="SetDeletePlayerAction" id="btn">
						<td id="club"><s:property value="clubname" /></td>
						<td id="get"><input type="submit" value="選手情報"> <input
							type="hidden" name="clubname"
							value='<s:property value="clubname" />'/></td>
					</s:form>
				</s:iterator>
			</tr>
		</table>
	</div>
</body>
</html>