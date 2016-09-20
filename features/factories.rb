# frozen_string_literal: true

FactoryGirl.define do
  trait :internal_network_host do
    netmask '255.255.255.0'
    gateway '10.10.10.254'
    mac_address { Faker::Internet.mac_address('00') }
  end

  factory :ntp_client, class: Netns do
    internal_network_host

    name 'ntp_client'
    ip_address '10.10.10.3'
    virtual_port_number 8
    physical_port_number 8
  end

  factory :git_client, class: Netns do
    internal_network_host

    name 'git_client'
    ip_address '10.10.10.3'
    virtual_port_number 8
    physical_port_number 8
  end

  factory :git_server, class: Netns do
    internal_network_host

    name 'git_server'
    ip_address '10.10.10.1'
    virtual_port_number 10
    physical_port_number 10
  end

  factory :browser_pc, class: Netns do
    internal_network_host

    name 'browser_pc'
    ip_address '10.10.10.3'
    virtual_port_number 8
    physical_port_number 8
  end

  factory :internal_pc, class: NetTester::Netns do
    name 'internal_pc'
    internal_network_host

    ip_address '10.10.10.3'
    virtual_port_number 8
    physical_port_number 8
  end

  trait :dmz_network do
    netmask '255.255.255.0'
    gateway '10.10.0.1'
    mac_address Faker::Internet.mac_address('00')
  end

  factory :dns_server, class: NetTester::Netns do
    name 'dns_server'
    dmz_network
    ip_address '10.10.0.10'
    virtual_port_number 11
    physical_port_number 11
  end

  factory :vpn_server, class: NetTester::Netns do
    name 'vpn_server'
    dmz_network
    ip_address '10.10.0.11'
    virtual_port_number 11
    physical_port_number 11
  end

  factory :dmz_server, class: NetTester::Netns do
    name 'dmz_server'
    dmz_network
    ip_address '10.10.0.100'
    virtual_port_number 9
    physical_port_number 9
  end

  trait :internet_network do
    netmask '255.255.255.0'
    gateway '198.51.100.254'
    mac_address Faker::Internet.mac_address('00')
  end

  factory :internet_pc, class: NetTester::Netns do
    name 'internet_pc'
    internet_network

    ip_address '198.51.100.1'
    virtual_port_number 3
    physical_port_number 3
  end

  factory :emmerich_pc, class: NetTester::Netns do
    name 'emmerich_pc'
    internet_network

    ip_address '198.51.100.94'
    virtual_port_number 2
    physical_port_number 2
  end
end
