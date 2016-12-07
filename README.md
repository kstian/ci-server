# Vagrant CI Server configuration

## Proxy
The vagrant box proxy is set to mitrais.wsus, it's mitrais proxy for non-windows OS.

If it doesn't work, try to disable Microsoft ISA client in tray icon. 

Try use cntlm if it still doesn't work.

1. Install and setup cntlm in your host machine.
2. Make sure vagrant-proxyconf plugin is installed first
  
  ```
  vagrant plugin list
  ```
  
  If the plugin doesn't exist there, install it.
  
  ```
  vagrant plugin install vagrant-proxyconf
  ```
3. Open Vagrantfile, change proxy to cntlm one (usually it's 10.0.2.2).
4. reload vagrant box
  
  ```
  vagrant reload
  ```

## Jenkins
user: admin
pass: password

## Sonarqube
user: admin
pass: password
