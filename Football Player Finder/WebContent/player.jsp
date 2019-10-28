<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" type="text/css" href="./css/font.css">
<link rel="stylesheet" type="text/css" href="./css/table.css">
<link rel="stylesheet" type="text/css" href="./css/radius.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>選手情報</title>
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
			</tr>
			<s:iterator value="playerList">
				<tr>
					<td><s:property value="playername" /></td>
					<td><s:property value="number" /></td>
					<td><s:property value="country" /></td>
					<td><s:property value="position" /></td>
				</tr>
			</s:iterator>
		</table>
		<br>
		<div id="box">
			<h2>メニュー</h2>
			<div id="radiusP">
				<a href='<s:url action="premierAction"/>'>プレミアリーグ(イングランド)一覧へ</a>
			</div>
			<div id="radiusL">
				<a href='<s:url action="laligaAction"/>'>リーガ・エスパニョーラ(スペイン)一覧へ</a>
			</div>
			<div id="radiusS">
				<a href='<s:url action="serieAction"/>'>セリエA(イタリア)一覧へ</a>
			</div>
			<div id="radiusB">
				<a href='<s:url action="bundesAction"/>'>ブンデスリーガ(ドイツ)</a>
			</div>
			<div id="radius1">
				<a href='<s:url action="ligue1Action"/>'>リーグ・アン(フランス)</a>
			</div>
			<h3>
				<a href='<s:url action="leagueAction"/>'>リーグ一覧へ</a>
			</h3>
			<h3>
				<a href='<s:url action="HomeAction"/>'>ホームへ戻る</a>
			</h3>
		</div>
	</div>
</body>
</html>