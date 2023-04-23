# PathFinder

最短経路探索をします。

## 動作確認済みのバージョン

1.19.4

## 何ができるのか
実行したエンティティから指定したターゲットまでの最短経路探索をします。

フェンスゲートの開閉など、たくさんのブロックに対応しています。

![PathFinder](https://user-images.githubusercontent.com/69749831/233824159-19d66772-9d97-4baf-827b-19f88a4619e7.png)

## 使い方

- **1回だけ実行する場合**

1. ゴールにしたいエンティティに「pf.target」タグを付けます。

2. スタートにしたいエンティティに「#pf:once_path_finder」ファンクションを実行させます。
```mcfunction
tag @e[type=armor_stand, limit=1, sort=nearest] add pf.target
execute as @p run function #pf:once_path_finder
```

- **常時実行する場合**
1. ゴールにしたいエンティティに常時「pf.target」タグを付けます。

2. スタートにしたいエンティティ「#pf:path_finder」ファンクションを常時実行します。
```mcfunction
tag @e[type=armor_stand, limit=1, sort=nearest] add pf.target
execute as @p run function #pf:path_finder
```

**※「#pf:once_path_finder」と「#pf:path_finder」ファンクションを実行すると「pf.target」タグは消えるので注意してください。**

- **例**
- 
全てのニワトリから一番近くにいるアーマースタンドまでの経路探索

```mcfunction
## test1 function（このファンクションを常時実行する）
execute as @e[type=chicken] at @s run function example:test2
```

```mcfunction
## test2 function
tag @e[type=armor_stand, limit=1, sort=nearest] add pf.target
function #pf:path_finder
```

- **設定**

「PathFinder-vx.x.x\data\pf\functions\options\load.mcfunction」から固定スコアを設定できます。各スコアやエンティティ毎に設定できるスコアの説明は、中のコメント文を参照してください。


## ダウンロード
右の[Releases](https://github.com/kyuri092/PathFinder/releases)から**PathFinder**(データパック)をダウンロードできます。

## 依存ライブラリ
本データパックは以下のライブラリも同時に入れる必要があります。

赤石愛様:
- [AiMath](https://github.com/Ai-Akaishi/AiMath) - MIT License

## ライセンス
[MIT License](LICENSE)

## 最後に
このデータパックは、クールタイムを実装したり、簡易的な検索方法を用意したりと負荷をできるだけ小さくしようとしましたが、それでも負荷が大きいので注意してください。重い場合は、精度が落ちますが、検索方法を2にする、探索上限を減らす、クールタイムを伸ばす、などを試してみてください。軽量化教えてください。
