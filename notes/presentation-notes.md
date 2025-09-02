# Fra konsept til kode


# Agenda

1. Problem og løsning
Vi skal starte med å se på hvilket problem og løsning som MCP tilbyr
Vi skal gå litt inn på verdien dette gir

2. Teknik oversikt
Vi skal ha en kort gjennomgang av hvordan den tekniske løsningen er
Skal se på detaljer rundt transport og protokoll
Og litt innsikt i hvordan teknologien fungerer under panseret

3. Praktisk demo
Så skal vi hoppe inn i en demo, som viser hvordan vi kan implementere vår egen MCP server.
Vi skal også se prøve å ta i bruk en annen standard MCP server

4. Alternativer
Vi skal se på noen alternativer, hvilke andre muligheter man har av språk og rammeverk for MCP

5. Avslutning
Se litt på best practices ved implementering av MCP og en oppsummering til slutt


# Hva er Model Context Protocol
- Det er en åpen protokoll.
- Problemet det prøver å løse er at AI verktøyene lever i isolasjon uten tilgang til dine data og systemer.
- Så det MCP tilbyr er jo nettopp en standardisert måte for AI-verktøyene å kommunisere med eksterne datakilder


# Model Context Protocol
På den offisielle MCP websiden så sammenligner de teknologien med usb-c.
Altså at man har ryddet opp i det rotet det var med mange ulike usb kabler, med å tilby en fast standard, som er usb-c
På sammen måte prøver MCP å gjøre integrasjonen mellom ai-verktøy og ekstern data på en standard måte, som ikke er knyttet til en viss implementasjon


# Model Context Protocol
Tenk på dette som en felles standard som de ulike verktøyene støtter
Her har vi feks Claude og Gemini som støtter MCP, som igjen gjør det mulig å koble til feks en intern database for å kunne bruke dataene der til å berike konteksten og få enda mer nytte av ai på


# MCP support status
MCP støttes nå av de store AI tilbyderne, som Claude, Copilot, ChatGPT, Gemini.
Det er på vei til å bli en universell standard.


# Offisielle MCP-servere
Det finnes et stort antall offisielle mcp-servere som er verdt å sjekke ut.
Hvis man feks har behov for å integrere med Postgres eller github, eller slack, så finnes det allerede servere åpent tilgjengelig.
Gå på linken nederst for å finne en lang liste av ulike MCP servere.


# Transport laget
Hvis vi går videre til hvordan MCP fungerer teknisk, så skal vi starte med å se på transport laget.
Man har 2 hoved-metoder, det ene er å kjøre som standard input-output, det andre er med å bruke HTTP


# JSON-RPC meldingseksempel
Metoden get_weather som kalles, med lokasjon som input
Responsen inneholder været på det stedet


# Livssyklus
Fungerer som følger
Man starter med Initialization
Så er det en discovery fase hvor serveren viser hva den tilbyr
Og det siste er at kall sendes fra klienten til serveren når brukeren har bedt om relevant informasjon


# MCP byggeklosser


# Hva skjer under panseret


# Demo: JavaZone MCP server


# Josh Long
I følge josh long, så er hans favorittsted nummer 2 på internett spring initialzr.
Vi skal ta hans råd, og gå til start.spring.io


# Demo oppsummering
- Vist et eksempel med Kotlin og Spring AI
- Hvor enkelt det er å komme i gang


# Andre alternativer for MCP servere
- Finnes mange ulike implementasjoner av MCP SDKen man kan bruke
- Kotlin og Spring er bare en variant, her har vi listet opp noen av de andre
- Bruk det som passer best i forhold til kompetanse og tech stack


# Best practices


# Sikkerhet


# Oppsummering


# Takk for meg