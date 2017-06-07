andrewrothstein.storm
=====================
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-storm.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-storm)

Installs [Apache Storm](https://storm.apache.org/index.html)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.storm
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
