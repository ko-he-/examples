Feature: Fahey Inc 社内部のDNSサーバから上位のDNSサーバへ問い合わせ

  Fahey Inc 社の管理者として、
  Fahey Inc 社内部のDNSサーバから上位のDNSサーバへ問い合わせできることを確認したい
  なぜならメンテナンス業務に必要だから

  Scenario: Fahey Inc 社内部のDNSサーバから上位のDNSサーバへ問い合わせ
    Given Fahey Inc 社のDMZ内のDNSサーバ
    And Internet上のPC
    When Fahey Inc 社内部のDNSサーバから上位のDNSサーバへ問い合わせ
    Then 問い合わせ成功
