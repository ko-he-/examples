Feature: Fahey Inc 社から資産管理サーバへのsshの実行

  Fahey Inc 社の管理者として、
  Fahey Inc 社内部から資産管理サーバへsshしたい
  なぜならメンテナンス業務に必要だから

  Scenario: Fahey Inc 社から資産管理サーバへssh
    Given Fahey Inc 社内部のクライアント
    And 資産管理サーバ
    When Fahey Inc 社から資産管理サーバへsshを実行
    Then ssh成功
