Feature: DMZからFahey Inc 社内部への疎通確認

  Fahey Inc 社の管理者として、
  DMZからFahey Inc 社内部への疎通確認をしたい
  なぜならDMZ内のサーバはFahey Inc 社内部にアクセスする必要があるから

  Scenario: DMZからFahey Inc 社内部への疎通確認
    Given DMZ内部のサーバ
    And  Fahey Inc 社内部のクライアント
    When Fahey Inc 社内部のクライアントにDMZからpingで疎通確認
    Then pingで疎通成功
