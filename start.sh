docker run -d -h db2server --name db2server --rm --privileged=true -p 50000:50000 --env-file .env_list --platform linux/amd64 ibmcom/db2
