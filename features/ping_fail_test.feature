Feature: Fahey Inc 社内部からDMZへの疎通確認

  Fahey Inc 社の管理者として、
  Fahey Inc 社内部から適当なところに通信できないことを確認したい
  なぜなら適当なところに通信できてはいけないから

  Scenario: Fahey Inc 社内部からDMZへの疎通確認
    Given  Fahey Inc 社内部のクライアント
    When 適当なところにFahey Inc 社のPCからpingで疎通確認
    Then pingで疎通失敗
