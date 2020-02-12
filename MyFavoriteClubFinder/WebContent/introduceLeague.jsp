<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/element.css">
<link rel="stylesheet" type="text/css" href="./css/table.css">
<title>リーグ紹介</title>
</head>
<body>
		<h4 id="siteTitle">欧州クラブ紹介所</h4>
	<div id="box2"></div>
	<div id="box">
		<div id="place">
			<a href='<s:url action="AboutThisSiteAction"/>'>このサイトについて</a>
		</div>
	</div>
	<div id="box3">
		<div id="place">紹介しているリーグ</div>
	</div>
	<div id="box">
		<div id="place">
			<a href='<s:url action="HomeAction"/>'>ホームへ</a>
		</div>
	</div>
	<div id="box2"></div>
	<table class="vertical_list">
		<tr>
			<th>プレミアリーグ</th>
			<td>イングランドのリーグ。<br>
				有名なクラブはリヴァプール、マンチェスターユナイテッド、マンチェスター・シティ、チェルシー、トッテナム、アーセナルのビック6と呼ばれるクラブ。
				他にも虎視眈々と上位を狙うエヴァートン、ウェストハム、レスターなど魅力的なチームが多く、フィジカルを重視した激しい試合展開が魅力のリーグ。<br>
				その競争率の激しさから"世界一優勝することが難しいリーグ"ともいわれている。
			</td>
			<td>有名選手:<br> セルヒオ・アグエロ(マンチェスター・シティ)<br>フィルヒル・ファンダイク(リヴァプール)
			<br>ピエール・オーバメヤン(アーセナル)<br>ハリー・ケイン(トッテナム)
			</td>
		</tr>
		<tr>
			<th>リーガ・エスパニョーラ</th>
			<td>スペイン国内のリーグ。 <br>有名なクラブはバルセロナやレアルマドリードなど世界屈指の名門クラブが名を連ねている
				<br>スペインらしいテクニックを活かしたサッカーを展開するクラブが多い。<br>近年のCLではほとんどこのリーグのクラブが王者に輝いている。<br>
				内容を重視する傾向にあり、たとえ試合に勝利していてもクラブに見合ったサッカーでなければブーイングを受けることも。
			</td>
			<td>有名選手:<br> リオネル・メッシ(バルセロナ)<br>カリム・ベンゼマ(レアルマドリード)<br>
			ヤン・オブラク(アトレティコマドリード)<br>ルイス・スアレス(バルセロナ)<br></td>
		</tr>
		<tr>
			<th>セリエA</th>
			<td>イタリア国内のリーグ。<br> 有名なクラブはユヴェントス、インテル、ナポリ、ミランなど。<br>
				守備の国イタリアと呼ばれるだけあって堅実な守備戦術を使い相手の良さを消すクラブが多く、失点数は総合的に少ない。<br>
				結果が重視されるリーグであり、リーガエスパニョーラと反対の位置にある
			</td>
			<td>有名選手:<br> クリスティアーノ・ロナウド(ユヴェントス)<br>サミール・ハンダノヴィッチ(インテル)<br>
			エディン・ジェコ(ローマ)<br>カリドゥ・クリバリ(ナポリ)<br></td>
		</tr>
		<tr>
			<th>ブンデスリーガ</th>
			<td>ドイツ国内のリーグ。<br> 有名なクラブはバイエルン、ドルトムント、レヴァークーゼンなど。<br>
				フィジカルを重視した堅実なサッカーを繰り広げる。<br>DFはめっぽう競り合いが強いがテクニックに欠ける選手が多く<br>
				FWにはテクニックに優れた選手が多い。
			</td>
			<td>有名選手:<br> ロベルト・レヴァンドフスキ(バイエルン)<br>マルコ・ロイス(ドルトムント)<br>
			ティモ・ヴェルナー(ライプツィヒ)<br>チアゴ・アルカンタラ(バイエルン)<br></td>
		</tr>
		<tr>
			<th>リーグ・アン</th>
			<td>フランス国内のリーグ。<br> 有名なクラブはパリサンジェルマン、モナコ、リヨン、マルセイユなど。<br>
				他の5大リーグと比べると登竜門のようなポジションで、戦術はフィジカル重視で緻密さに欠ける。<br>
				アフリカ系の移民が多くテクニックとフィジカルに優れた将来有望な若手が多い。
			</td>
			<td>有名選手:<br> ネイマール(パリ・サンジェルマン)<br>キリアン・ムバッペ(パリ・サンジェルマン)<br>
			ディミトリー・パイェ(マルセイユ)<br>メンフィス・デパイ(リヨン)<br></td>
		</tr>
	</table>
</body>
</html>