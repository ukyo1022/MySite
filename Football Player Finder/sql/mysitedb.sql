set names utf8;
set foreign_key_checks=0;
drop database if exists mysitedb;

create database if not exists mysitedb;
use mysitedb;

drop table if exists premier_league;

create table premier_league(
id int not null primary key auto_increment,
club_name varchar(30),
leagueid varchar(5)
);

drop table if exists laliga_league;

create table laliga_league(
id int not null primary key auto_increment,
club_name varchar(30),
leagueid varchar(5)
);

drop table if exists bundes_league;

create table bundes_league(
id int not null primary key auto_increment,
club_name varchar(30),
leagueid varchar(5)
);

drop table if exists serie_league;

create table serie_league(
id int not null primary key auto_increment,
club_name varchar(30),
leagueid varchar(5)
);

drop table if exists ligue1_league;

create table ligue1_league(
id int not null primary key auto_increment,
club_name varchar(30),
leagueid varchar(5)
);

drop table if exists premier_player;

create table premier_player(
player_name varchar(30),
number int,
club_name varchar(30),
player_country varchar(30),
position varchar(3)
);

drop table if exists laliga_player;

create table laliga_player(
player_name varchar(30),
number int,
club_name varchar(30),
player_country varchar(30),
position varchar(3)
);

drop table if exists serie_player;

create table serie_player(
player_name varchar(30),
number int,
club_name varchar(30),
player_country varchar(30),
position varchar(3)
);

drop table if exists bundes_player;

create table bundes_player(
player_name varchar(30),
number int,
club_name varchar(30),
player_country varchar(30),
position varchar(3)
);

drop table if exists ligue1_player;

create table ligue1_player(
player_name varchar(30),
number int,
club_name varchar(30),
player_country varchar(30),
position varchar(3)
);

drop table if exists admin;

create table admin(
name varchar(16),
password varchar(8) unique
);

INSERT INTO admin(name,password)VALUES("admin","admin")

INSERT INTO premier_league(club_name,leagueid)VALUES("アーセナルFC","1");
INSERT INTO premier_league(club_name,leagueid)VALUES("マンチェスター・ユナイテッド","1");
INSERT INTO premier_league(club_name,leagueid)VALUES("マンチェスター・シティ","1");
INSERT INTO premier_league(club_name,leagueid)VALUES("トッテナム","1");
INSERT INTO premier_league(club_name,leagueid)VALUES("チェルシー","1");
INSERT INTO premier_league(club_name,leagueid)VALUES("リヴァプール","1");
INSERT INTO premier_league(club_name,leagueid)VALUES("レスター・シティ","1");
INSERT INTO premier_league(club_name,leagueid)VALUES("シェフィールド","1");
INSERT INTO premier_league(club_name,leagueid)VALUES("ウルヴァー・ハンプトン","1");
INSERT INTO premier_league(club_name,leagueid)VALUES("ワトフォード","1");
INSERT INTO premier_league(club_name,leagueid)VALUES("ウェストハム","1");
INSERT INTO premier_league(club_name,leagueid)VALUES("エヴァートン","1");
INSERT INTO premier_league(club_name,leagueid)VALUES("ノリッジ","1");
INSERT INTO premier_league(club_name,leagueid)VALUES("クリスタル・パレス","1");
INSERT INTO premier_league(club_name,leagueid)VALUES("アストン・ヴィラ","1");
INSERT INTO premier_league(club_name,leagueid)VALUES("サウサンプトン","1");
INSERT INTO premier_league(club_name,leagueid)VALUES("ニューカッスル・ユナイテッド","1");
INSERT INTO premier_league(club_name,leagueid)VALUES("ブライトン","1");
INSERT INTO premier_league(club_name,leagueid)VALUES("バーンリー","1");
INSERT INTO premier_league(club_name,leagueid)VALUES("ボーンマス","1");

INSERT INTO laliga_league(club_name,leagueid)VALUES("FCバルセロナ","2");
INSERT INTO laliga_league(club_name,leagueid)VALUES("レアル・マドリード","2");
INSERT INTO laliga_league(club_name,leagueid)VALUES("アトレティコ・マドリード","2");
INSERT INTO laliga_league(club_name,leagueid)VALUES("バレンシア","2");
INSERT INTO laliga_league(club_name,leagueid)VALUES("セビージャ","2");
INSERT INTO laliga_league(club_name,leagueid)VALUES("ビジャレアル","2");
INSERT INTO laliga_league(club_name,leagueid)VALUES("アスレティック・ビルバオ","2");
INSERT INTO laliga_league(club_name,leagueid)VALUES("ヘタフェ","2");
INSERT INTO laliga_league(club_name,leagueid)VALUES("ベティス","2");
INSERT INTO laliga_league(club_name,leagueid)VALUES("レアル・ソシエダ","2");
INSERT INTO laliga_league(club_name,leagueid)VALUES("バジャドリード","2");
INSERT INTO laliga_league(club_name,leagueid)VALUES("アラベス","2");
INSERT INTO laliga_league(club_name,leagueid)VALUES("エイバル","2");
INSERT INTO laliga_league(club_name,leagueid)VALUES("グラナダ","2");
INSERT INTO laliga_league(club_name,leagueid)VALUES("エスパニョール","2");
INSERT INTO laliga_league(club_name,leagueid)VALUES("セルタ","2");
INSERT INTO laliga_league(club_name,leagueid)VALUES("マジョルカ","2");
INSERT INTO laliga_league(club_name,leagueid)VALUES("レバンテ","2");
INSERT INTO laliga_league(club_name,leagueid)VALUES("オサスナ","2");
INSERT INTO laliga_league(club_name,leagueid)VALUES("レガネス","2");

INSERT INTO serie_league(club_name,leagueid)VALUES("ユヴェントス","3");
INSERT INTO serie_league(club_name,leagueid)VALUES("インテル","3");
INSERT INTO serie_league(club_name,leagueid)VALUES("ナポリ","3");
INSERT INTO serie_league(club_name,leagueid)VALUES("ローマ","3");
INSERT INTO serie_league(club_name,leagueid)VALUES("アタランタ","3");
INSERT INTO serie_league(club_name,leagueid)VALUES("トリノ","3");
INSERT INTO serie_league(club_name,leagueid)VALUES("ミラン","3");
INSERT INTO serie_league(club_name,leagueid)VALUES("サンプドリア","3");
INSERT INTO serie_league(club_name,leagueid)VALUES("ジェノア","3");
INSERT INTO serie_league(club_name,leagueid)VALUES("レッチェ","3");
INSERT INTO serie_league(club_name,leagueid)VALUES("サッスオーロ","3");
INSERT INTO serie_league(club_name,leagueid)VALUES("パルマ","3");
INSERT INTO serie_league(club_name,leagueid)VALUES("ラツィオ","3");
INSERT INTO serie_league(club_name,leagueid)VALUES("カリアリ","3");
INSERT INTO serie_league(club_name,leagueid)VALUES("フィオレンティーナ","3");
INSERT INTO serie_league(club_name,leagueid)VALUES("ウディネーゼ","3");
INSERT INTO serie_league(club_name,leagueid)VALUES("ボローニャ","3");
INSERT INTO serie_league(club_name,leagueid)VALUES("エラス・ヴェローナ","3");
INSERT INTO serie_league(club_name,leagueid)VALUES("ブレシア","3");
INSERT INTO serie_league(club_name,leagueid)VALUES("SPAL","3");

INSERT INTO bundes_league(club_name,leagueid)VALUES("バイエルン・ミュンヘン","4");
INSERT INTO bundes_league(club_name,leagueid)VALUES("ボルシア・ドルトムント","4");
INSERT INTO bundes_league(club_name,leagueid)VALUES("レヴァークーゼン","4");
INSERT INTO bundes_league(club_name,leagueid)VALUES("ボルシアMG","4");
INSERT INTO bundes_league(club_name,leagueid)VALUES("ホッフェンハイム","4");
INSERT INTO bundes_league(club_name,leagueid)VALUES("ヴォルフスブルク","4");
INSERT INTO bundes_league(club_name,leagueid)VALUES("RBライプツィヒ","4");
INSERT INTO bundes_league(club_name,leagueid)VALUES("フライブルク","4");
INSERT INTO bundes_league(club_name,leagueid)VALUES("シャルケ","4");
INSERT INTO bundes_league(club_name,leagueid)VALUES("フランクフルト","4");
INSERT INTO bundes_league(club_name,leagueid)VALUES("ヘルタ・ベルリン","4");
INSERT INTO bundes_league(club_name,leagueid)VALUES("ヴェルダー・ブレーメン","4");
INSERT INTO bundes_league(club_name,leagueid)VALUES("デュッセルドルフ","4");
INSERT INTO bundes_league(club_name,leagueid)VALUES("ウニオン・ベルリン","4");
INSERT INTO bundes_league(club_name,leagueid)VALUES("ケルン","4");
INSERT INTO bundes_league(club_name,leagueid)VALUES("アウクスブルク","4");
INSERT INTO bundes_league(club_name,leagueid)VALUES("マインツ","4");
INSERT INTO bundes_league(club_name,leagueid)VALUES("パダーボルン","4");

INSERT INTO ligue1_league(club_name,leagueid)VALUES("パリ・サンジェルマン","5");
INSERT INTO ligue1_league(club_name,leagueid)VALUES("ナント","5");
INSERT INTO ligue1_league(club_name,leagueid)VALUES("スタッド・ランス","5");
INSERT INTO ligue1_league(club_name,leagueid)VALUES("マルセイユ","5");
INSERT INTO ligue1_league(club_name,leagueid)VALUES("アンジェ","5");
INSERT INTO ligue1_league(club_name,leagueid)VALUES("ボルドー","5");
INSERT INTO ligue1_league(club_name,leagueid)VALUES("リール","5");
INSERT INTO ligue1_league(club_name,leagueid)VALUES("モンペリエ","5");
INSERT INTO ligue1_league(club_name,leagueid)VALUES("ブレスト","5");
INSERT INTO ligue1_league(club_name,leagueid)VALUES("サンテティエンヌ","5");
INSERT INTO ligue1_league(club_name,leagueid)VALUES("ニース","5");
INSERT INTO ligue1_league(club_name,leagueid)VALUES("レンヌ","5");
INSERT INTO ligue1_league(club_name,leagueid)VALUES("アミアン","5");
INSERT INTO ligue1_league(club_name,leagueid)VALUES("モナコ","5");
INSERT INTO ligue1_league(club_name,leagueid)VALUES("トゥールーズ","5");
INSERT INTO ligue1_league(club_name,leagueid)VALUES("メス","5");
INSERT INTO ligue1_league(club_name,leagueid)VALUES("リヨン","5");
INSERT INTO ligue1_league(club_name,leagueid)VALUES("ニーム","5");
INSERT INTO ligue1_league(club_name,leagueid)VALUES("ディジョン","5");
INSERT INTO ligue1_league(club_name,leagueid)VALUES("ストラスブール","5");