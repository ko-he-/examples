# coding: utf-8
Given(/^Web ブラウザを起動する開発者 PC$/) do
  @browser_pc = Netns.new(attributes_for(:browser_pc))
end

Given(/^Google のページを起動するWebサーバ$/) do
  @google_pc = Netns.new(attributes_for(:google_pc))
  cd('.') do
    system "sudo mkdir -p /etc/netns/browser_pc"
    system "sudo echo '10.10.10.4 google.com' > /etc/netns/browser_pc/hosts"
    #system "ip netns exec google_pc echo '<title>Google</title>' | ip netns exec google_pc nc -l -p 443 > log/nc.log &"
    system "yes '' | openssl req -x509 -newkey rsa:4096 -nodes -sha256 -keyout server.key -out server.crt -days 30"
    system "ip netns exec google_pc echo '<title>Google</title>' | ip netns exec google_pc openssl s_server -cert server.crt -key server.key -accept 443 > log/nc.log &"
  end
end

When(/^ブラウザで Google のページを開く$/) do
  system "sudo ovs-ofctl add-flow test_0xdad1c001 dl_dst=ff:ff:ff:ff:ff:ff,actions=output:FLOOD"
  cd('.') do
    @browser_pc.exec 'curl -L --insecure  https://google.com/ | iconv -f SHIFT-JIS -t UTF8 > log/google.log'
  end
end

Then(/^Google のトップページが表示$/) do
  step %(the file "log/google.log" should contain "<title>Google</title>")
end
