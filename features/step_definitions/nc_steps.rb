When(/^Emmerich Inc 社内部のクライアンからFahey Inc 社にSSLVPN実行$/) do
  run "sudo ip netns exec #{@vpn_server.name} bash -c 'echo OK | nc -l 80 &'"
  run "sudo ip netns exec #{@vpn_server.name} bash -c 'echo OK | nc -l 443 &'"

  cd('.') do
    @emmerich_pc.exec "nc 203.0.113.5 80 > log/nc_80.log"
    @emmerich_pc.exec "nc 203.0.113.5 443 > log/nc_443.log"
  end
end

Then(/^SSLVPN成功$/) do
  step %(the file "log/nc_80.log" should contain "OK")
  step %(the file "log/nc_443.log" should contain "OK")
end

