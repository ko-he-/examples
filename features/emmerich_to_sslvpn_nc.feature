Feature: Emmerich Inc 社からSSLVPNの実行

  Fahey Inc 社の管理者として、
  Emmerich Inc 社からSSLVPNをさせたい
  なぜならEmmerich Inc 社の開発者はSSLVPNで開発環境にアクセスするから

  Scenario: Emmerich Inc 社からSSLVPNサーバにアクセス
    Given Emmerich Inc 社内部のクライアント
    And SSLVPNサーバ
    When Emmerich Inc 社内部のクライアンからFahey Inc 社にSSLVPN実行
    Then SSLVPN成功
