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

When(/^Fahey Inc 社から資産管理サーバへsshを実行$/) do
  run "sudo ip netns exec #{@asset_server.name} bash -c 'echo OK | nc -l 22 &'"
  run "sudo ip netns exec #{@asset_server.name} bash -c 'echo OK | nc -l 80 &'"
  run "sudo ip netns exec #{@asset_server.name} bash -c 'echo OK | nc -l 443 &'"

  cd('.') do
    @internal_pc.exec "nc 10.10.10.1 22 > log/nc_22.log"
    @internal_pc.exec "nc 10.10.10.1 80 > log/nc_80.log"
    @internal_pc.exec "nc 10.10.10.1 443 > log/nc_443.log"
  end
end

When(/^Fahey Inc 社からテスト環境サーバへsshを実行$/) do
  run "sudo ip netns exec #{@test_server.name} bash -c 'echo OK | nc -l 22 &'"
  run "sudo ip netns exec #{@test_server.name} bash -c 'echo OK | nc -l 80 &'"
  run "sudo ip netns exec #{@test_server.name} bash -c 'echo OK | nc -l 443 &'"

  cd('.') do
    @internal_pc.exec "nc 10.10.10.2 22 > log/nc_22.log"
    @internal_pc.exec "nc 10.10.10.2 80 > log/nc_80.log"
    @internal_pc.exec "nc 10.10.10.2 443 > log/nc_443.log"
  end
end

When(/^Fahey Inc 社からDNSサーバへsshを実行$/) do
  run "sudo ip netns exec #{@dns_server.name} bash -c 'echo OK | nc -l 22 &'"
  run "sudo ip netns exec #{@dns_server.name} bash -c 'echo OK | nc -l 80 &'"
  run "sudo ip netns exec #{@dns_server.name} bash -c 'echo OK | nc -l 443 &'"

  cd('.') do
    @internal_pc.exec "nc 10.10.0.10 22 > log/nc_22.log"
    @internal_pc.exec "nc 10.10.0.10 80 > log/nc_80.log"
    @internal_pc.exec "nc 10.10.0.10 443 > log/nc_443.log"
  end
end

When(/^Fahey Inc 社からSSLVPNサーバへsshを実行$/) do
  run "sudo ip netns exec #{@vpn_server.name} bash -c 'echo OK | nc -l 22 &'"
  run "sudo ip netns exec #{@vpn_server.name} bash -c 'echo OK | nc -l 80 &'"
  run "sudo ip netns exec #{@vpn_server.name} bash -c 'echo OK | nc -l 443 &'"

  cd('.') do
    @internal_pc.exec "nc 10.10.0.11 22 > log/nc_22.log"
    @internal_pc.exec "nc 10.10.0.11 80 > log/nc_80.log"
    @internal_pc.exec "nc 10.10.0.11 443 > log/nc_443.log"
  end
end

When(/^Fahey Inc 社からDMZ内部のサーバへsshを実行$/) do
  run "sudo ip netns exec #{@dmz_server.name} bash -c 'echo OK | nc -l 22 &'"
  run "sudo ip netns exec #{@dmz_server.name} bash -c 'echo OK | nc -l 80 &'"
  run "sudo ip netns exec #{@dmz_server.name} bash -c 'echo OK | nc -l 443 &'"

  cd('.') do
    @internal_pc.exec "nc 10.10.0.100 22 > log/nc_22.log"
    @internal_pc.exec "nc 10.10.0.100 80 > log/nc_80.log"
    @internal_pc.exec "nc 10.10.0.100 443 > log/nc_443.log"
  end
end

Then(/^ssh成功$/) do
  step %(the file "log/nc_22.log" should contain "OK")
  step %(the file "log/nc_80.log" should contain "OK")
  step %(the file "log/nc_443.log" should contain "OK")
end

When(/^Fahey Inc 社からDNSサーバへ問い合わせ$/) do
  run "sudo ip netns exec #{@dns_server.name} bash -c 'echo OK | nc -l 53 &'"
  run "sudo ip netns exec #{@dns_server.name} bash -c 'echo OK | nc -lu 53 &'"

  cd('.') do
    @internal_pc.exec "nc 10.10.0.10 53 > log/nc_53.log"
    @internal_pc.exec "nc -uv -w4 10.10.0.10 53 > log/nc_udp_53.log"
  end
end

Then(/^問い合わせ成功$/) do
  step %(the file "log/nc_53.log" should contain "OK")
  step %(the file "log/nc_udp_53.log" should contain "OK")
end

