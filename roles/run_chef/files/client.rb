require 'open-uri'
instanceid = open('http://169.254.169.254/latest/meta-data/instance-id'){|f| f.gets}
log_level :auto
log_location STDOUT
chef_server_url 'https://ops-chef.kingsgroup.cn/organizations/prod'
validation_client_name 'prod-validator'
node_name instanceid
