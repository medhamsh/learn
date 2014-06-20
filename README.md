Learning Cookbooks
==================
This repo contains cookbooks on which applied to an ubuntu-14.04 installs LXC package and 
after that the default ubuntu user can start unprivileged containers.

Usage
-----
1. Start a node EC2/Private datacentre. Ubuntu-14.04
2. If EC2: knife bootstrap f.q.d.n-host -i /path/to/priv/key -x ubuntu --sudo -N nodename
3. If not EC2: knife bootstrap f.q.d.n-host -P password -x ubuntu --sudo -N nodename
4. knife node edit nodename
5. Enter this in the runlist: "recipe[upgrade]"
6. knife ssh f.q.d.n -i /path/to/key -x ubuntu -m "sudo chef-client"
7. knife node edit nodename
8. Remove the recipe[upgrade] from runlist and add "recipe[baseos]", "recipe[container-orchestration]"
9. knife ssh f.q.d.n -i /path/to/key/ -x ubuntu -m "sudo chef-client"
10. knife ssh f.q.d.n -i /path/to/key -x ubuntu -m "sudo reboot"
11. At this point you can ssh into the container and prepare a template contaienr from scratch or place an already prepared one. Or even use knife ssh to perform these things.
12. Eg. Creating the template. knife ssh f.q.d.n -i /path/to/key -x ubuntu -m "lxc-create -t download -n type -- -d ubuntu -r trusty -a amd64"
13. You can either check if the container starts well at this point. or even skip this step.
14. For now, you can start the container as, knife ssh f.q.d.n -i /path/to/the/key -x ubuntu -m "containerize <name> <type>"
15. Destroy the container: knife ssh f.q.d.n -i /path/to/the/key -x ubuntu -m "decontainerize <name>"

TODO
----
1. Write ruby scripts for starting the contianer.
2. Take arguments from a YAML file.

Requirements
------------
These cookbooks requires Ubuntu-14.04. If you are on Amazon EC2, Using ami-7050ae18 is recommended.


License
-------
WTFPL -- http://www.wtfpl.net/about/
