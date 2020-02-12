<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>結果画面</title>
<link rel="stylesheet" type="text/css" href="./css/element.css">
</head>
<body>
	<h4 id="siteTitle">欧州クラブ紹介所</h4>
	<div id="box2"></div>
	<div id="box">
		<div id="place">
			<a href='<s:url action="AboutThisSiteAction"/>'>このサイトについて</a>
		</div>
	</div>
	<div id="box">
		<div id="place">
			<a href='<s:url action="IntroduceAction"/>'>紹介しているリーグ</a>
		</div>
	</div>
	<div id="box">
		<div id="place">
			<a href='<s:url action="HomeAction"/>'>ホームへ</a>
		</div>
	</div>
	<div id="box2"></div>
	<br>
	<br>
	<br>
	<h2>あなたにおすすめのクラブは</h2>
	<s:iterator value="dtoList">
		<table>
			<tr>
				<th><img src=<s:property value="Image" />  id="clubemblem"></th>
				<td id="clubname"><s:property value="Clubname" /></td>
			</tr>
		</table>
	</s:iterator>

</body>
</html>