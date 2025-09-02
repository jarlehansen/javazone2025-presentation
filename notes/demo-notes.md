1. generer opp prosjektet fra start.spring.io. Husk å ta med mcp-server og spring web
group: com.example.javazone
artifact: javazone-mcp
package-name: com.example.javazone

2. kjøre init.sh scriptet
3. Endre spring-ai-starter-mcp-server-webmvc dependency'en til spring-ai-starter-mcp-server
4. implementer sessions() som henter ut alle JavaZone sessions med RestClient
5. implementer getConferenceSummary. Denne skal hente ut antall sessions og antall rom på JavaZone
```
@Tool(description = "Get the conference summary for JavaZone 2025")
fun getConferenceSummary(): Map<String, Int> {
    val sessions = sessions()
    return mapOf(
        "sessions" to sessions.size,
        "rooms" to sessions.map { it.room }.distinct().size
    )
}
```

6. Sett opp @Bean conferenceTool, som konfigurerer at servicen lastes inn
```
@Bean
fun conferenceTool(service: ConferenceService) =
    MethodToolCallbackProvider.builder().toolObjects(service).build()
```

7. utvid mcp serveren med å legge til getSessionDetails, hvor man kan sende inn speaker
```
@Tool(description = "Get the session details for a speaker at the JavZone 2025 conference")
fun getSessionDetails(speaker: String) =
    sessions().filter { it.hasSpeaker(speaker) }
```
8. kjør `gradle build` for å bygge jar filen

9. konfigurer claude config til å laste inn mcp serveren
10. kjør ./restart_claude.sh for å laste inn serveren
11. Kjør en prompt for å teste conference summary
get a summary of the javazone 2025 conference
12. Kjør en prompt for å teste session details
get the session details for the speaker Jarle Hansen at the javazone 2025 conference

13. Vis intellij MCP server, be den om å liste ut antallet kotlin filer i prosjektet og hva de heter.
list the kotlin file names in the current intellij project
