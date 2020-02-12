<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" type="text/css" href="./css/table2.css">
<link rel="stylesheet" type="text/css" href="./css/radius.css">
<title>リーグごとの特徴</title>
</head>
<body>
	<div id="header">
		<div id="title">FOOTBALL PLAYER FINDER</div>
		<ul>
			<li><a href='<s:url action="thisSiteAction"/>'>このサイトについて</a></li>
			<li><a href='<s:url action="qPositionAction"/>'>ポジションの説明</a></li>
			<li><a href='<s:url action="HomeAction"/>'>ホームへ戻る</a></li>
		</ul>
	</div>
	<br><br><br><br><br><br>
	<table class="vertical_list">
		<tr>
			<th>プレミアリーグ</th>
			<td>イングランドのリーグ。<br>
				有名なクラブはリヴァプール、マンチェスターユナイテッド、マンチェスター・シティ、チェルシー、トッテナム、アーセナルのビック6と呼ばれるクラブ。
				他にも虎視眈々と上位を狙うエヴァートン、ウェストハム、レスターなど魅力的なチームが多く、フィジカルを重視した激しい試合展開が魅力のリーグ。<br>
				その競争率の激しさから"世界一優勝することが難しいリーグ"ともいわれている。
			</td>
			<td>有名選手:<br>
			セルヒオ・アグエロ(マンチェスター・シティ)<br>フィルヒル・ファンダイク(リヴァプール)</td>
		</tr>
		<tr>
			<th>リーガ・エスパニョーラ</th>
			<td>スペイン国内のリーグ。 <br>有名なクラブはバルセロナやレアルマドリードなど世界屈指の名門クラブが名を連ねている
				<br>スペインらしいテクニックを活かしたサッカーを展開するクラブが多い。<br>近年のCLではほとんどこのリーグのクラブが王者に輝いている。<br>
				内容を重視する傾向にあり、たとえ試合に勝利していてもクラブに見合ったサッカーでなければブーイングを受けることも。
			</td>
			<td>有名選手:<br>
			リオネル・メッシ(バルセロナ)<br>カリム・ベンゼマ(レアルマドリード)<br></td>
		</tr>
		<tr>
			<th>セリエA</th>
			<td>イタリア国内のリーグ。<br> 有名なクラブはユヴェントス、インテル、ナポリ、ミランなど。<br>
				守備の国イタリアと呼ばれるだけあって堅実な守備戦術を使い相手の良さを消すクラブが多く、失点数は総合的に少ない。<br>
				結果が重視されるリーグであり、リーガエスパニョーラと反対の位置にある
			</td>
			<td>有名選手:<br>
			クリスティアーノ・ロナウド(ユヴェントス)<br>ハンダノヴィッチ(インテル)<br></td>
		</tr>
		<tr>
			<th>ブンデスリーガ</th>
			<td>ドイツ国内のリーグ。<br> 有名なクラブはバイエルン、ドルトムント、レヴァークーゼンなど。<br>
				フィジカルを重視した堅実なサッカーを繰り広げる。<br>DFはめっぽう競り合いが強いがテクニックに欠ける選手が多く<br>
				FWにはテクニックに優れた選手が多い。
			</td>
			<td>有名選手:<br>
			ロベルト・レヴァンドフスキ(バイエルン)<br>マルコ・ロイス(ドルトムント)<br></td>
		</tr>
		<tr>
			<th>リーグ・アン</th>
			<td>フランス国内のリーグ。<br> 有名なクラブはパリサンジェルマン、モナコ、リヨン、マルセイユなど。<br>
				他の5大リーグと比べると登竜門のようなポジションで、戦術はフィジカル重視で緻密さに欠ける。<br>
				アフリカ系の移民が多くテクニックとフィジカルに優れた将来有望な若手が多い。
			</td>
			<td>有名選手:<br>
			ネイマール(パリ・サンジェルマン)<br>キリアン・ムバッペ(パリ・サンジェルマン)<br></td>
		</tr>
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
</body>
</html>