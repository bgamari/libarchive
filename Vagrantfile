# -*- mode: ruby -*-
# vi: set ft=ruby :

# FreeBSD vagrant for builds
Vagrant.configure("2") do |config|
  config.vm.box = "freebsd/FreeBSD-12.1-STABLE"
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end
  config.vm.provision "shell",
    inline: "pkg install --yes hs-cabal-install ghc curl"
end
