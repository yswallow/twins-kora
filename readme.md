###  これなん
テキトーにCSVファイルを書いたらそれに合わせてTWINSの画面を作ってくれます

### 中身
* `twins-maker.rb`
* `layout.erb`
* `StyleSheet.css`
* `readme.md`
* `sample/` :入力ファイル例と出力ファイル例
  - `rakutan.csv`
  - `twins-kora.html`  // `StyleSheet.css` の path は出力後に書き換えました
  
### usage
1. `rakutan.csv` を書く // 項目の順番はバラバラでも適当に判断してくれます
2. `ruby twins-maker.rb`
3. `twins-kora.html` をブラウザで開く

#### `rakutan.csv` の項目,デフォルト値
| 項目名 | デフォルト値 |
|:----:|:----:|
| 科目区分 | `専門基礎科目` |
| 科目番号 | `1234567` |
| 科目名 | `クソ単位` |
| 単位数 | `1.0` |
| 年度 | `2015` |
| 評語 | `D` |
| 合否 | `否` |
