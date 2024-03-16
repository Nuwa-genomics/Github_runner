# Github runner
install scripts for self-hosted runner

## Setup

### Get files

```bash
git clone https://github.com/Nuwa-genomics/Github_runner.git
```

### Install docker
```bash
cd Install_scripts
sudo chmod +x dockerconf.sh
sudo ./dockerconf.sh
```

> [!IMPORTANT]  
> Add the user to the docker group

### Create .env file in Github_runner/Runner_scripts

.env
```
REPO=Nuwa-genomics/Nuwa
TOKEN=<Your-token-here>
RUNNER_VERSION="2.314.1"
DEBIAN_FRONTEND=noninteractive
USER=<Your-linux-user>
```

> [!IMPORTANT]  
> Remember to add your token and linux username!

**Now activate**
```bash
export $(cat .env | xargs) && env
```

### Install deps for runner

```bash
sudo ./install.sh
```

### Configure runner

This will let you create a name for your runner, work directory and tags.

```bash
./configure
```

### Run runner

```bash
sudo /home/$USER/actions-runner/run.sh
```

> [!TIP]  
> Add the above to a crontab so it runs on reboot


### Bring up containers

```bash
cd Docker
docker-compose up -d --build
```
