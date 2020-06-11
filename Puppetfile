# frozen_string_literal: true

# A Puppetfile for a control repo that can be used for Puppet Server / PE perf testing

mod "stahnma/epel", "1.3.1"

# Modules that have been extracted from core Puppet
mod "puppetlabs/augeas_core", "1.0.0"
mod "puppetlabs/sshkeys_core", "1.0.0"
mod "puppetlabs/yumrepo_core", "1.0.0"

# Modules required to get a tomcat server up and running
mod "puppetlabs/tomcat", "2.5.0"
mod "puppetlabs/stdlib", "4.25.1" # openldap and i18ndemo modules require < 5
mod "puppet/archive", "3.2.1"
mod "puppetlabs/concat", "5.3.0"
mod "puppetlabs/java", "3.3.0"

# Modules required to get a postgres server up and running
mod "puppetlabs/postgresql", "5.12.1"
mod "puppetlabs/apt", "6.3.0"

# golja-influxdb verion 4.0.0 on the Forge does not support puppet 5.
# This git ref should be updated when a 5.0.0 release is published to the Forge.
mod "influxdb",
    git: "https://github.com/dgolja/golja-influxdb",
    ref: "5c5f74dfbda434562d31369b7f8c447895b06a1c"

mod "puppet/gitlab", "3.0.2"
mod "puppetlabs/apache", "4.1.0"

# Modules used for loadbalancer role/profile
mod "puppetlabs/haproxy", "3.0.1"

##################################################################################
## MODULES BELOW THIS LINE ARE NOT USED BY ANY ROLES/PROFILES
##################################################################################

# Enable collection of Puppet api-endpoint metrics
mod "puppetlabs/puppet_metrics_collector",
    git: "https://github.com/puppetlabs/puppetlabs-puppet_metrics_collector",
    branch: "master"

# Extra modules just to increase the total amount of code in the puppet environment
## "Additional modules to complement PE installation"
mod "puppet/hiera", "3.3.4"
mod "puppetlabs/puppetserver_gem", "1.1.0"
mod "puppetlabs/inifile", "2.5.0"
mod "puppetlabs/hocon", "1.0.1"
mod "puppetlabs/vcsrepo", "2.4.0"

## Basic linux host management
mod "puppetlabs/accounts", "3.2.0"
mod "puppet/yum", "4.0.0"
mod "puppetlabs/ntp", "7.4.0"
mod "puppetlabs/firewall", "1.15.3"
# mod 'saz/rsyslog', '3.5.1'  # the saz module does not support puppet > 5.0
mod "puppet/rsyslog", "3.3.0"

## Advanced linux host management
mod "puppetlabs/docker", "3.5.0"

## Common tools in an infrastructure
mod "camptocamp/openldap", "1.17.0"
mod "puppet/redis", "4.0.0" # supports puppet>=5.5.8
mod "herculesteam/augeasproviders_sysctl", "2.3.1"
mod "herculesteam/augeasproviders_shellvar", "2.2.4"
mod "herculesteam/augeasproviders_core", "2.5.0"
mod "saz/memcached", "3.4.0"
mod "puppet/nginx", "0.15.0" # supports puppet>=4.10.0
mod "sensu/sensu", "3.0.0"
mod "puppet/grafana", "6.0.0" # supports puppet>=5.5.8

mod "elastic/elasticsearch", "6.3.3"
mod "elastic/logstash", "6.1.5"
mod "elastic/elastic_stack", "6.3.2"
mod "richardc/datacat", "0.6.2"

mod "puppetlabs/java_ks", "2.4.0"

## Basic Windows host management
mod "puppet/download_file", "3.2.0"
mod "puppetlabs/acl", "2.1.0"
mod "puppetlabs/reboot", "2.1.2"
mod "puppetlabs/chocolatey", "5.0.0" # the chocolatey/ version does not support puppet > 5
mod "puppetlabs/powershell", "2.2.0"
mod "puppetlabs/registry", "2.1.0"
mod "puppetlabs/wsus_client", "1.1.0"
mod "puppet/windows_env", "3.2.0"
mod "puppet/windows_firewall", "2.0.2"
mod "puppet/windows_autoupdate", "2.0.1"
mod "puppet/dotnet", "2.0.2"
mod "liamjbennett/win_facts", "0.0.2"
mod "puppet/windowsfeature", "3.2.2"
mod "puppet/windows_eventlog", "2.0.2"

## Advanced Windows host management
mod "puppetlabs/iis", "4.5.1"
mod "puppet/graphite_powershell", "3.0.2"

## And while we're at it, lets do this all in the cloud
mod "puppetlabs/aws", "2.1.0"

## i18n, just putting this here created a perf issue in the past
mod "eputnam/i18ndemo", "0.3.0"
mod "puppetlabs/translate", "1.2.0"

## Use multiple non-root agents to tests load
mod "clamps",
    git: "https://github.com/puppetlabs/clamps",
    ref: "8602b95c595b92290eb938bb71ad05092805af1e"

## CD4PE
mod "puppetlabs/cd4pe", :latest
mod "puppetlabs/puppet_authorization", "0.5.1"
