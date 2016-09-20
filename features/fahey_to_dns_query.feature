Feature: Fahey Inc 社からDNSサーバへの問い合わせ

  Fahey Inc 社の管理者として、
  Fahey Inc 社内部からDNSサーバへ問い合わせできることを確認したい
  なぜならメンテナンス業務に必要だから

  Scenario: Fahey Inc 社からDNSサーバへssh
    Given Fahey Inc 社内部のクライアント
    And Fahey Inc 社のDMZ内のDNSサーバ
    When Fahey Inc 社からDNSサーバへ問い合わせ
    Then 問い合わせ成功
