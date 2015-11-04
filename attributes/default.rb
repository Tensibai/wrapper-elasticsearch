#node.set['java']['jdk']['7']['x86_64']['url'] = 'http://p1frchef01/jdk-7u55-linux-x64.tar.gz'
force_default['java']['jdk_version'] = '7'
force_default['java']['install_flavor'] ='oracle'
force_default['java']['jdk']['7']['x86_64']['url'] = 'http://p1frchef01/jdk-7u75-linux-x64.tar.gz'

force_default['elasticsearch']['version'] = "1.4.4"
force_default['elasticsearch']['deb_url'] = "http://p1frchef01/elasticsearch-#{node['elasticsearch']['version']}.deb"
force_default['elasticsearch']['download_url'] = "http://p1frchef01/elasticsearch-#{node['elasticsearch']['version']}.tar.gz"

force_default['elasticsearch']['path']['conf'] = "/etc/elasticsearch"
force_default['elasticsearch']['path']['data'] = "/var/data/elasticsearch"
force_default['elasticsearch']['path']['logs'] = "/var/log/elasticsearch"

force_default['elasticsearch']['cluster']['name'] = "#{node.chef_environment}logstash"
force_default['elasticsearch']['node']['name']    = node.name
force_default['elasticsearch']['dir'] = "/usr/share/elasticsearch/"
force_default['elasticsearch']['plugins']['karmi/elasticsearch-paramedic'] = {}
force_default['elasticsearch']['plugins']['mobz/elasticsearch-head'] = {}
force_default['elasticsearch']['plugins']['royrusso/elasticsearch-HQ'] = {}

force_default['elasticsearch']['discovery']['search_query'] = "role:elasticsearch_server AND chef_environment:#{node.chef_environment} AND elasticsearch_cluster_name:#{node['elasticsearch']['cluster']['name']}"

force_default['elasticsearch']['jmx'] = true

force_default['elasticsearch']['custom_config']['http.cors.enabled'] = true
force_default['elasticsearch']['custom_config']['indices.fielddata.cache.size'] = "50%"


