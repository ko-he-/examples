Feature: Fahey Inc 社からSSLVPNサーバへのsshの実行

  Fahey Inc 社の管理者として、
  Fahey Inc 社内部からSSLVPNサーバへsshしたい
  なぜならメンテナンス業務に必要だから

  Scenario: Fahey Inc 社からSSLVPNサーバへssh
    Given Fahey Inc 社内部のクライアント
    And SSLVPNサーバ
    When Fahey Inc 社からSSLVPNサーバへsshを実行
    Then ssh成功
