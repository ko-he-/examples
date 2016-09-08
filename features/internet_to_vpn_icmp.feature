Feature: InternetからSSLVPNサーバへの疎通確認

  Fahey Inc 社の管理者として、
  InternetからSSLVPNサーバへの疎通確認をしたい
  なぜならEmmerich Inc 社の開発者はSSLVPNサーバを経由して開発環境にアクセスするから

  Scenario: InternetからSSLVPNサーバへの疎通確認
    Given  Internet上のPC
    And SSLVPNサーバ
    When SSLVPNサーバにInternet上のPCからpingで疎通確認
    Then pingで疎通成功
