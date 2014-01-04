#Fortune App

Simple web based fortune app used to demonstrate connectivity to a
Mongodb replica set.

##Usage

**GET /fortunes.json** returns {"message":"a fortune",
"category":"jokes"}

**GET /fortunes** retuns html with the fortune and category listed.

##Connecting to a replicaset

Follow instructions to setup multiple instances of Mongodb running
locally:
http://doshea.wordpress.com/2012/07/30/mongodb-ubuntu-12-04-multiple-daemons/

Use **config/mongoid_replicaset.yml** in place of **config/mongoid.yml**
