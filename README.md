# 第10回ABiS脳画像解析チュートリアル

ここは、2021年12月18-19日に開催予定である **『先端バイオイメージング支援プラットフォーム・ABiSチュートリアル』** の受講者を対象とした情報提供サイトです。新しい情報があれば、随時このサイトへ追加していきますので、定期的にアクセスするようにして下さい

## 新着情報

- 2021.11.08 macOSのサポートのバージョンを更新しました
- 2021.11.06 Lin4Neuroのダウンロード先などを更新しました
- 2021.10.30 チュートリアル用ウェブサイトを立ち上げました

## 会場案内

- 今回はWeb開催となります
- Zoomの開始時間は、**08：30** です

## チュートリアルのスケジュール(予定)

| 日程		| 内容 							| 
---- | ----
12月18日 |  
08:30 | Zoomオープン
09:00-09:05 | 開会
09:05-11:30 | 第1部: 前処理(東京都健康長寿医療センター・下地)
09:05-10:10 | 第1部(1): 脳MRIをMNI空間へ変換
10:20-11:30 | 第1部(2): 訓練、検証、試験
11:30-12:30 | -- 昼 食 --
12:30-14:40 | 第2部: 脳画像解析のためのPython入門(筑波大学・根本)
12:30-13:30 | 第2部(1): 脳画像解析のためのPython入門(1)
13:45-14:45 | 第2部(2): 脳画像解析のためのPython入門(2)
15:00-17:45 | 第3部: Deep Learning入門
15:00-16:15 | 第3部(1): 全結合層と活性化関数
16:30-17:45 | 第3部(2): モデルの構築と評価
17:45-18:00 | 質疑応答
12月19日 |  
08:30 | Zoomオープン
09:00-17:40 | 第4部: 深層学習による画像分類(下地)
09:00-10:10 | 第4部(1): 画像データと numpy配列
10:20-11:30 | 第4部(2): OASISデータセット
11:30-12:30 | -- 昼 食 --
12:30-13:40 | 第4部(3): 畳み込み層とプーリング層
13:50-15:00 | 第4部(4): 過学習と未学習
15:10-16:20 | 第4部(5): データの水増し、正則化、ドロップアウト
16:30-17:40 | 第4部(6): 早期終了のコールバック
17:40-18:00 | 質疑応答

## 予習

- テキストは、画面左上の sf_share アイコンをクリックしていただき、"abis-202112" → "textbook" → "textbook.html" をクリックしていただくと、当日のテキストのリンクが一覧になっています。内容は直前までアップデートされていきますが、事前に目を通していただくと、余裕をもってチュートリアルに参加できると思いますので目を通しておくことをおすすめします


<!--
(図ではウィンドウがいくつも立ち上がっていますが説明のためなので実際はファイルマネージャーはいくつも立ち上がりません)

    ![当日のテキスト](img/vb25.png)

-->

----

## パソコンの準備について

- チュートリアルでは、受講者にご自身でPCを準備して頂き、実際に操作しながらコマンドラインについて学んでいきます。PCのスペックについては、以下の **推奨条件** を参考にして下さい

	- OS: Windows10 64bit版 または macOS 10.14.6（Mojave）- 12.0.1 (Monterey）
	- CPU: Intel Core i7/i9、Intel Core i5（クロック周波数2.0GHz以上）、または AMD Ryzen 5以上の性能を有するもの **注意: 現在、Apple M1はVirtualBoxで仮想マシンを動作できないため、サポート対象外となります**
	- メモリ：8GB以上 (可能ならば16GB以上を推奨します)
	- ハードディスク：100GB以上の空き容量 (外付けハードディスクも可)
	- 2ボタン以上のUSBマウス (必須ではありませんが、持っていると便利です)
	- 2画面のディスプレイ (自身の作業用とZoomの画面をうつすために2画面を推奨します。2画面が準備できない方は、Zoomの画面をうつすためだけのPCやタブレットを準備してください)



    
## 事前準備

- **チュートリアルの準備には、約8-10時間必要となります。時間に十分に余裕をもって準備をされてください。なお、準備が終わった方にのみ当日のZoomのリンクが送信されますので、必ず準備を行ってください。準備なしの参加はできません**

- チュートリアルに向けて、以下の準備をお願いします

    A. チュートリアル用Lin4Neuro仮想アプライアンスのダウンロード (2-3時間)

    B. VirtualBoxのインストール (10分)

    C. VirtualBoxへのLin4Neuroのインポート (15分)

    D. 仮想マシンの設定 (5分)

    E. Lin4Neuroの起動と設定 (10分)

    F. チュートリアルテキストの入手 (3分)

    G. 受講のためのスクリプト実行 (30分)

    参考. 仮想マシンの削除 (チュートリアル後、不要になった場合)


- 今回は完全オンライン開催ですが、受講者専用サイトに記載されているVirtualBox＋Lin4Neuroの組み合わせで参加することで、過去のチュートリアルと同様にチューターや講師による手厚いサポートが受けることができます。脳画像解析の初心者の方々は受講者専用サイトに記載されている通りに事前準備を行いチュートリアルへ参加することを強く推奨します

- 自分自身で基礎的なトラブルシューティングが行える脳画像解析の経験が豊富な中級者以上の方々は、受講者専用サイトに記載されている以外の解析環境（例えば受講者自身が構築した解析環境など）でもチュートリアルに参加可能ですが、原則としてチューターによるサポートの対象外とさせて頂きますので、ご理解、ご協力の程、よろしくお願いします

- Lin4Neuroは今回のチュートリアルにあわせてアップデートされています。**過去のLin4Neuroは使用できませんのでご注意ください**

- ソフトウェアとデータのダウンロードで合計 30GB程度ダウンロードします。Pocket Wi-Fiなどでは確実にパケ死しますので、職場やご自宅のLAN環境から作業してください

- チュートリアルに十分な環境で参加していただくために、受講環境を整えたうえで、スクリプトを実行してその値が正しい場合に限り当日のZoomアドレスをお送りします。従って、11月下旬までに必ず以下の手順を実行してください


### A. チュートリアル用Lin4Neuro仮想アプライアンスのダウンロード (所要時間約1-2時間)

- 分散ダウンロード(推奨): Lin4Neuroは16GBありますので、分散ダウンロードできるプログラムを準備してあります。自身の環境にあわせて以下の対処を行ってください。Lin4Neuroを16のファイルに分割してダウンロードします。ネットワークの環境にもよりますが、1ファイルあたり5-10分程度かかりますので、ダウンロード終了に約1-2時間かかるとお考えください

    - Windows10

        - [Windows用ダウンローダー](https://github.com/kytk/abis-web-202112/raw/main/util/l4n_win.zip)をダウンロードします

        - l4n_win.zip を展開します

        - l4n_win フォルダの中にある `get_L4N_win.bat` をダブルクリックします

        - 「WindowsによってPCが保護されました」という画面が出ますので、「詳細情報」をクリックします

        - 右下に「実行」ボタンが出ますので、実行をクリックします

        - コマンドプロンプトの画面が立ち上がり、aria2cというプログラムによるダウンロードが始まります

        - ダウンロードが完了すると、L4N-2004-abis-20211110 フォルダの中に L4N-2004-abis-20211110.ova というファイルが生成されます

        ![PC保護](img/win_get_l4n1.png)

        ![実行](img/win_get_l4n2.png)

        ![aria2c](img/win_get_l4n3.png)
 
    - macOS

        - [macOS用ダウンローダー](https://github.com/kytk/abis-web-202112/raw/main/util/l4n_mac.zip)をダウンロードします

        - l4n_mac.zip を展開します

        - l4n_mac フォルダの中にある `get_L4N.command` をダブルクリックします

        - 下図のように「開発元が未確認のため開けません。」と出るので、一度<kbd>OK</kbd>を押して、閉じます

        - 画面左上のAppleメニューから、システム環境設定をクリックし、「セキュリティとプライバシー」をクリックします

        - 「get_L4N.commandは開発元を確認できないため、使用がブロックされました。」の右側にある「このまま開く」をクリックします

        - 「開発元を検証できません。開いてもよろしいですか？」に対して、「開く」を選択します

        - そうすると、ターミナルが起動し、ダウンロードがはじまります

        - ダウンロードが完了すると、ダウンロードフォルダの L4N-2004-abis-20211110 フォルダの中に L4N-2004-abis-20211110.ova というファイルが生成されます

        ![開発元未確認](img/mac_get_l4n1.png)

        ![このまま開く](img/mac_get_l4n2.png)

        ![開く](img/mac_get_l4n3.png)

        ![分散ダウンロード](img/mac_get_l4n4.png)
 

- 一括ダウンロード: 十分にネットワークが安定している方は、以下からダウンロードしてください。16GBありますのでダウンロードには約1時間かかります。ネットワークが細い方は、上の分割ダウンロードを選択してください

    - [L4N-2004-abis-20211110.ovaのダウンロード](http://www.md.tsukuba.ac.jp/clinical-med/psy-neuroimaging/L4N/L4N-2004-abis-20211110.ova){:target="_blank"}

    - L4N-2004-abis-20211110.ovaのmd5値は、`1a43b114f264458230f2265dba11e492` になります。ファイルサイズの検証にお使いください

        - macOSならば、`openssl md5 L4N-2004-abis-20211110.ova` で確認できます
        - Windowsならば、PowerShellから、`Get-FileHash -Algorithm md5 L4N-2004-abis-20211110.ova` で確認できます


### B. VirtualBox 6.1.28以降 のインストール (所要時間約10分)

チュートリアルでは、**<span style="color: red; ">VirtualBox 6.1.28以降</span>**の上で Lin4Neuro を動作させます。最新版の Lin4Neuro は、VirtualBox 6.1.28で最適化されているため、前のバージョンのVirtualBoxを使用の方は**必ず6.1.28にアップグレードしてください。**特にmacOSは、以前のバージョンでは仮想マシンが立ち上がらない不具合がありますのでご注意ください

- [VirtualBoxのサイト](https://www.virtualbox.org/wiki/Downloads){:target="_blank"} から、ご自身のOSにあったVirtualBoxのインストーラーをダウンロードします

- ダウンロードしたインストーラーを用いてVirtualBox 6.1 をインストールします

- インストール後、VirtualBoxを起動します

    ![セットアップ後画像](img/vb01.png)

    - macOSでインストールに失敗する場合は、[macOS High Sierra以降で VirtualBox のインストールに失敗する時の最終的な対処法](https://www.nemotos.net/?p=2619){:target="_blank"} を参照ください

### C. Lin4Neuro仮想アプライアンスのインポート (所要時間約15分)

- ダウンロードした仮想アプライアンス (L4N-2004-abis-20211110.ova) を用いて仮想マシンをインポートします

- VirtualBoxのメニューから **ファイル** → **仮想アプライアンスのインポート** を選択します

    ![仮想アプライアンスのインポート1](img/vb02.png)

- ファイルに、ダウンロードした **L4N-2004-abis-20211110.ova** を指定し、 **<kbd>次へ</kbd>** をクリックします

    ![仮想アプライアンスのインポート2](img/vb03.png)

- 設定画面が出ます。ひとつだけ気をつけていただきたいのが、 **Machine Base Folder** です。このフォルダの下に仮想マシンがインストールされます。必ず、**<span style="color: red; ">100GB以上あいているところを指定してください</span>**(容量が十分にある場合は、デフォルトのままでかまいません)。外部ハードディスクを指定することもできます。SDカードは、速度が異常に遅く実用性に耐えられませんので、使わないでください

- 設定を確認したうえで、 **インポート** をクリックしてください
- インポートには10−15分程度かかります。辛抱強くお待ちください

    ![仮想アプライアンスのインポート3](img/vb04.png)

- インポートが終了すると、VirtualBoxのメイン画面に、 **L4N-2004-abis** が表示されます

    ![仮想アプライアンスのインポート4](img/vb05.png)

### D. 仮想マシンの設定 (所要時間約5分)

#### 1. 共有フォルダの設定

- 30GB以上あいているところに、Macの方はFinderから、Windowsの方はエクスプローラーから、 **share** というフォルダを作成します。すべて小文字で作成してください

- あとで確認するため、作成した share フォルダに、何か適当なファイルを入れておいてください

- VirtualBoxのメイン画面で、L4N-2004-abisをクリックし、選択してから、 **設定** をクリックします

    ![共有フォルダの設定1](img/vb06.png)

- 設定画面の左側のペインで **共有フォルダー** をクリックしたうえで、画面右側の共有フォルダを追加するアイコンをクリックします

    ![共有フォルダの設定2](img/vb07.png)

- **フォルダーのパス** の右側の▼から、**その他...** を選択し、先程作成した **share** フォルダを選択します

- フォルダー名が **share** になっていることを確認します

- **読み込み専用** と **自動マウント** は**チェックが入っていない**ことを確認してください

- このうえで、 **<kbd>OK</kbd>** をクリックします

    ![共有フォルダの設定3](img/vb08.png)

- これで、設定は終了です

### E. Lin4Neuroの起動と設定 (所要時間約10分)

- VirtualBoxのメイン画面から、 **L4N-2004-abis** を選択したうえで、 **起動** をクリックします

    ![Lin4Neuroの起動1](img/vb09.png)

    - macOSの場合、「マイクにアクセスすることを許可します」と出た場合、<kbd>OK</kbd> をクリックして許可してください。そうしないと起動しません

- 下図のような画面になります。Enter/return を押すかそのまま待てば自動で起動します

    ![grub](img/l4nboot.png)

- ログイン画面が立ち上がります。パスワードは **lin4neuro** です。すべて小文字です

    ![Lin4Neuroの起動2](img/vb10.png)


#### 1. 画面のフォント設定

- VirtualBoxのメニューから "表示" -> "仮想スクリーン" -> "XX%にスケール" を選択してください。適宜見やすい大きさに調整してください

    ![画面のスケール](img/vb18.png)

#### 2. 共有フォルダの確認

- 画面左上にある **sf_share** は共有フォルダとして設定したものです

- sf_share をダブルクリックし、先程試しに入れたファイルが見えることを確認してください

#### 3. 画像解析ツールの確認

- ログインした後、左下の脳のアイコンをクリックし、 **脳画像解析** をクリックすると、インストールされているソフトウェアを確認できます

    ![画像解析ツール](img/vb11.png)


### F. チュートリアルテキストの入手 (所要時間約3分)

- 本チュートリアルで使用するテキストは、GitLabというデータ共有サービスを通して配布します。ここで配布されるものは、チュートリアルの1週間前まで更新される可能性がありますので、こまめに（特に参加直前に）アップデートするようにして下さい

1. 初めてセットアップする時: ターミナル (Lin4Neuro では、左下のスタートアイコンの隣にあるアイコンから起動できます) から以下を実行して下さい

    ```
    cd /media/sf_share
    メールで示されているコマンドをここにタイプします
    (セキュリティの都合でここには記しません)
    ```

2. 更新する時: ターミナルから以下を実行してください

    ```
    cd /media/sf_share/abis-202112
    git pull
    ```

- こうすると、`/media/sf_share/abis-202012` の下に 様々なフォルダが生成されます

<!--
    ![filelist](img/filelist.png)


- `textbook` の中にテキストへのリンクが掲載されています

- `cheatsheet` には、チュートリアルで皆様にタイプしていただくコマンドがすべて記載されています

- その他のフォルダは講義で使用します

-->

#### プロキシサーバーなどを使っている場合

- PCがプロキシサーバを経由して外部ネットワークに接続されている場合は、先にターミナルから以下のコマンドを入力し、Gitに対するプロキシ設定を行って下さい

    ```
    git config --global http.proxy  http://プロキシ名:ポート番号
    git config --global https.proxy http://プロキシ名:ポート番号
    ```

- プロキシ名やポート番号は、所属機関･部署のネットワーク管理者にお尋ね下さい

- プロキシ設定が不要になった時は、以下のコマンドによって解除できます：

    ```
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    ```

### G. 受講のためのスクリプトを実行 (所要時間約3分)

- 環境がすべて整っているかを確認するために、確認スクリプトを実行していただきます

- ターミナルから以下をタイプしてください

    ```
    cd /media/sf_share/abis-202112
    ./abis_test.sh
    ```

- そうすると以下が表示されます

    ```
    動作確認を行います
    はじめて実行する場合は、3分程度かかります
    最後に出力される数字を報告してください
    はじめてよろしいですか (yes/no)? 
    ```

- `yes` をタイプすると、テストスクリプトが実行されます。

- 最後にターミナルに以下が表示されます。

    ```
    以下の数値を報告してください
    X.XX

    数値報告用のフォームを開いてよろしいですか? 
    yesまたはnoを入力してください

    ```

- `yes` をタイプすると、ブラウザが開きますので、メールアドレス、氏名、ふりがなと数値を入力してください。

- この数字が正しく出力された方は、準備がすべて整ったことになります。メールで、講習会のZoomリンクとSlackのリンクが送付されます
    
- ここまでたどりつけない場合は、事前サポートが必要になります。今回、Zoomのため、チュートリアル当日の個別サポートが提供できませんので、このプロセスは必須とさせていただきます

## Lin4Neuroの終了

- Lin4Neuroを終了するには、左下の脳のアイコンをしたスタートメニューから ログアウト → シャットダウン を選択します

## Zoomの設定

- チュートリアルはZoomにて開催します
- Zoomは2021年11月21日現在、バージョン5.8.4になっています。最新版を入手してください
    - 以下のリンクをクリックすることで、最新版のZoomを入手できます。(すでにインストールされている方でも以下のリンクからインストーラーを入手することでアップデートできます)
    - Windows: [https://zoom.us/client/latest/ZoomInstaller.exe](https://zoom.us/client/latest/ZoomInstaller.exe)
    - macOS: [https://zoom.us/client/latest/Zoom.pkg](https://zoom.us/client/latest/Zoom.pkg)
- 画面の共有の設定だけ変更すると受講しやすくなります
    - Zoomを起動し、サインインをクリックします

    ![Zoom起動画面](img/zoom1.png)

    - サインインします

    ![Zoomサインイン](img/zoom2.png)

    - ホーム画面で右上にある歯車アイコンをクリックします

    ![Zoom設定](img/zoom3.png)

    - 左のメニューから「画面の共有」のタブをクリックし、「画面を共有している場合のウィンドウのサイズ」を「現在のサイズを保持する」に変更します。これにより、講師が画面を共有した場合に、Zoomが全画面モードにならずにすみます

    ![画面共有設定](img/zoom4.png)

    - Zoomの設定は以上で終了です

- Zoomはメモリ消費が多いため、可能であれば、Zoomだけタブレットや仮想マシンを動かすPCとは別のPCで利用されることをおすすめします


## 問い合わせ

- 準備がうまくいかない時のために、問い合わせフォームを準備しています。こちらからご質問ください。数日以内に担当者から返信させていただきます

- [問い合わせフォーム](https://forms.gle/VekCUtMeQapZuh3e6){:target="_blank"} 


## トラブルシューティング

- これまでに問い合わせをいただいた内容とその対策を紹介します


- 【質問】「D. 仮想マシンの設定 (所要時間約5分)」の作業中、VirtualBoxのメイン画面から設定タブを押すと設定画面の下部に「無効な設定が見つかりました。」と表示され、共有フォルダなどの設定が出来ませんでした。設定をしない状態で起動を押しても、「仮想マシン"L4N-2004-abis"のセッションを開けませんでした。」という警告が出てしまいます。

    - 【回答】これは、主にHPのPCで、仮想化が有効にされていないことによります。以下の方法で解決できます

        - 一度インポートしたLin4Neuroの仮想マシンを削除してください。abis-webのページの最後のセクションを参考にしていただけたらと思います。ダウンロードしてできている .ova ファイルはまだ削除しないでください。

        - HPのBIOS設定からVT-xを有効にします。[HPの公式サイト](https://support.hp.com/jp-ja/document/c04773368) に記載がありますので、こちらを参考にしてください。

        - 再起動し、VirtualBoxに再度仮想アプライアンス（L4N-2004-abis-20211110.ova）をインポートします。

- 【質問】「C. Lin4Neuro仮想アプライアンスのインポート」の説明の通りに，ファイル → 仮想アプライアンスのインポート→ ダウンロードした「L4N-2004-abis-20211110.ova 」を指定→Machine Base Folder はデフォルトのまま→インポート，と一連の作業をしてみましたが，「仮想アプライアンスに失敗しました」とエラーが表示されました。ストレージは残り約600GB利用可能です。詳細のボタンをクリックすると「終了コード：NS_ERROR_INVALID_ARG (0x80070057)」と表示されます。

    - 【回答1】これは、Machine Base Folderに同じファイルがなんらかの理由で存在する時に起きる症状です。[こちらのページ](http://www.is.chs.nihon-u.ac.jp/students/file/import_E_INVALIDARG.pdf)に解決法が記載されています

        - 仮想メディアマネージャーを確認し、L4N-2004-abis-xxxx.vdi などがないか確認します。あったら削除してください

        - VirtualBox VMs のフォルダに L4N-2004-abis というフォルダがないかどうかを確認してください。あったらそれを削除してください

        - 再起動したうえで、再度インポートするとインポートできます

    - 【回答2】 もうひとつの可能性は、ダウンロードしたovaファイルが壊れていることによります。再ダウンロードをしていただけたらと思います
    
- 【質問】英語キーボードを使っています。どうすればいいですか。

    - 【回答】配布しているLin4Neuroの仮想マシンは日本語キーボードで設定されています。英語キーボードにするには、以下の作業を行ってください

        - メニューから "設定" -> "Fcitx設定" を選択します

            ![Fcitx設定1](img/vb16.png)

        - 画面下の矢印を使って、"キーボード - 英語(US)" が一番来るようにして、ウィンドウを閉じます

            ![Fcitx設定2](img/vb17.png)


----

## 参考. 仮想マシンの削除 (チュートリアル後、不要になった場合)

1. 仮想マシンを削除するには、VirtualBoxのメイン画面で、削除したい仮想マシンを選び、右クリックをして、**除去(R)...** を選択します

    ![仮想マシンの削除1](img/vb14.png)

2. 次にあらわれる画面で、**すべてのファイルを削除** を選択します

    ![仮想マシンの削除2](img/vb15.png)


## 参考. Lin4Neuro への Google chrome のインストール (所要時間5分)

- Lin4NeuroにGoogle Chromeをインストールしたい方向けに、説明動画を準備しました。[こちら](https://vimeo.com/487737208){:target="_blank"}からご確認ください


