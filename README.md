PathAct
===========
PathAct is a web tool that enables the study of the consequences that Knockouts(KOs) or over-expressions of genes can have over signalling pathways. PathAct implements robust models of signalling pathways within an advanced graphical interface that provide a unique interactive working environment in which actionable genes, that could become potential drug targets, can be easily assayed alone or in combinations. Also the effect of drugs with known targets over the different signalling pathways can be studied. Since signals trigger functions across the pathways, the direct and long-distance functional consequences of interventions over genes can be straightforwardly revealed through this actionable pathway scenario


## Download code
```bash
git clone https://github.com/babelomics/pathact.git
cd pathact/
```

## Compiling CSS and JavaScript

```bash
cd pathact/
```

### Install Node
To install node click [here.](https://nodejs.org/en/download/package-manager/)

**What is `npm`?** npm stands for [node packaged modules](http://npmjs.org/) is the node dependency manager.

### Install bower components and npm modules

```bash
sudo npm install -g bower
npm install
bower install
```

### Run builder
```bash
npm run build
```
Minimized files will be located in the `/build` dir.


### Back-end Configuration
PathAct uses [stevia-server](https://github.com/babelomics/stevia-server) as back-end for user, file and job management.
To use your own stevia-server installation you must modify the **conf/config.js** file and change the STEVIA_SERVER_HOST to the new URL.
