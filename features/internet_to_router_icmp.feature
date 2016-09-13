Feature: InternetからRouterへの疎通確認

  Fahey Inc 社の管理者として、
  InternetからRouterへの疎通確認をしたい
  なぜならEmmerich Inc 社の開発者はRouterを経由して開発環境にアクセスするから

  Scenario: InternetからRouterへの疎通確認
    Given  Internet上のPC
    When RouterにInternet上のPCからpingで疎通確認
    Then pingで疎通成功
