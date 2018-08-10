#
# Cookbook:: REAN-jenkins
# Attributes:: executor
#
# Author: veeraiah.donthagani@reancloud.com


default['jenkins']['executor'].tap do |executor|
  #
  # This is the number of seconds to wait for Jenkins to become "ready" after a
  # start, restart, or reload. Since the Jenkins service returns immediately
  # and the actual Java process is started in the background, we block the Chef
  # Client run until the service endpoint(s) are _actually_ ready to accept
  # requests.
  #
  executor['timeout'] = 120

  #
  # Deprecated: please use +node.run_state[:jenkins_private_key]+ instead.
  #
  executor['private_key'] = nil

  #
  # If you need to pass through a proxy to communicate between your masters and
  # slaves, you will need to set this node attribute. It should be  set in the
  # form `HOST:PORT`:
  #
  #   node.normal['jenkins']['executor']['proxy'] = '1.2.3.4'
  #
  # Please see the +Proxies+ section of the README for more information.
  #
  executor['proxy'] = nil

  #
  # If you need to specify jvm options for the jenkins cli call, specify them here
  # You can specify items such as a trust store if you need custom ca certs, for example.
  #
  executor['jvm_options'] = nil

  #
  # CLI protocol [ssh|http|remoting]
  #
  executor['protocol'] = 'remoting'

  #
  # CLI user to pass for ssh/https protocol
  #
  # executor['cli_user'] = 'example_chef_user'
end
