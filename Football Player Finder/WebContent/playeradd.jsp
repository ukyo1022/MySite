<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" type="text/css" href="./css/radius.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>選手追加画面</title>
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
			<h2>選手追加</h2>
		</div>
		<div id="box">
			<h2>リーグ一覧</h2>
			<div id="submit">
				<s:form action="PlayerSetAction">
					<input type="submit" value="プレミアリーグ" id="radiusP">
					<input type="hidden" value="1" name="leagueid" />
				</s:form>
				<s:form action="PlayerSetAction">
					<input type="submit" value="リーガ・エスパニョーラ" id="radiusL">
					<input type="hidden" value="2" name="leagueid" />
				</s:form>
				<s:form action="PlayerSetAction">
					<input type="submit" value="セリエA" id="radiusS">
					<input type="hidden" value="3" name="leagueid" />
				</s:form>
				<s:form action="PlayerSetAction">
					<input type="submit" value="ブンデスリーガ" id="radiusB">
					<input type="hidden" value="4" name="leagueid" />
				</s:form>
				<s:form action="PlayerSetAction">
					<input type="submit" value="リーグ・アン" id="radius1">
					<input type="hidden" value="5" name="leagueid" />
				</s:form>
			</div>
			<h2>
				<a href='<s:url action="HomeAction"/>'>ホームへ</a>
			</h2>
		</div>
	</div>
</body>
</html>