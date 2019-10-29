<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理者登録フォーム</title>
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
			<li><a href='<s:url action="HomeAction"/>'>ホームへ戻る</a></li>
		</ul>
	</div>
	<div id="main">
		<div id="box">
			<h2>以下の項目を入力して登録を完了しよう！</h2>
			<s:if test="errorMessage !=null">
				<div class="errorMessage">
					<s:property value="errorMessage" />
					<br>
				</div>
			</s:if>
			<br>
			<s:form action="InsertAddCAction">
				管理者ID：<input type="text" name="id"
					value='<s:property value="%{id}"/>' />
				<br>
				<br>
				パスワード：<input type="password" name="password" />
				<br>
				<br>
				<input type="submit" value="登録">
			</s:form>
		</div>
	</div>
</body>
</html>