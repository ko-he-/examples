Feature: ヨーヨーダイン 社からテスト環境サーバへのsshの実行

  ヨーヨーダイン 社の管理者として、
  ヨーヨーダイン 社内部からテスト環境サーバへsshしたい
  なぜならメンテナンス業務に必要だから

  Scenario: ヨーヨーダイン 社からテスト環境サーバへssh
    Given ヨーヨーダイン 社内部のクライアント
    And テスト環境サーバ
    When ヨーヨーダイン 社からテスト環境サーバへsshを実行
    Then ssh成功