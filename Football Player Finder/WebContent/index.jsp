<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
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
			<h2>以下の項目から選手を検索できます</h2>
		</div>
		<div id="left">
			<div id="radius">国籍で探す</div>
			<br>
			<s:form action="CountryAction">
				<select name="region">
					<option>地域を選んでください</option>
					<option value="アジア">アジア</option>
					<option value="アフリカ">アフリカ</option>
					<option value="南米">南米</option>
					<option value="北中米">北中米</option>
					<option value="ヨーロッパ">ヨーロッパ</option>
				</select>
				<s:submit value="検索" id="submit_btn" />
			</s:form>
			<div id="radius">ポジションで探す</div>
			<br>
			<s:form action="PositionPlayerAction">
				<select name="position">
					<option>ポジションを選んでください</option>
					<option value="GK">GK</option>
					<option value="CB">CB</option>
					<option value="RSB">RSB</option>
					<option value="LSB">LSB</option>
					<option value="MF">MF</option>
					<option value="RMF">RMF</option>
					<option value="LMF">LMF</option>
					<option value="RWF">RWF</option>
					<option value="LWF">LWF</option>
					<option value="CF">CF</option>
					<option value="ST">ST</option>
				</select>
				<s:submit id="submit_btn" value="検索" />
			</s:form>
		</div>
		<div id="right">
			<div id="radius">所属リーグで探す</div>
			<h3>
				<a href='<s:url action="leagueAction"/>'>リーグ一覧へ</a>
			</h3>
			<br>
			<div id="radius">選手情報管理ページ</div>
			<h3>※管理者専用</h3>
			<s:if test="errorMessage !=null">
				<div class="errorMessage">
					<s:property value="errorMessage" />
					<br>
				</div>
			</s:if>
			<s:form action="PlayerAddAction">
				<p>
					管理者ID <input type="text" name="name"
						value='<s:property value="%{name}"/>' />
				</p>
				<p>
					パスワード <input type="password" name="password" />
				</p>
				<input type="submit" value="ログイン" />
			</s:form>
		</div>
	</div>
</body>
</html>