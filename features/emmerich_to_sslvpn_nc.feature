Feature: Emmerich Inc 社からSSLVPNの実行

  Fahey Inc 社の管理者として、
  Emmerich Inc 社からSSLVPNをさせたい
  なぜならEmmerich Inc 社の開発者はSSLVPNで開発環境にアクセスするから

  Scenario: Fahey Inc 社からSSLVPNサーバにアクセス
    Given Emmerich Inc 社内部のクライアント
    And SSLVPNサーバ
    When SSLVPNサーバにEmmerich Inc 社内部のクライアンからnc(80)で疎通確認
    And SSLVPNサーバにEmmerich Inc 社内部のクライアンからnc(443)で疎通確認
    Then nc(80)で疎通成功
    And nc(443)で疎通成功
