Feature: DMZからDNSサーバへの問い合わせ

  Fahey Inc 社の管理者として、
  DMZからDNSサーバへの問い合わせできることを確認したい
  なぜならメンテナンス業務に必要だから

  Scenario: Fahey Inc 社からDNSサーバへssh
    Given DMZ内部のサーバ
    And Fahey Inc 社のDMZ内のDNSサーバ
    When DMZからDNSサーバへの問い合わせ
    Then 問い合わせ成功
