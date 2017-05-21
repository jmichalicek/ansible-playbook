# Ansible playbook for my stuff

## Usage

* Install ansible locally
* clone the repo
* Make secrets.yml or get copy of it with
  * blargh_become_pass
  * gf_security_admin_password
  * gf_security_admin_user
  * influxdb_telegraf_username
  * influxdb_telegraf_password
* Run `ansible-playbook blargh.yml -i ./inventory -u <remote_user>--extra-vars @secrets.yml --ask-vault-pass`

## Assumptions

* Server is already up
* SSH is enabled and keys are already set up
* User can sudo

## TODO:

* Configure openvpn
* Configure postgres?
* Configure redis
* Install other common tools - pyenv
* Install the rest of my base packages
* Set up host groups and tasks lists a bit better
* Deploy new instances and create the user
* Server inventory dynamically from Digital Ocean
* More paths as variables
* Add my grafana dashboards json to this to make it easy to set back up?