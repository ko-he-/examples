Feature: InternetからFirewallへの疎通確認

  Fahey Inc 社の管理者として、
  InternetからFirewallへの疎通確認をしたい
  なぜならEmmerich Inc 社の開発者はFirewallを経由して開発環境にアクセスするから

  Scenario: InternetからFirewallへの疎通確認
    Given  Internet上のPC
    When FirewallにInternet上のPCからpingで疎通確認
    Then pingで疎通成功
