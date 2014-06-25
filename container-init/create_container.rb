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
  c = LXC::Container.new("#{type}")
  puts "#{$name}"
  clone = c.clone("#{$name}")
  
  @ip = c.ip_addresses
  puts @ip
end

#c = LXC::Container.new('lamp')
#puts $name
#clone = c.clone('$name')

#d = LXC::Container.new('$name')
#d.start
#Running custom commands in the continer

#d.attach do
#  LXC.run_command('sudo superadmin-init')
#end

#$IP = d.ip_addresses

