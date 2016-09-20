# coding: utf-8

Given(/^Fahey Inc 社内部のクライアント$/) do
  @internal_pc = Netns.new(attributes_for(:internal_pc))
end

Given(/^Fahey Inc 社のDMZ内のDNSサーバ$/) do
  @dns_server = Netns.new(attributes_for(:dns_server))
end

Given(/^DMZ内部のサーバ$/) do
  @dmz_server = Netns.new(attributes_for(:dmz_server))
end

Given(/^Internet上のPC$/) do
  @internet_pc = Netns.new(attributes_for(:internet_pc))
end

Given(/^Emmerich Inc 社内部のクライアント$/) do
  @emmerich_pc = Netns.new(attributes_for(:emmerich_pc))
end

Given(/^SSLVPNサーバ$/) do
  @vpn_server = Netns.new(attributes_for(:vpn_server))
end

Given(/^Google Public DNS$/) do
  @google_dns = Netns.new(attributes_for(:internet_pc))
  system "sudo ip netns exec internet_pc iptables -t nat -A PREROUTING -j DNAT --to-destination 198.51.100.1"
  system "sudo ip netns exec internet_pc iptables -t nat -A POSTROUTING -j SNAT --to-source 8.8.8.8"
end

Given(/^資産管理サーバ$/) do
  @asset_server = Netns.new(attributes_for(:git_server))
end



