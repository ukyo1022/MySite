<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>favorite club finder</title>
<link rel="stylesheet" type="text/css" href="./css/element.css">
</head>
<body>
	<h4 id="siteTitle">欧州クラブ紹介所</h4>
	<div id="box2"></div>
	<div id="box">
		<div id="place"><a href='<s:url action="AboutThisSiteAction"/>'>このサイトについて</a></div>
	</div>
	<div id="box">
		<div id="place"><a href='<s:url action="IntroduceAction"/>'>紹介しているリーグ</a></div>
	</div>
	<div id="box3">
		<div id="place">ホーム</div>
	</div>

	<div id="box2"></div>
	<br>
	<div id="main">
		<s:form action="JumpQuestionPageAction">
			<div id="submit">
				<br> <input type="submit" value="スタート" id="sbtn">
			</div>
		</s:form>
	</div>
</body>
</html>