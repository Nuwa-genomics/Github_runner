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

### Bring up containers
```bash
cd Docker
docker-compose up -d --build
```
