# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'D085PA'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'D085PA::default'
named_run_list 'core', 'D085PA::core'
named_run_list 'db', 'D085PA::db'
named_run_list 'micropayment', 'D085PA::db'
named_run_list 'web_back', 'D085PA::web_back'
named_run_list 'web_front', 'D085PA::web_front'
named_run_list 'coop_core', 'D085PA::coop_core'
named_run_list 'coop_gateway', 'D085PA::coop_gateway'
named_run_list 'coop_env', 'D085PA::coop_env'

# Specify a custom source for a single cookbook:
cookbook 'D085PA', path: '.'
