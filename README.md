# nexrai.de — Website

Statische Website, ausgeliefert über nginx im Container.
Deploy läuft über Coolify: Push auf `main` löst den Build aus.

Seit dem Master-Projekt (Oktober 2026) ist die Seite mit Next.js gebaut
(statischer Export). Gebaut wird lokal, ins Repo kommt nur das Ergebnis:

| Pfad | Zweck |
|---|---|
| `site/` | fertige Website (Ausgabe von `npm run build`, Ordner `out/`) |
| `Dockerfile` · `nginx.conf` | Auslieferung, Cache- und Sicherheits-Header, Weiterleitungen |

Quelle: `04_Website-Nexrai/Entwicklung/Master-Projekt/web/`.
Neu einsetzen: `Entwicklung/Master-Projekt/deploy/live-vorbereiten.sh`.

## Wichtig

Es werden **keine externen Ressourcen** geladen. Keine Google Fonts, keine CDNs,
keine Tracker. Die Datenschutzerklärung sagt das ausdrücklich zu, also muss es
so bleiben. Keine API-Schlüssel im Repo oder in `site/`.

## Rückweg

Der letzte Stand der Single-File-Seite trägt den Git-Tag `v7-single-file`
(Kopie zusätzlich in `Archiv/Live-v7-<Datum>`). Zurück:
`git revert` des Umstellungs-Commits, pushen, Coolify baut neu.
