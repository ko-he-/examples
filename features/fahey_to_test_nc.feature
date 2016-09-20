Feature: Fahey Inc 社からテスト環境サーバへのsshの実行

  Fahey Inc 社の管理者として、
  Fahey Inc 社内部からテスト環境サーバへsshしたい
  なぜならメンテナンス業務に必要だから

  Scenario: Fahey Inc 社からテスト環境サーバへssh
    Given Fahey Inc 社内部のクライアント
    And テスト環境サーバ
    When Fahey Inc 社からテスト環境サーバへsshを実行
    Then ssh成功
