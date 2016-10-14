Given(/^ヨーヨーダイン社内部のクライアント$/) do
  @internal_pc = Netns.new(attributes_for(:internal_pc))
end

Given(/^ヨーヨーダイン社内部の資産管理サーバ$/) do
  @asset_server = Netns.new(attributes_for(:git_server))
end

Given(/^ヨーヨーダイン社内部のテスト環境サーバ$/) do
  @test_server = Netns.new(attributes_for(:test_server))
end

Given(/^ヨーヨーダイン社のDMZ内のDNSサーバ$/) do
  @dns_server = Netns.new(attributes_for(:dns_server))
end

Given(/^ヨーヨーダイン社のDMZ内部のサーバ$/) do
  @dmz_server = Netns.new(attributes_for(:dmz_server))
end

Given(/^ヨーヨーダイン社のDMZ内のSSLVPNサーバ$/) do
  @vpn_server = Netns.new(attributes_for(:vpn_server))
end

Given(/^Internet上のPC$/) do
  @internet_pc = Netns.new(attributes_for(:internet_pc))
end

Given(/^Google Public DNSサーバ$/) do
  @google_dns = Netns.new(attributes_for(:internet_pc))
  system "sudo ip netns exec internet_pc sudo ip netns exec internet_pc ping 198.51.100.254 -c 1 >/dev/null"
  system "sudo ip netns exec internet_pc iptables -t nat -A PREROUTING -j DNAT --to-destination 198.51.100.1"
  system "sudo ip netns exec internet_pc iptables -t nat -A POSTROUTING -j SNAT --to-source 8.8.8.8"
end
