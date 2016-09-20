Feature: Fahey Inc 社からDNSサーバへのsshの実行

  Fahey Inc 社の管理者として、
  Fahey Inc 社内部からDNSサーバへsshしたい
  なぜならメンテナンス業務に必要だから

  Scenario: Fahey Inc 社からDNSサーバへssh
    Given Fahey Inc 社内部のクライアント
    And Fahey Inc 社のDMZ内のDNSサーバ
    When Fahey Inc 社からDNSサーバへsshを実行
    Then ssh成功
