Given(/^ヨーヨーダイン社内部のクライアント$/) do
  @internal_pc = Netns.new(attributes_for(:internal_pc))
end

Given(/^ヨーヨーダイン社のDMZ内のDNSサーバ$/) do
  @dns_server = Netns.new(attributes_for(:dns_server))
end
