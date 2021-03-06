#
# Author:: Marius Ducea (marius@promethost.com)
# Cookbook Name:: drupal
# Attributes:: drupal
#
# Copyright 2010, Promet Solutions
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['drupal']['version'] = "7.14"
default['drupal']['checksum'] = "17db094aaa78d76ec6a3517171f1d8c158745eee2e19006d5ed97b7ffc2c54da"
default['drupal']['dir'] = "/var/www/drupal"
default['drupal']['db']['database'] = "drupal"
default['drupal']['db']['user'] = "drupal"
default['drupal']['site']['admin'] = "admin"
default['drupal']['site']['pass'] = "drupaladmin"
default['drupal']['site']['name'] = "Drupal7"

::Chef::Node.send(:include, Opscode::OpenSSL::Password)

set_unless['drupal']['db']['password'] = secure_password
default['drupal']['src'] = Chef::Config[:file_cache_path]

default['drupal']['drush']['version'] = "7.x-5.4"
default['drupal']['drush']['checksum'] = "6cea1275f2aad22b8d3474bb34b4494f069f823feecccb7edb399631f0b0ca40"
default['drupal']['drush']['dir'] = "/usr/local/drush"

default['drupal']['modules'] = ["views", "webform"]

