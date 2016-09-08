Feature: Fahey Inc 社内部からDNSサーバへの疎通確認

  Fahey Inc 社の管理者として、
  Fahey Inc 社内部からDNSへの疎通確認をしたい
  なぜならFahey Inc 社の開発者はDNSサーバにアクセスする必要があるから

  Scenario: Fahey Inc 社内部からDNSサーバへの疎通確認
    Given  Fahey Inc 社内部のクライアント
    And  Fahey Inc 社のDMZ内のDNSサーバ
    When DNSサーバにFahey社PCからpingで疎通確認
    Then pingで疎通成功
