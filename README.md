<div align="center">
    <h1 style="font-weight: bolder; margin-top: 0" class="opacity-75">Symfony STACKIT Starter</h1>
</div>

<div align="center">
  <p>Symfony 6 + Nginx + PHP-FPM + Docker Alpine </p>

  <p>
    <a href="#">
      <img src="https://img.shields.io/badge/PRs-Welcome-brightgreen.svg?style=flat-square" alt="PRs Welcome">
    </a>
    <a href="#">
      <img src="https://img.shields.io/badge/License-Apache-brightgreen.svg?style=flat-square" alt="Apache License">
    </a>
  </p>

  <img src="https://xrgo.io/wp-content/uploads/STACKIT_CLOUD_POS_CMYK-1024x226.png" width="300"/>
</div>

---

## Starting started on STACKIT

STACKIT was founded in 2018 to drive the digital transformation within the Schwarz Group with its own 
high-performance cloud and colocation infrastructure. STACKIT is a strategic project that supports the 
digitalization of companies’ core businesses within the Schwarz Group. In addition to powerful, secure data centers, 
they have the cloud-based IT infrastructure required to store, analyze and use large quantities of data. Read more on <https://www.stackit.de/en>

## Motivation
Currently, there is no sample project for Symfony application, which can be used to get started on STACKIT.
This project is going to provide a standard symfony project with minimal configuration, so that any external & internal 
STACKIT customer can use Symfony on STACKIT easily as possible.

More sample projects like this can be found on <https://github.com/cloudfoundry-samples>

## Preparation
checkout the project
```bash
git clone https://github.com/vikbert/stackit-symfony-starter.git
cd stackit-symfony-starter/app
```

## How to start on local
```bash
make start
```

## Quick Deploy to STACKIT
create a demo project named *myapp* on `portal.stackit`
```bash
cf login
cf target -s prod
cf push myapp -f manifest.prod.yml
# it should deploy the current project source code on mayapp on STACKIT.
```

To deploy a project in another language, check the sample project on <https://github.com/cloudfoundry-samples>

## Default configurations
- `manifest.prod.xml`: minimal config for hardware and build package
- `options.json`: manage the options which are set with the necessary default values for STACKIT
- `zzz_symfony.ini`: prefix `zzz_` makes it possible that this config will be loaded as the last one
- `extensions.ini`: config php extensions
- `stdout.conf`: config the output from workers
- `server-locations.conf`: nginx server configuration

##  licence
[apache-2.0](https://choosealicense.com/licenses/apache-2.0/)

## Maintainer
[xun.zhou@mail.schwarz](https://vikbert.github.io/)
