<div align="center">
    <img src="https://dev.azure.com/schwarzit/a93859d1-1284-447d-9b34-67bc9cd2f7e4/_apis/git/repositories/6af9d3a9
-d48d-42ba-810d-5cac3de6a97f/items?path=/docs/starter_docker.
png&versionDescriptor%5BversionOptions%5D=0&versionDescriptor%5BversionType%5D=0&versionDescriptor%5Bversion%5D=main
&resolveLfs=true&%24format=octetStream&api-version=5.0" alt="starter logo" width="300px">
    <h1 style="font-weight: bolder; margin-top: 0px" class="opacity-75">Symfony Docker Starter</h1>
</div>

<div align="center">
  <p>Symfony 5/6 + Nginx + PHP-FPM + Docker Alpine </p>

  <p>
    <a href="#">
      <img src="https://img.shields.io/badge/PRs-Welcome-brightgreen.svg?style=flat-square" alt="PRs Welcome">
    </a>
    <a href="#">
      <img src="https://img.shields.io/badge/License-Apache-brightgreen.svg?style=flat-square" alt="Apache License">
    </a>
  </p>
</div>

---

## 🚀 Starting started 
read the official documentation to learn how to install symfony <https://symfony.com/download>.
> `make init` is going to initialize an application with symfony. Be sure that you have already started `Proxifier` 
> client. Based on the feature branch you selected, `make init` will initialize `symfony 5.4` in `main` branch, and 
> `symfony 6` in `php-8` feature branch.
```
cd starter-symfony-docker
// switch to main branch: PHP7 and Symfony 5.4 skeleton project 
git checkout php-8
make init
make start


// switch to php-8 branch: PHP8 and Symfony 6 skeleton project
git checkout php-8
make init
make start

// How to use another invidual symfony project
// for example: use the symfony demo project (https://github.com/symfony/demo.git)
git stash
git checkout php-8
rm -rf app/.* app/*
git clone https://github.com/symfony/demo.git app
make start
```

## ✅ Localhost

go to [http://localhost](http://localhost)

<img src="https://dev.azure.com/schwarzit/a93859d1-1284-447d-9b34-67bc9cd2f7e4/_apis/git/repositories/6af9d3a9-d48d
-42ba-810d-5cac3de6a97f/items?path=/docs/sf6.png&versionDescriptor%5BversionOptions%5D=0&versionDescriptor%5BversionType%5D=0&versionDescriptor%5Bversion%5D=main&resolveLfs=true&%24format=octetStream&api-version=5.0" alt="symfony 6" width="800px">

<img src="https://dev.azure.com/schwarzit/a93859d1-1284-447d-9b34-67bc9cd2f7e4/_apis/git/repositories/6af9d3a9-d48d
-42ba-810d-5cac3de6a97f/items?path=/docs/sf5.
png&versionDescriptor%5BversionOptions%5D=0&versionDescriptor%5BversionType%5D=0&versionDescriptor%5Bversion%5D=main
&resolveLfs=true&%24format=octetStream&api-version=5.0" alt="symfony 5" width="800px">

## 🔥 Problems
Check the VPN configuration and `proxifier`, if you have the following SSL certificate problem.
```bash
Creating a "symfony/skeleton" project at "./"

  [Composer\Downloader\TransportException]
  curl error 60 while downloading https://repo.packagist.org/packages.json: SSL certificate problem: unable to get lo
  cal issuer certificate
```

##  licence
[apache-2.0](https://choosealicense.com/licenses/apache-2.0/)

## Maintainer
[xun.zhou@mail.schwarz](https://vikbert.github.io/)
