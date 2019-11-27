This repository contains utils and scripts I created to help automating repetitive tasks.

Install the az cli and Devops extension like so:

```sh
az extension add --name azure-devops
```

All need to be ran either in Linux or in the WSL.

- `git-init-repo` is a shell script that initializes git repositories with Azure Devops or GitHub. It requires the [VSTS CLI]() and the GitHub CLI I built (`npm install @cfe84/github-cli`)  to work.
- `az-set-account` allows you to select the subscription the Azure CLI is pointing to.
- `migrate-vsts` and `vsts-clone-all-repositories.sh` allow you to handle all repos of a single Azure Devops project at once.
- `k8s-*` are tools to set context and namespace you are using.
- `git-check-subfolders` check all subfolders for git repos that have not been updated