[![pages-build-deployment](https://github.com/btl-gcetts/btl-gcetts.github.io/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/btl-gcetts/btl-gcetts.github.io/actions/workflows/pages/pages-build-deployment)
[![.github/workflows/data.yml](https://github.com/btl-gcetts/btl-gcetts.github.io/actions/workflows/data.yml/badge.svg)](https://github.com/btl-gcetts/btl-gcetts.github.io/actions/workflows/data.yml)

## Bre@kTheLoop Website
Website built by and for the BreakTheLoop community.

### Setup
Fork the repository and clone it into your local system. Assuming docker is available in your system, build a container using the `dockerfile` (I use VS Code's remote containers extension) and then run `sh script/dev-init`. This should upgrade the system and dependencies if needed.
After you make the changes *manually* make sure the test pages are working.
We currently don't have an automated testing system, if you think you can contribute and wanna volunteer, PRs are always welcome. 
After making the changes commit the files to the development branch and open a PR.

### Branches
- `main` branch should be untouched till the last moment
- `gh-pages` branch is only for static hosting and should not have any commits other than the automated ones
- `dev` branch is the development branch, new confirmed features and updates go in here before getting merged into the `main`
- open new branches for each new feature, they should be up to date with the `main` and/or `dev` branches during development

### Why Jekyll and the weird MongoDB integrations?
The community lacks funding at the moment and thus we are bound to free hosting. Github Pages is a wonderful way to freely host great static sites. 
Using Jekyll just makes development very easy with its templating features and flexibility. 
For the other part of the question, I just thought it'd be a better idea to keep some data private and kept within a few hands. This is a prevention measure against possible exploits. So instead of using the default `_data` directory, we use MongoDB to store the data and the `_data` directory is automatically generated before the page is built and published. In the future, we might be able to implement something more conventional (like jam stack, Django) instead of using APIs and dynamic hosting.

### For Support and Clarification
Contact me ([@ificiana](https://github.com/ificiana)) via the email listed on my profile or other maintainers of this repository.
