# nexrai.de — Website

Statische Website, ausgeliefert über nginx im Container.
Deploy läuft über Coolify: Push auf `main` löst den Build aus.

## Inhalt

| Datei | Zweck |
|---|---|
| `index.html` | Startseite |
| `impressum.html` · `datenschutz.html` · `agb.html` | Rechtsseiten |
| `nexrai-potenzialrechner.html` | eigenständiger Rechner |
| `fonts/` | Inter, Fraunces, Oxanium, DM Sans — alle lokal (DSGVO) |
| `assets/img/` | WebP-Bilder |
| `Dockerfile` · `nginx.conf` | Build und Auslieferung |

## Wichtig

Es werden **keine externen Ressourcen** geladen. Keine Google Fonts, keine CDNs,
keine Tracker. Die Datenschutzerklärung sagt das ausdrücklich zu, also muss es
so bleiben. Vor dem Einbinden einer externen Bibliothek erst die
Datenschutzerklärung prüfen.

## Lokal ansehen

```bash
python3 -m http.server 8080
```

## Arbeitsweise

Entwickelt wird in `../Entwicklung/Website-v6/`, dieser Ordner ist der
Deploy-Stand. Ältere Versionen liegen in `../Archiv/`.
