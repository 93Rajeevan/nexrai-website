FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY rechner.html /usr/share/nginx/html/rechner.html
COPY agb.html /usr/share/nginx/html/agb.html
COPY datenschutz.html /usr/share/nginx/html/datenschutz.html
COPY impressum.html /usr/share/nginx/html/impressum.html
