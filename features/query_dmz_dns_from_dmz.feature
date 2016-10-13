Feature: DMZからDMZ内のDNSサーバへの問い合わせ

  ヨーヨーダイン社の管理者として、
  DMZからDNSサーバへの問い合わせできることを確認したい
  なぜならメンテナンス業務に必要だから

  Scenario: DMZからDNSサーバへ問い合わせ
    Given ヨーヨーダイン社のDMZ内部のサーバ
    And ヨーヨーダイン社のDMZ内のDNSサーバ
    When ヨーヨーダイン社のDMZからヨーヨーダイン社のDMZ内のDNSサーバへの問い合わせ
    Then 問い合わせ成功
