This repository contains utils and scripts I created to help automating repetitive tasks.

All need to be ran either in Linux or in the WSL.

- `git-init-repo` is a shell script that initializes git repositories with Azure Devops or GitHub. It requires the [VSTS CLI]() and the GitHub CLI I built (`npm install @cfe84/github-cli`)  to work.
- `az-set-account` allows you to select the subscription the Azure CLI is pointing to.
- `migrate-vsts` and `vsts-clone-all-repositories.sh` allow you to handle all repos of a single Azure Devops project at once.
- `k8s-*` are tools to set context and namespace you are using.