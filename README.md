# DB2CommunityDocker

docker pull ibmcom/db2


## env_list
- LICENSE accepts the terms and conditions of the Db2 software contained in this image
- DB2INSTANCE specifies the Db2 instance name
- DB2INST1_PASSWORD specifies the password of the Db2 instance
- DBNAME creates an initial database with the name provided (leave empty if no database is needed)
- BLU sets BLU Acceleration for the Db2 instance to enabled (true) or disabled (false)
- ENABLE_ORACLE_COMPATIBILITY sets Oracle compatibility on the instance to enabled (true) or disabled (false)
- UPDATEAVAIL can be set to YES if there is an existing instance running a new container with a higher Db2 level.
- TO_CREATE_SAMPLEDB creates a sample (pre-populated) database (true)
- REPODB creates a Data Server Manager repository database (true)
- IS_OSXFS identifies the operating system as macOS (true)
- PERSISTENT_HOME disables persistent storage for the home directory (used for Linux and macOS installs) (false)
- HADR_ENABLED configures Db2 HADR for the instance (true). The following three environment variables depend on HADR_ENABLED being set to true:
- ETCD_ENDPOINT specifies your own provided ETCD key-value store. Enter your endpoints with a comma (and no space) as the delimiter. This environment variable is required if HADR_ENABLED is set to true
- ETCD_USERNAME specifies the username credential for ETCD. If left empty, it will use your Db2 instance
- ETCD_PASSWORD specifies the password credential for ETCD. If left empty, it will use your Db2 instance password

```
docker run -h db2server --name db2server --restart=always --detach --privileged=true 
-p 50000:50000 --env-file .env_list -v /Docker:/database ibmcom/db2
```

```
docker run -d -h db2server --name db2server --rm --privileged=true -p 50000:50000 --env-file .env_list ibmcom/db2
```
