package com.example.javazone

import java.time.LocalDateTime

const val BASE_URL = "https://sleepingpill.javazone.no"
const val SESSIONS_URI = "/public/allSessions/javazone_2025"

data class Speaker(
    val name: String,
    val bio: String
)

data class ConferenceSession(
    val intendedAudience: String,
    val suggestedKeywords: String,
    val format: String,
    val length: String,
    val language: String,
    val abstract: String,
    val title: String,
    val room: String,
    val startTime: LocalDateTime,
    val endTime: LocalDateTime,
    val startSlot: LocalDateTime,
    val speakers: List<Speaker>
) {
    fun hasSpeaker(name: String) = speakers.any { it.name.contains(name) }
}

data class Conference(
    val sessions: List<ConferenceSession>
)