Feature: ヨーヨーダイン社からVPNサーバへsshとWebUIでログイン

  ヨーヨーダイン社の管理者として、
  ヨーヨーダイン社内部からDNSサーバにsshとWebUIでログインしたい
  なぜならメンテナンス業務に必要だから

  Scenario: ヨーヨーダイン社内部からDNSサーバにsshでログイン
    Given ヨーヨーダイン社内部のクライアント
    And ヨーヨーダイン社のDMZ内のSSLVPNサーバ
    When ヨーヨーダイン社からDMZ内のSSLVPNサーバにsshでログイン
    Then ヨーヨーダイン社からDMZ内のSSLVPNサーバにsshでログイン成功

  Scenario: ヨーヨーダイン社内部からDNSサーバにWebUIでログイン 
    Given ヨーヨーダイン社内部のクライアント
    And ヨーヨーダイン社のDMZ内のSSLVPNサーバ
    When ヨーヨーダイン社からDMZ内のSSLVPNサーバにWebUIでログイン
    Then ヨーヨーダイン社からDMZ内のSSLVPNサーバにWebUIでログイン成功
