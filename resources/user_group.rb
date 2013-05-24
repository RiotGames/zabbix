actions :create_or_update
default_action :create_or_update

attribute :name, :kind_of => String, :required => true
attribute :debug_mode, :kind_of => [TrueClass, FalseClass], :default => false
attribute :gui_access, :kind_of => Zabbix::API::UserGroupGuiAccess, :default => Zabbix::API::UserGroupGuiAccess.default
attribute :enabled, :kind_of => [TrueClass, FalseClass], :default => true
attribute :permissions, :kind_of => Hash, :required => true

attribute :server_connection, :kind_of => Hash, :required => true
