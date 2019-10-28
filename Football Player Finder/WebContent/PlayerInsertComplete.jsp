<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登録完了</title>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" type="text/css" href="./css/radius.css">
</head>
<body>
	<div id="header">
		<div id="title">FOOTBALL PLAYER FINDER</div>
		<ul>
			<li><a href='<s:url action="thisSiteAction"/>'>このサイトについて</a></li>
			<li><a href='<s:url action="qPositionAction"/>'>ポジションの説明</a></li>
			<li><a href='<s:url action="featureLeagueAction"/>'>リーグの特徴について</a></li>

		</ul>
	</div>
	<div id="main">
		<div id="top">
			<h2>登録が完了しました</h2>
		</div>
		<div id="box">
			<h2>メニュー</h2>
			<h3>
				<a href='<s:url action="PlayerAddAction"/>'>選手登録を続ける</a>
			</h3>
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