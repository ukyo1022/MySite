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
<title>ポジションの説明</title>
</head>
<body>
	<div id="header">
		<div id="title">FOOTBALL PLAYER FINDER</div>
		<ul>
			<li><a href='<s:url action="thisSiteAction"/>'>このサイトについて</a></li>
			<li><a href='<s:url action="featureLeagueAction"/>'>リーグの特徴について</a></li>
			<li><a href='<s:url action="HomeAction"/>'>ホームへ戻る</a></li>

		</ul>
	</div>
	<table class="vertical_list">
		<tr>
			<th>GK</th>
			<td>ゴールキーパー:<br>相手のシュートをとめて失点を防ぐポジション。<br>最近ではシュートセーブだけでなく
				パスの正確性やボールコントロールの高さが求められているポジション
			</td>
			<td>有名な選手:<br>ダビド・デ・ヘア(マンチェスター・ユナイテッド)<br>ヤン・オブラク(アトレティコ・マドリード)</td>
		</tr>
		<tr>
			<th>CB</th>
			<td>センターバック:<br>中央後ろに位置する守備的ポジション。<br>
				フィジカルの強さや判断力はもちろん、パス能力やスピードも戦術によって求められる。
			</td><td>有名な選手:<br>フィルヒル・ファンダイク(リヴァプール)<br>セルヒオ・ラモス(レアル・マドリード)</td>
		</tr>
		<tr>
			<th>RSB</th>
			<td>右サイドバック:<br>右後ろに位置する守備的ポジション。<br>
				全ての能力が平均的に高い選手が多く運動量、テクニックを駆使して攻撃参加する選手が多い
			</td>
			<td>有名な選手:<br>ヨシュア・キミッヒ(バイエルン)<br>ダニエル・カルバハル(レアル・マドリード)</td>
		</tr>
		<tr>
			<th>LSB</th>
			<td>左サイドバック:<br>左後ろに位置する守備的ポジション。<br>
				全ての能力が平均的に高い選手が多く運動量、テクニックを駆使して攻撃参加する選手が多い<br>
				世界で最も人数が少ないポジションでもある。
			</td><td>有名な選手:<br>マルセロ(レアル・マドリード)<br>ジョルディ・アルバ(バルセロナ)</td>
		</tr>
		<tr>
			<th>MF</th>
			<td>センターハーフ:<br>中央に位置するポジション。<br>
			基本的には中央で攻守に積極的に参加するポジションだが、ボランチと呼ばれる守備的MFや<br>
			トップ下と呼ばれるCFの後ろに位置する攻撃特化の選手もいる<br>
			運動量に優れた選手、フィジカルに優れた選手、テクニックに優れている選手などさまざまなタイプがいる
			</td><td>有名な選手:<br>アンドレス・イニエスタ(ヴィッセル神戸)<br>
			セルヒオ・ブスケツ(バルセロナ)<br>ケヴィン・デ・ブライネ(マンチェスター・シティ)</td>
		</tr>
		<tr>
			<th>RMF</th>
			<td>右サイドハーフ:<br>中央右に位置するポジション。<br>
			スピードやテクニックのある選手が多くRWF、RSBなど同じサイドのポジションを複数できる選手が多い。
			</td>
			<td>有名な選手:<br>アリエン・ロッベン(元サッカー選手)<br>リヤド・マフレズ(マンチェスター・シティ)</td>
		</tr>
		<tr>
			<th>LMF</th>
			<td>左サイドハーフ:<br>中央左に位置するポジション。<br>
			スピードやテクニックのある選手が多くLWF、LSBなど同じサイドのポジションを複数できる選手が多い。</td>
			<td>有名な選手:<br>フランク・リベリー(フィオレンティーナ)<br>フィリペ・コウチーニョ(バイエルン)</td>
		</tr>
		<tr>
			<th>RWF</th>
			<td>右ウィング:<br>右サイドに位置するフォワード。<br>
			RMFと同じくスピードやテクニックに優れ左利きの選手が多く、決定力やチャンスメイク能力などが求められる</td>
			<td>有名な選手:<br>キリアン・ムバッペ(パリ・サンジェルマン)<br>ガレス・ベイル(レアル・マドリード)</td>
		</tr>
		<tr>
			<th>LWF</th>
			<td>左ウィング:<br>左サイドに位置するフォワード。<br>
			LMFと同じくスピードやテクニックに優れ右利きの選手が多く、決定力やチャンスメイク能力などが求められる</td>
			<td>有名な選手:<br>クリスティアーノ・ロナウド(ユヴェントス)<br>
			ネイマール(パリ・サンジェルマン)</td>
		</tr>
		<tr>
			<th>ST</th>
			<td>セカンドトップ:<br>FWとMFの間に位置するポジション。<br>
			テクニックとチャンスメイクが非常に優れた選手が多く、WFも出来る選手が多い。<br>
			チームによってはこのポジションを使った0トップと呼ばれる戦術もある
			</td>
			<td>有名な選手:<br>リオネル・メッシ(バルセロナ)<br>
			パウロ・ディバラ(ユヴェントス)</td>
		</tr>
		<tr>
			<th>CF</th>
			<td>センターフォワード:中央最前線に位置するポジション。<br>
			最も攻撃的なポジションであり、決定力に優れた選手が多い。<br>
			MFと同じくさまざまなタイプの選手がいる。<br>
			主に南米の選手はテクニックに優れ、アフリカはフィジカル、欧州は万能型の選手が多い</td>
			<td>有名な選手:<br>ルイス・スアレス(バルセロナ)<br>
			セルヒオ・アグエロ(マンチェスター・シティ)</td>
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