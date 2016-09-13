Feature: DMZからInternetへの疎通確認

  Fahey Inc 社の管理者として、
  DMZからInternetへの疎通確認をしたい
  なぜならDMZ内のサーバはInternetにアクセスする必要があるから

  Scenario: DMZからInternetへの疎通確認
    Given  DMZ内部のサーバ
    And  Google Public DNS
    When Google Public DNSにDMZからpingで疎通確認
    Then pingで疎通成功
