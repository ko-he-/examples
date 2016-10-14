When(/^ヨーヨーダイン社からDMZ内のSSLVPNサーバにWebUIでログイン$/) do
  Thread.start { @vpn_server.exec "bash -c 'echo OK | nc -l 80'" }
  Thread.start { @vpn_server.exec "bash -c 'echo OK | nc -l 443'" }
  sleep(3)

  cd('.') do
    @internal_pc.exec "nc 10.10.0.11 80 > log/nc_80.log"
    @internal_pc.exec "nc 10.10.0.11 443 > log/nc_443.log"
  end
end

Then(/^ヨーヨーダイン社からDMZ内のSSLVPNサーバにWebUIでログイン成功$/) do
  step %(the file "log/nc_80.log" should contain "OK")
  step %(the file "log/nc_443.log" should contain "OK")
end
