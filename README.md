# Github runner
Docker install scripts for self-hosted runner

## Setup

### Get files

```
git clone https://github.com/Nuwa-genomics/Github_runner.git
```

### Install docker
```
source Install_scripts/dockerconf.sh
```

### Bring up containers
```
cd Docker
docker-compose up -d --build
```
