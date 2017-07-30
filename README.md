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
* Run `ansible-playbook blargh.yml -i ./inventory -u <remote_user> --extra-vars @secrets.yml --ask-vault-pass`

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
* Add user configs - ssh keys, .bashrc, .bash_profile, .vimrc, etc.ideally dynamically
  see https://github.com/gbirke/ansible-create-users/blob/master/create_users_example.yml#L8 for users
  from vault file
  * install vim plug  for my user https://github.com/junegunn/vim-plug#vim
* Server inventory dynamically from Digital Ocean
* More paths as variables
* Add my grafana dashboards json to this to make it easy to set back up?
* stuff for backing up or migrating certbot stuff to a new server?  possibly in new playlist
  * https://community.letsencrypt.org/t/moving-and-merging-certs-from-server-a-to-b/19015/3
