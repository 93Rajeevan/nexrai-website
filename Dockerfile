FROM nginx:alpine

# HTML-Seiten
COPY index.html        /usr/share/nginx/html/
COPY datenschutz.html  /usr/share/nginx/html/
COPY impressum.html    /usr/share/nginx/html/
COPY agb.html          /usr/share/nginx/html/

# Schriftarten (lokal gehostet, DSGVO)
COPY fonts/ /usr/share/nginx/html/fonts/

EXPOSE 80
