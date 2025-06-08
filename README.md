# cat_breeds_app

**このアプリは Android / iOS 向けに開発された Flutter アプリです。**

## 概要
猫の種類一覧を表示するアプリ

<p align="left">
  <img src="https://github.com/user-attachments/assets/d4b1be3f-625a-4a8b-812e-1f3220a1f040" alt="ホーム画面" width="200"/>
  <img src="https://github.com/user-attachments/assets/49010af4-6fad-4db5-a1f1-66913c7a99e0" alt="詳細画面" width="200"/>
</p>

## 要件
1. ホーム画面
   - 「猫の種類一覧リスト」 : 猫の種類を10件リスト表示する
   - リストの種類をタップすると「2.詳細画面」に遷移する

2. 詳細画面
   - 「猫の種類詳細」 : breed, country, origin, coat, patternを表示する
   - 「戻るボタン」 : タップすると「1.ホーム画面」に戻る

## API
猫の種類リストの取得に以下のAPIを使用する  
https://catfact.ninja/breeds

◼︎APIの詳細  
https://documenter.getpostman.com/view/1946054/S11HvKSz#6e0a9a7f-c8aa-42c8-b968-bd7717b4ce12

## エビデンス
Android (Pixel 6 API 31)  

https://github.com/user-attachments/assets/c642d81e-6f2a-410c-8647-694fe7a13a5b

iOS (iOS SE 3rd generation - iOS 17.5)  

https://github.com/user-attachments/assets/3f55c237-82f3-45f7-b5f8-2832061506fc


---

## セットアップ手順

1. Flutterがインストールされていることを確認してください。
   - Flutter公式ドキュメント: https://docs.flutter.dev/get-started/install
2. 本リポジトリをクローンします。
   ```
   git clone https://github.com/SeulGeek/cat_breeds_app.git
   cd cat_breeds_app
   ```
3. 依存パッケージをインストールします。
   ```
   flutter pub get
   ```
4. アプリを実行します（AndroidエミュレーターまたはiOSシミュレーターなど）。
   ```
   flutter run
   ```

## アーキテクチャの説明（Feature Based Architecture）

- 本アプリは**feature based architecture**（機能単位フォルダ構成）で実装されています。
- 主要な機能ごとにディレクトリを分割し、それぞれにUI/ロジック/モデル/状態をまとめて管理します。
- 例えば、**猫種一覧表示機能**は `lib/features/cat_breeds/` 配下に以下のように構成されます:

  ```
  lib/features/cat_breeds/
    ├── model/
    │    └── cat_breed.dart
    ├── repository/
    │    ├── cat_breeds_repository.dart
    │    └── cat_breeds_repository_impl.dart
    ├── state/
    │    └── cat_breeds_provider.dart
    └── pages/
         └── cat_breeds_screen.dart
  ```

- 例えば `cat_breeds_screen.dart` ではRiverpodのProvider経由で猫種一覧を取得し、リスト表示＋詳細ページ遷移を担います。
- データ取得はRepository層でAPIクライアントをDIし、`CatBreed`モデルへマッピングします。状態管理にはRiverpodを使用しています。
- 詳細画面や他機能も同様に `features` 配下ごとにページ・状態管理・データ取得・モデルを整理します。

## こだわりポイント

- APIから取得する猫種データ自体が英語のため、アプリの表示言語も基本的に英語としています。
- Featureごとにディレクトリを分離し、責務を明確化。拡張・保守性を高めています。
- 状態管理にはRiverpodを採用し、テスト容易性とスケーラビリティを担保しています。
- 各ProviderやRepository、画面単位でテストコードも作成し、品質の担保と安心してリファクタリングできる体制を整えています。
- デザインやユーザー体験（UI/UX）にもこだわり、シンプルで見やすいレイアウトやアクセシビリティを意識した設計を行っています。
