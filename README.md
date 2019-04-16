# Örnek Spring Boot Uygulaması #

Depodaki örnek uygulama örnek bir spring boot uygulamasının[1] Docker containerı haline getirilip, Jenkins ve Ansible ile uzaktaki bir sunucuya deploy edilmesini sağlamaktadır.

## Gereksinimler ##
- Jenkins Sunucusu
    - Docker
    - Ansible
    - Python docker modülü
- Uygulama Sunucusu
- Docker Hub user/pass (Jenkins üzerinde credentials olarak tanımlanmalıdır)
- Deploy edilecek sunucu üzerinde parolasız sudo yetkisi olan bir kullanıcı (Jenkins üzerinde credentials olarak tanımlanmalıdır)

## Varsayımlar ##
-   Çalışan bir Jenkins sunucusu ve uygulama sunucusu olduğu varsayılmıştır. Bu sunucular üzerindeki bağımlıklıkların kurulumuna dair detayları içermemektedir.

[1] - http://patrickgrimard.io/2014/08/14/how-to-build-a-spring-boot-application-using-intellij-idea/
