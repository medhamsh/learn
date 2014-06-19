base Cookbook
=============
This Cookbook contains a recipe on which applied to an ubuntu-14.04 installs LXC package and 
after that the default ubuntu user can start unprivileged containers.


Requirements
------------
This cookbook requires Ubuntu-14.04. If you are on Amazon EC2, Use ami-7050ae18


Attributes
----------

Usage
-----
Once you bootstrap a chef node with the above ami, upload this cookbook and run the chef-client on the node.

e.g.
Just include `base` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[base]"
  ]
}
```

Contributing
------------
Please feel free to contribute.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Medhamsh
