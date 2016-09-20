Feature: Fahey Inc 社からDMZ内部のサーバへのsshの実行

  Fahey Inc 社の管理者として、
  Fahey Inc 社内部からDMZ内部のサーバへsshしたい
  なぜならメンテナンス業務に必要だから

  Scenario: Fahey Inc 社からDMZ内部のサーバへssh
    Given Fahey Inc 社内部のクライアント
    And DMZ内部のサーバ
    When Fahey Inc 社からDMZ内部のサーバへsshを実行
    Then ssh成功
