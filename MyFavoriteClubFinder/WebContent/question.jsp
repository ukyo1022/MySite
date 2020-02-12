<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/element.css">
<title>質問ページ</title>
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
	<div id="box">
		<div id="place"><a href='<s:url action="HomeAction"/>'>ホームへ</a></div>
	</div>
	<div id="box2"></div>
	<br>
	<br>
	<br>
	<h2>↓以下の質問に当てはまる物にチェックをつけてください↓</h2>
	<div id="main2">
		<form action="ClubJudgeAction">
			<label>1.パスサッカーが好き： <s:checkbox type="checkbox"
					name="isLikeStyle" /></label> <br> <label>2.攻撃力のあるチームが好き： <s:checkbox
					name="isLikeAtack" /></label> <br> <label>3.世界的なクラブを応援したい： <s:checkbox
					name="isLikeFamous" /></label> <br> <label> 4.有望な若手が見たい： <s:checkbox
					name="isLikeRookie" /></label> <br> <label>5.世界的な選手が見たい： <s:checkbox
					name="isLikeWorldClass" /></label> <br> <br>
			6.以下のリーグで良いと思うものを１つ直感的にチェックしてください<br> <label>プレミアリーグ：<s:checkbox
					name="isKnowPremier" /></label> <br> <label>リーガ・エスパニョーラ： <s:checkbox
					name="isKnowLaliga" /></label> <br> <label> セリエA： <s:checkbox
					name="isKnowSerie" /></label> <br> <label>ブンデスリーガ：<s:checkbox
					name="isKnowBundes" /></label> <br> <label>リーグ・アン： <s:checkbox
					name="isKnowLigue1" /></label> <br> <input type="submit" value="完了"
				id="sbtn">
		</form>
	</div>
</body>
</html>