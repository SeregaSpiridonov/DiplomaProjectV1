upstream {{ url_adr }}{
   ip_hash;
   server {{ ip_vm2 }}:8080 max_fails=1 fail_timeout=120s;
   server {{ ip_vm3 }}:8080 max_fails=1 fail_timeout=120s;
   }
   server {
       listen 80;
       return 301 https://$host$request_uri;
   }
   server {
        listen 443 ssl;
        server_name {{ url_adr }} www.{{ url_adr }};
        ssl_certificate     {{ url_adr }}.crt;
        ssl_certificate_key {{ url_adr }}.key;
        ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
        ssl_ciphers         HIGH:!aNULL:!MD5;
        ssl_session_cache   shared:SSL:5m;
        ssl_session_timeout 5m;
        keepalive_timeout 60;
        location / {
                proxy_pass http://{{ url_adr }};
                proxy_set_header X-Forwarded-Proto $scheme;
                proxy_connect_timeout  10;
        }
   }
   server {
        listen 9000 ssl;
        server_name {{ url_adr }} www.{{ url_adr }};
        ssl_certificate     {{ url_adr }}.crt;
        ssl_certificate_key {{ url_adr }}.key;
        ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
        ssl_ciphers         HIGH:!aNULL:!MD5;
        ssl_session_cache   shared:SSL:5m;
        ssl_session_timeout 5m;
        keepalive_timeout 60;
        location / {
                proxy_pass http://{{ ip_vm6 }}:9000;
                proxy_set_header X-Forwarded-Proto $scheme;
                proxy_connect_timeout  10;
        }
   }
