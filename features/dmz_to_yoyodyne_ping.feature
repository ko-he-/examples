Feature: ヨーヨーダイン社のDMZ内のサーバからヨーヨーダイン社内部への疎通確認

  ヨーヨーダイン社の管理者として、
  DMZからヨーヨーダイン社内部への疎通確認をしたい
  なぜならDMZ内のサーバはヨーヨーダイン社内部にアクセスする必要があるから

  Scenario: DMZからヨーヨーダイン社内部への疎通確認
    Given ヨーヨーダイン社のDMZ内部のサーバ
    And  ヨーヨーダイン社内部のクライアント
    When ヨーヨーダイン社内部のクライアントにDMZからpingで疎通確認
    Then pingで疎通成功
