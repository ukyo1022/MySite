<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>選手情報入力画面</title>
<link rel="stylesheet" type="text/css" href="./css/style.css">
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
			<h2>選手情報を入力してください</h2>
		</div>
		<s:form action="PlayerInsertAction">
			<s:if test="errorMessage !=null">
				<div class="errorMessage">
					<s:property value="errorMessage" />
					<br>
					<s:if test='playername==""'>
						選手名が入力されていません。<br>
					</s:if>
					<s:if test='number==""'>
						背番号が入力されていません。<br>
					</s:if>
					<s:if test='country==""'>
						国籍が入力されていません。<br>
					</s:if>
				</div>
			</s:if>
			<div id="box">

				<s:if test='#session.league=="1"'>
					<input type="hidden" name="leagueplayer" value="1" />
				</s:if>
				<s:elseif test='#session.league=="2"'>
					<input type="hidden" name="leagueplayer" value="2" />
				</s:elseif>
				<s:elseif test='#session.league=="3"'>
					<input type="hidden" name="leagueplayer" value="3" />
				</s:elseif>
				<s:elseif test='#session.league=="4"'>
					<input type="hidden" name="leagueplayer" value="4" />
				</s:elseif>
				<s:elseif test='#session.league=="5"'>
					<input type="hidden" name="leagueplayer" value="5" />
				</s:elseif>
				<br>
				<p>
					選手名: <input type="text" name="playername"
						value='<s:property value="%{playername}"/>' />
				</p>
				<p>
					背番号: <input type="text" name="number"
						value='<s:property value="%{number}"/>' />
				</p>
				<p>
					クラブ名: <select name="clubname">
						<s:iterator value="#session.premierList">
							<option>
								<s:property value="clubname" />
							</option>
						</s:iterator>
					</select>
				</p>
				<p>
					国籍:<input type="text" name="country"
						value='<s:property value="%{country}"/>' />
				</p>
				<p>
					ポジション: <select name="position">
						<option value="GK">GK</option>
						<option value="CB">CB</option>
						<option value="LSB">LSB</option>
						<option value="RSB">RSB</option>
						<option value="MF">MF</option>
						<option value="LMF">LMF</option>
						<option value="RMF">RMF</option>
						<option value="LWF">LWF</option>
						<option value="RWF">RWF</option>
						<option value="ST">ST</option>
						<option value="CF">CF</option>
					</select>
				</p>
				<input type="submit" value="登録" />
			</div>
		</s:form>
	</div>

</body>
</html>