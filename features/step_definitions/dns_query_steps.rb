When(/^ヨーヨーダイン社のDMZからヨーヨーダイン社のDMZ内のDNSサーバへの問い合わせ$/) do
  Thread.start { @dns_server.exec "bash -c 'echo OK | nc -l 53'" }
  Thread.start { @dns_server.exec "bash -c 'echo OK | nc -lu 53'" }
  sleep(3)

  cd('.') do
    @dmz_server.exec "nc 10.10.0.10 53 > log/nc_53.log"
    @dmz_server.exec "nc -uv -w4 10.10.0.10 53 > log/nc_udp_53.log"
  end
end

Then(/^問い合わせ成功$/) do
  step %(the file "log/nc_53.log" should contain "OK")
  step %(the file "log/nc_udp_53.log" should contain "OK")
end
