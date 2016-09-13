Feature: Fahey Inc 社内部からInternetへの疎通確認

  Fahey Inc 社の管理者として、
  Fahey Inc 社内部からInternetへの疎通確認をしたい
  なぜならFahey Inc 社の開発者はInternetにアクセスする必要があるから

  Scenario: DNSへの疎通確認
    Given  Fahey Inc 社内部のクライアント
    And  Google Public DNS
    When Google Public DNSにFahey社PCからpingで疎通確認
    Then pingで疎通成功
