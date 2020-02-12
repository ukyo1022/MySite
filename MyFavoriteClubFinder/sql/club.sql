 set names utf8;
set foreign_key_checks=0;

use mysitedb;
drop table if exists findclubs;

create table findclubs(
clubname varchar(30) unique,
style tinyint,
aggressive tinyint,
isFamous tinyint,
rookie tinyint,
worldclass tinyint,
leaguenumber int(3),
emblem varchar(50) unique
);

insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("アーセナル",1,1,1,1,1,1,"./image/clubEmblem/arsenal.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ウルヴァーハンプトン",0,1,0,0,0,1,"./image/clubEmblem/Wolves.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("リヴァプール",1,1,1,1,1,1,"./image/clubEmblem/liverpool.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("マンチェスター・シティ",1,1,1,0,1,1,"./image/clubEmblem/manchesterC.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("レスター・シティ",0,1,1,0,0,1,"./image/clubEmblem/leicester.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("チェルシー",1,1,1,1,1,1,"./image/clubEmblem/chelsea.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("マンチェスター・ユナイテッド",0,1,1,1,0,1,"./image/clubEmblem/manchesterU.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("トッテナム",1,1,1,0,1,1,"./image/clubEmblem/tot.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("シェフィールド",1,0,0,0,0,1,"./image/clubEmblem/Sheffield.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("サウサンプトン",0,1,1,1,0,1,"./image/clubEmblem/southampton.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("クリスタル・パレス",0,0,0,0,0,1,"./image/clubEmblem/crystal_palace.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("エヴァートン",1,0,1,1,0,1,"./image/clubEmblem/everton.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("バーンリー",0,0,0,1,0,1,"./image/clubEmblem/burnley.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ニューカッスル",0,0,0,1,0,1,"./image/clubEmblem/newcastle.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ブライトン",1,1,0,1,0,1,"./image/clubEmblem/brighton.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("アストン・ヴィラ",0,1,0,1,0,1,"./image/clubEmblem/aston_villa.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ウェストハム・ユナイテッド",1,1,0,1,0,1,"./image/clubEmblem/westham.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ボーンマス",1,0,0,1,0,1,"./image/clubEmblem/bournemouth.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ワトフォード",0,1,0,0,0,1,"./image/clubEmblem/watford.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ノリッジ・シティ",0,1,1,1,0,1,"./image/clubEmblem/norwich.jpg");


insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("バルセロナ",1,1,1,0,1,2,"./image/clubEmblem/barca.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("アトレティコ・マドリード",0,0,1,1,1,2,"./image/clubEmblem/atletico.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("バレンシア",0,1,1,1,0,2,"./image/clubEmblem/valencia.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("レアル・マドリード",0,1,1,1,1,2,"./image/clubEmblem/real_madrid.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("セビージャ",1,0,1,1,0,2,"./image/clubEmblem/sevilla.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ヘタフェ",0,0,0,1,0,2,"./image/clubEmblem/getafe.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ソシエダ",0,1,0,1,0,2,"./image/clubEmblem/sociedad.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ビジャレアル",1,1,1,1,0,2,"./image/clubEmblem/villarreal.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ビルバオ",1,0,1,1,0,2,"./image/clubEmblem/bilbao.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("オサスナ",0,1,0,0,0,2,"./image/clubEmblem/osasuna.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("グラナダ",0,1,0,0,0,2,"./image/clubEmblem/granada.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ベティス",1,1,1,1,0,2,"./image/clubEmblem/betis.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("レバンテ",0,1,0,0,0,2,"./image/clubEmblem/levante.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("アラベス",1,0,0,0,0,2,"./image/clubEmblem/alaves.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("エイバル",0,1,0,1,0,2,"./image/clubEmblem/eibar.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("バジャドリー",0,1,0,1,0,2,"./image/clubEmblem/Valladolid.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("マジョルカ",1,0,0,1,0,2,"./image/clubEmblem/mallorca.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("セルタ",1,0,0,1,0,2,"./image/clubEmblem/celta.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("レガネス",1,0,0,0,0,2,"./image/clubEmblem/leganes.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("エスパニョール",0,0,0,1,0,2,"./image/clubEmblem/espanyol.jpg");


insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ナポリ",1,1,1,0,0,3,"./image/clubEmblem/napoli.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ユヴェントス",1,1,1,1,1,3,"./image/clubEmblem/juve.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("インテル",0,1,1,1,1,3,"./image/clubEmblem/inter.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ラツィオ",0,1,1,1,1,3,"./image/clubEmblem/lazio.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ローマ",1,1,1,1,0,3,"./image/clubEmblem/roma.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("アタランタ",0,1,0,1,0,3,"./image/clubEmblem/atalanta.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("カリアリ",1,1,0,1,0,3,"./image/clubEmblem/cagliari.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("パルマ",0,1,1,1,0,3,"./image/clubEmblem/Parma.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ミラン",0,1,1,1,1,3,"./image/clubEmblem/milan.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("エラス・ヴェローナ",0,1,0,1,0,3,"./image/clubEmblem/verona.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ボローニャ",1,1,1,1,0,3,"./image/clubEmblem/bologna.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("トリノ",1,0,1,1,0,3,"./image/clubEmblem/torino.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("フィオレンティーナ",0,1,1,1,0,3,"./image/clubEmblem/fiorentina.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ウディネーゼ",0,0,0,0,0,3,"./image/clubEmblem/udinese.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("サッスオーロ",0,1,0,0,0,3,"./image/clubEmblem/sassuolo.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("サンプドリア",1,0,0,0,0,3,"./image/clubEmblem/sampdoria.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("レッチェ",1,0,0,1,0,3,"./image/clubEmblem/lecce.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("SPAL",0,0,0,1,0,3,"./image/clubEmblem/spal.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ジェノア",1,0,0,1,0,3,"./image/clubEmblem/genoa.jpg");
insert into findclubs(clubname,style,aggressive,isFamous,rookie,worldclass,leaguenumber,emblem)
values("ブレシア",1,0,0,1,0,3,"./image/clubEmblem/Brescia.jpg");
