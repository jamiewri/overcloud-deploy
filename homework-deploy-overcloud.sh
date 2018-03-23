#!/bin/bash

exec openstack overcloud deploy \
        --templates /usr/share/openstack-tripleo-heat-templates \
        --ntp-server 10.0.77.54 \
        --control-flavor control --control-scale 3 \
        --compute-flavor compute --compute-scale 2 \
        --ceph-storage-flavor ceph-storage --ceph-storage-scale 3 \
        --neutron-tunnel-types vxlan --neutron-network-type vxlan \
        -e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
        -e /home/stack/final-homework/network-environment.yaml \
        -e /home/stack/final-homework/HostnameMap.yaml \
        -e /home/stack/final-homework/ips-from-pool-all.yaml \
        -e /home/stack/final-homework/storage-environment.yaml \
        -e /home/stack/final-homework/disable_ceilometer.yaml \
        -e /home/stack/final-homework/timezone.yaml
