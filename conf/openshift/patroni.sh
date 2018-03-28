#! /bin/bash

# These commands are taken from the source repo
# https://github.com/jberkus/atomicdb/tree/master/patroni_petset

oc new-project `date +"%H%M"`
oc login -u system:admin
oc adm policy add-scc-to-user anyuid -z default
oc login -u developer
oc create -f etcd.yaml
oc create -f sec-patroni.yaml
oc create -f ps-patroni-ephemeral.yaml
oc create -f svc-patroni-master.yaml
oc create -f svc-patroni-read.yaml
oc new-app openshift.json

