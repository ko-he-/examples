When(/^適当なところににFahey Inc 社のPCからpingで疎通確認$/) do
  cd('.') do
    expect(lambda { @internal_pc.exec 'ping 8.8.8.9 -c 4 > log/ping.log' }).to raise_error(RuntimeError)
  end
end

Then(/^pingで疎通失敗$/) do
  step %(the file "log/ping.log" should contain "0 received, +4 errors, 100% packet loss")
end
