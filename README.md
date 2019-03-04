# tableau-server-custom-script
このスクリプトを使うことで簡単にTableau Serverのテーマカラーとロゴの変更が出来ます。

## 環境
CentOS
Tableau Server 2018.3まで確認済み

## 利用方法
ファイルをホームディレクトリなどに設置し、tableau_mono_logo.svgを配置します。  
※ロゴは変更したくなければ無くても可。tableau_upgrade.shの最初の数行コメントアウトしてもらっても大丈夫です。  
※変更したい色をsedコマンドで書き換えているので、希望する色に書き換えることが出来ます。  
※デフォルトだと私の好みの緑色が適用されます！  
./tableau_upgrade.sh <version path>  
上記を実行し、Tableau Serverを再起動すると反映されます。  
※Pathにはインストールした際のディレクトリのPathを入れます。  
※例：./tableau_upgrade.sh 20183.18.1214.0808  
