# nexrai.de — Master-Projekt (Next.js, statischer Export)
#
# Gebaut wird lokal (npm run build), ins Repo kommt nur das fertige
# Ergebnis unter site/. Auf dem Server laeuft damit wie bei v7 nur nginx:
# kein Node, kein npm, keine Schluessel.
FROM nginx:alpine

# Eigene Server-Konfiguration (Cache-Header, Sicherheits-Header, Weiterleitungen)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Website
COPY site/ /usr/share/nginx/html/

EXPOSE 80
