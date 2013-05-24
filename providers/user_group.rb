action :create_or_update do

  chef_gem "zabbixapi" do
    action :install
    version "~> 0.5.9"
  end

  require 'zabbixapi'

  Chef::Zabbix.with_connection(new_resource.server_connection) do |connection|
    get_request = {
      :method => "usergroup.getobjects",
      :params => {
        :name => new_resource.name
      }
    }

    groups = connection.query(get_reques)

    Chef::Log.info("CHICKEN")
    Chef::Log.info(groups)
    Chef::Log.info("CHICKEN")

    
    if groups.empty?

    end
  end
end
