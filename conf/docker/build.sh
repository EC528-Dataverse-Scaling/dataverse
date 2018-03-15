#!/bin/sh
# Creates images and pushes them to Docker Hub.
# The "kick-the-tires" tag should be relatively stable. No breaking changes.
# Push to custom tags or tags based on branch names to iterate on the images.
# TODO: Think about if we really need dataverse.war because it's in dvinstall.zip.
# FIXME: Automate the building of dataverse.war and dvinstall.zip. Think about https://github.com/IQSS/dataverse/issues/3974 and https://github.com/IQSS/dataverse/pull/3975
cp ../../target/dataverse*.war dataverse-glassfish/dataverse.war
cp ../../scripts/installer/dvinstall.zip dataverse-glassfish
cp ../../doc/sphinx-guides/source/_static/util/default.config dataverse-glassfish
cp ../../downloads/glassfish-4.1.zip dataverse-glassfish
cp ../../downloads/weld-osgi-bundle-2.2.10.Final-glassfish4.jar dataverse-glassfish
docker build -t jcliffbu/glassboat:test dataverse-glassfish
# FIXME: Check the output of `docker build` and only push on success.
docker push jcliffbu/glassboat:test
