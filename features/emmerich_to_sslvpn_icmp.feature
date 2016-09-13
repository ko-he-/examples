Feature: InternetからRouterへの疎通確認

  Fahey Inc 社の管理者として、
  Emmerich Inc 社からSSLVPN サーバへの疎通確認をしたい
  なぜならEmmerich Inc 社の開発者はSSLVPN サーバを経由して開発環境にアクセスするから

  Scenario: Fahey Inc 社からSSLVPNサーバにアクセス
    Given Emmerich Inc 社内部のクライアント
    And SSLVPNサーバ
    When SSLVPNサーバにEmmerich Inc 社内部のクライアンからpingで疎通確認
    Then pingで疎通成功
