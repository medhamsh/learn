require "yaml"
require "lxc"

FILENAME = 'containers.yaml'
class Containerinfo
  attr_accessor :name, :type, :memory, :cpus
end

data = YAML::load(File.open(FILENAME))

$name = data.first.name
$type = data.first.type
$memory = data.first.memory
$cpus = data.first.cpus

class Drops
  c = LXC::Container.new("#{$type}")
  clone = c.clone("#{$name}")
  sleep(10)
  d = LXC::Container.new("#{$name}")
  d.start  
  sleep(5)
  d.attach do
    LXC.run_command('sudo superadmin-init')
  end
  @ip = d.ip_addresses
  puts "#{@ip}"
end
