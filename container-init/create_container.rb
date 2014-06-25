require "yaml"
require "lxc"

FILENAME = 'containers.yaml'
class Containerinfo
  attr_accessor :name, :type, :memory, :cpus
end

class Drop
  attr_accessor :name, :droplet

  def initialize(info)
    @name = info.name
    drop = new_drop(info.type)
    drop.clone(@name)
    sleep(10)
  end

  def new_drop(param)
    LXC::Container.new(param)
  end

  def create_and_start
    @droplet = new_drop(@name)
    @droplet.start
    sleep(5)
  end

  def attach
    @droplet.attach do
     LXC.run_command('sudo superadmin-init')
    end
  end

  def get_ips
    @droplet.ip_addresses
  end
end

#get container info
containers = YAML::load(File.open(FILENAME))

containers.each do |con_info|
  drop = Drop.new(con_info)
  drop.create_and_start
  drop.attach
  puts drop.get_ips
end
