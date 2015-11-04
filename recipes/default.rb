#
# Cookbook Name:: cbp-elasticsearch
# Recipe:: default
#
# Copyright 2013, CBP Solutions
#
# All rights reserved - Do Not Redistribute
#
include_recipe "java"
include_recipe "elasticsearch"
include_recipe "elasticsearch::search_discovery"
include_recipe "elasticsearch::plugins"

