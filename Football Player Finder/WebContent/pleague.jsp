<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>クラブ一覧</title>
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
					<s:form action="ClubPlayerAction" id="btn">
						<td id="club"><s:property value="clubname" /></td>
						<td id="get"><input type="submit" value="調べる"> <input
							type="hidden" name="clubname"
							value='<s:property value="clubname" />'> <input
							type="hidden" name="leagueid"
							value='<s:property value="leagueid" />'></td>
					</s:form>
				</s:iterator>
			</tr>
		</table>
		<br>
		<div id="box">
			<h2>メニュー</h2>
			<div id="set">
				<!-- プレミアリーグ以外表示 -->
				<s:if test='session.id=="1"'>
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
				</s:if>
				<!-- リーガ･エスパニョーラ以外表示 -->
				<s:if test='session.id=="2"'>
					<div id="radiusP">
						<a href='<s:url action="premierAction"/>'>プレミアリーグ(イングランド)一覧へ</a>
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
				</s:if>
				<!-- セリエA以外表示 -->
				<s:if test='session.id=="3"'>
					<div id="radiusP">
						<a href='<s:url action="premierAction"/>'>プレミアリーグ(イングランド)一覧へ</a>
					</div>
					<div id="radiusL">
						<a href='<s:url action="laligaAction"/>'>リーガ・エスパニョーラ(スペイン)一覧へ</a>
					</div>
					<div id="radiusB">
						<a href='<s:url action="bundesAction"/>'>ブンデスリーガ(ドイツ)</a>
					</div>
					<div id="radius1">
						<a href='<s:url action="ligue1Action"/>'>リーグ・アン(フランス)</a>
					</div>
				</s:if>
				<!-- ブンデスリーガ以外表示 -->
				<s:if test='session.id=="4"'>
					<div id="radiusP">
						<a href='<s:url action="premierAction"/>'>プレミアリーグ(イングランド)一覧へ</a>
					</div>
					<div id="radiusL">
						<a href='<s:url action="laligaAction"/>'>リーガ・エスパニョーラ(スペイン)一覧へ</a>
					</div>
					<div id="radiusS">
						<a href='<s:url action="serieAction"/>'>セリエA(イタリア)一覧へ</a>
					</div>
					<div id="radius1">
						<a href='<s:url action="ligue1Action"/>'>リーグ・アン(フランス)</a>
					</div>
				</s:if>

				<!-- リーグ・アン以外表示 -->
				<s:if test='session.id=="5"'>
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
				</s:if>

				<h3>
					<a href='<s:url action="leagueAction"/>'>リーグ一覧へ</a>
				</h3>
				<h3>
					<a href='<s:url action="HomeAction"/>'>ホームへ戻る</a>
				</h3>
			</div>
		</div>
	</div>
</body>
</html>