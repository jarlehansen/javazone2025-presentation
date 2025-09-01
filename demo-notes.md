1. generer opp prosjektet fra start.spring.io. Husk å ta med mcp-server og spring web
group: com.example.javazone
artifact: javazone-mcp
package-name: com.example.javazone

2. kjøre init.sh scriptet
3. Endre spring-ai-starter-mcp-server-webmvc dependency'en til spring-ai-starter-mcp-server
4. implementer sessions() som henter ut alle JavaZone sessions med RestClient
5. Sett opp @Bean conferenceTool, som konfigurerer at servicen lastes inn
```
@Bean
fun conferenceTool(service: ConferenceService) =
    MethodToolCallbackProvider.builder().toolObjects(service).build()
```

6. implementer getScheduleSummary. Denne skal hente ut antall sessions og antall rom på JavaZone
```
@Tool(description = "Get the schedule summary for the 2025 JavaZone conference")
fun getScheduleSummary(): Map<String, Int> {
    val sessions = sessions()
    return mapOf(
        "sessions" to sessions.size,
        "rooms" to sessions.map { it.room }.distinct().size
    )
}
```

7. konfigurer claude config til å laste inn mcp serveren
8. kjør ./restart_claude.sh for å laste inn serveren
9. Kjør en prompt for å teste 
can you give me som general information and the schedule summary for the JavaZone 2025 conference?

10. utvid mcp serveren med å legge til getSessionDetails, hvor man kan sende inn speaker
```
@Tool(description = "Get the session details for a speaker or all sessions at the JavaZone 2025 conference")
fun getSessionDetails(speaker: String?): List<ConferenceSession> {
    val sessions = sessions()

    return if (speaker.isNullOrBlank() || speaker == "all") {
        sessions
    } else {
        sessions.filter { it.hasSpeaker(speaker) }
    }
}
```

11. Bygg på nytt, og test en ny prompt som henter session details for Jarle Hansen

12. Vis intellij MCP server, be den om å liste ut antallet kotlin filer i prosjektet og hva de heter.