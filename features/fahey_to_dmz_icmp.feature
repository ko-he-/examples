Feature: Fahey Inc 社内部からDMZへの疎通確認

  Fahey Inc 社の管理者として、
  Fahey Inc 社内部からDMZへの疎通確認をしたい
  なぜならFahey Inc 社の開発者はDMZ上のサーバにアクセスする必要があるから

  Scenario: Fahey Inc 社内部からDMZへの疎通確認
    Given  Fahey Inc 社内部のクライアント
    And  DMZ内部のサーバ
    When DMZにFahey Inc 社のPCからpingで疎通確認
    Then pingで疎通成功
