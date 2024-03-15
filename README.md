# Github runner
Docker install scripts for self-hosted runner

## Setup

### Get files

```bash
git clone https://github.com/Nuwa-genomics/Github_runner.git
```

### Install docker
```bash
sudo chmod +x Install_scripts/dockerconf.sh
sudo source Install_scripts/dockerconf.sh
```

> [!IMPORTANT]  
> Add token env variable to docker-compose.yml file

### Bring up containers
```bash
cd Docker
docker-compose up -d --build
```
