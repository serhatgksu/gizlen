# gizlen
Debian server anonymity service. <br>

# Gerekli servisler
Gizlen servisinin çalışması için sisteminizde TOR servislerinin kurulu ve çalışır halde olması gerekmektedir. Tor kurulumu için aşağıda ki işlemleri gerçekleştiriyoruz. <br>

1 - apt-get install tor  

# Gizlen Kurulum
1 - git clone https://github.com/serhatgksu/gizlen.git <br>
2 - OR wget https://github.com/serhatgksu/gizlen/archive/master.zip && unzip master.zip && cd (FİLENAME) <br>
3 - chmod 777 gizlen <br>
4 - mv gizlen /usr/bin/gizlen <br>
5 - whereis gizlen (Yüklenip yüklenmediğini kontrol ediyoruz. Eğer çıkan sonuç "/usr/bin/gizlen" değilse bir sorun var demektir.) <br>
6 - nano /etc/tor/torrc <br>
7 - Açılan ekranda satırların en sonuna aşağıda ki ayarları ekliyoruz; <br>

VirtualAddrNetwork 10.192.0.0/10 <br>
AutomapHostsOnResolve 1 <br>
TransPort 9040 <br>
DNSPort 53 <br>

8 - CTRL + X yapıp Y yazdıktan sonra kayıt edip çıkıyoruz. <br>

# Servisleri başlatmak için
1 - service tor start <br> 
2 - gizlen start <br>

# Servisleri durdurmak için
1 - service tor stop <br>
2 - gizlen stop <br>

# IP adresimizi kontrol ettiğimizde değiştiğini göreceğiz..
