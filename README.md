# Spring Boot + MySQL デモアプリ

`localhost:8080` にアクセスすると、MySQLのDBからユーザー一覧を取得して画面に表示するシンプルなWebアプリです。

---

## 構成

```
src/
└── main/
    ├── java/com/example/demo/
    │   ├── DemoApplication.java       # エントリポイント
    │   ├── controller/
    │   │   └── UserController.java    # ルーティング（GET /）
    │   ├── model/
    │   │   └── User.java              # Entityクラス
    │   ├── repository/
    │   │   └── UserRepository.java    # JPA リポジトリ
    │   └── service/
    │       └── UserService.java       # ビジネスロジック
    └── resources/
        ├── application.properties     # DB接続設定
        └── templates/
            └── index.html             # Thymeleaf テンプレート
init.sql                               # DB初期化SQL
```

---

## 動作確認手順

### 1. MySQL の準備

```bash
# MySQLにログイン
mysql -u root -p

# init.sqlを実行（DB・テーブル・サンプルデータ作成）
source /path/to/init.sql
```

または：

```bash
mysql -u root -p < init.sql
```

### 2. application.properties の編集

`src/main/resources/application.properties` を開き、
MySQLの接続情報を環境に合わせて変更してください。

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/demo_db?useSSL=false&serverTimezone=Asia/Tokyo&characterEncoding=UTF-8
spring.datasource.username=root       # ← 自分の環境のユーザー名
spring.datasource.password=password   # ← 自分の環境のパスワード
```

### 3. アプリ起動

```bash
# プロジェクトルートで実行
./mvnw spring-boot:run
```

または IDE（IntelliJ / Eclipse）から `DemoApplication.java` を直接実行してください。

### 4. ブラウザで確認

```
http://localhost:8080
```

---

## 使用技術

| 技術 | バージョン |
|------|-----------|
| Java | 17 |
| Spring Boot | 3.2.0 |
| Spring Data JPA | 3.2.0 |
| Thymeleaf | 3.2.0 |
| MySQL Connector | 8.x |
| Lombok | 最新 |
| MySQL | 8.x 推奨 |
