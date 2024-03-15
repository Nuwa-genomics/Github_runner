# Github runner
Docker install scripts for self-hosted runner

## Setup

### Get files

```bash
git clone https://github.com/Nuwa-genomics/Github_runner.git
```

### Install docker
```bash
source Install_scripts/dockerconf.sh
```

> [!IMPORTANT]  
> Add env variables to docker-compose.yml file

### Bring up containers
```bash
cd Docker
docker-compose up -d --build
```
