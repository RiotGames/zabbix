actions :create_or_update
default_action :create_or_update

attribute :name, :kind_of => String, :required => true

attribute :server_connection, :kind_of => Hash, :required => true
