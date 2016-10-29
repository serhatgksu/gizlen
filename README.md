# gizlen
Debian server anonymity service. 

# Gerekli servisler
Gizlen servisinin çalışması için sisteminizde TOR servislerinin kurulu ve çalışır halde olması gerekmektedir. Tor kurulumu için aşağıda ki işlemleri gerçekleştiriyoruz.

1 - apt-get install tor

# Gizlen Kurulum
1 - touch gizlen
2 - nano gizlen 
3 - chmod 777 gizlen 
4 - mv gizlen /usr/bin/gizlen
5 - whereis gizlen (Yüklenip yüklenmediğini kontrol ediyoruz. Eğer çıkan sonuç "/usr/bin/gizlen" değilse bir sorun var demektir.)
6 - nano /etc/tor/torrc
7 - Açılan ekranda satırların en sonuna aşağıda ki ayarları ekliyoruz;

VirtualAddrNetwork 10.192.0.0/10
AutomapHostsOnResolve 1
TransPort 9040
DNSPort 53

8 - CTRL + X yapıp Y yazdıktan sonra kayıt edip çıkıyoruz.

# Servisleri başlatmak için
1 - service tor start
2 - gizlen start

# Servisleri durdurmak için
1 - service tor stop
2 - gizlen stop

# IP adresimizi kontrol ettiğimizde değiştiğini göreceğiz..
