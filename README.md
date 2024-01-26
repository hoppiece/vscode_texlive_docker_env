# vscode_texlive_docker_env


快適ローカル LaTeX 執筆環境テンプレート

## Feature
- Docker の TexLive image を利用 (ローカルへの TexLive インストール不要)
- VSCode の LaTex Workshop 拡張を利用
  - 編集時の自動コンパイル
  - synctex
    - PDF で `cmd + click` でソースコードへジャンプ
    - ソースコード中で `opytion + cmd + J` でPDFへジャンプ
- イメージ & 文書ビルドを `make` 一発

## 各ファイルの説明
- Tex をビルドするDockerイメージの記述: `Dockerfile`
  - tlmgr で追加したいパッケージを追記
- Docker イメージのビルドの記述・Tex文書のコンパイル: `Makefile`
  - `make` でイメージのビルドと文書のコンパイルを行う．`texlive-custom`というイメージが作成される 
  - `make clean` で中間ファイルの削除
- コンパイルレシピ: `latexmkrc`
- LaTeX 文書の記述: `main.tex`
- LaTeX Workshop の設定: `.vscode/settings.json`
  - コンパイルを `texlive-image` にやらせるように設定
  - 自動コンパイル等の設定
- `.gitignore`
  - `main.tex` 以外の main.* をgit で無視

## Usage
- はじめに `make` でイメージをビルドする. Docker が必要． Docker Desktop などを立ち上げておく．
- 執筆 
