FROM nginx:alpine

# Eigene Server-Konfiguration (Cache-Header, Sicherheits-Header)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Website
COPY index.html                  /usr/share/nginx/html/
COPY impressum.html              /usr/share/nginx/html/
COPY datenschutz.html            /usr/share/nginx/html/
COPY agb.html                    /usr/share/nginx/html/
COPY nexrai-potenzialrechner.html /usr/share/nginx/html/

# Schriftarten und Bilder, beide lokal ausgeliefert (DSGVO)
COPY fonts/  /usr/share/nginx/html/fonts/
COPY assets/ /usr/share/nginx/html/assets/

EXPOSE 80
