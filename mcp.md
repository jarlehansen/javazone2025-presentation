---
marp: true
theme: uncover
class: invert
paginate: false
footer: 'Jarle Hansen | Systek'
transition: slide
style: |
  section {
    font-size: 28px;
    position: relative;
    overflow: hidden;
  }
  
  @keyframes heroSlideIn {
    from {
      transform: translateX(20px) scale(0.98);
      opacity: 0;
    }
    60% {
      transform: translateX(5px) scale(1.01);
      opacity: 0.8;
    }
    to {
      transform: translateX(0) scale(1);
      opacity: 1;
    }
  }
  
  h1 {
    font-size: 50px;
    color: #00d4ff;
    position: relative;
    animation: titleDropIn 1.2s ease-out;
  }
  
  h1:not(#fra-konsept-til-kode)::after {
    animation: none !important;
  }
  
  @keyframes titleDropIn {
    from {
      transform: translateY(-25px);
      opacity: 0;
    }
    to {
      transform: translateY(0);
      opacity: 1;
    }
  }
  
  section:first-of-type h1::after {
    left: 0;
    width: 100%;
    transform: none;
  }
  
  
  h1::after {
    content: '';
    position: absolute;
    bottom: -5px;
    left: 50%;
    transform: translateX(-50%);
    width: 80%;
    height: 3px;
    background: linear-gradient(90deg, transparent, #00d4ff, transparent);
  }
  
  #fra-konsept-til-kode::after {
    animation: underlineExpand 0.5s ease-out 0.6s forwards, underlinePulse 6s ease-in-out 1.5s infinite;
  }
  
  @keyframes titleSlide {
    from {
      transform: translateY(-20px);
      opacity: 0;
    }
    to {
      transform: translateY(0);
      opacity: 1;
    }
  }
  
  @keyframes titleFloat {
    0%, 100% {
      transform: translateY(0);
    }
    50% {
      transform: translateY(-25px);
    }
  }
  
  
  @keyframes underlinePulse {
    0%, 100% {
      transform: scaleX(1);
    }
    50% {
      transform: scaleX(0.3);
    }
  }
  
  h2 {
    font-size: 38px;
    color: #ffffff;
  }
  
  pre {
    margin: 0.5em auto;
    border-left: 3px solid #00d4ff;
    padding-left: 1rem;
  }
  
  code {
    font-size: 22px;
    background: rgba(0, 212, 255, 0.1);
    padding: 0.2em 0.4em;
    border-radius: 3px;
    transition: all 0.3s ease;
  }
  
  code:hover {
    background: rgba(0, 212, 255, 0.2);
    transform: scale(1.05);
  }
  
  .columns {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 1rem;
  }
  
  

  section::after {
    content: '✨';
    position: absolute;
    top: 10%;
    right: 10%;
    font-size: 20px;
    opacity: 0.3;
    animation: float 8s ease-in-out infinite;
    pointer-events: none;
  }
  
  @keyframes float {
    0%, 100% {
      transform: translateY(0) rotate(0deg);
      opacity: 0.3;
    }
    25% {
      transform: translateY(-20px) rotate(90deg);
      opacity: 0.6;
    }
    50% {
      transform: translateY(-40px) rotate(180deg);
      opacity: 0.8;
    }
    75% {
      transform: translateY(-20px) rotate(270deg);
      opacity: 0.6;
    }
  }
  
  footer {
    color: #666;
    font-size: 18px;
  }
  
  ul {
    text-align: left;
  }
  
  img[src] {
    max-width: 100%;
    max-height: 50vh;
    height: auto;
    width: auto;
    object-fit: contain;
    margin: 0 auto;
    display: block;
  }
  
  .emoji, img[alt*="emoji"], img:not([src]):not([alt]) {
    display: inline !important;
    height: 1em !important;
    width: auto !important;
    max-height: 1em !important;
    max-width: none !important;
    margin: 0 !important;
    vertical-align: -0.1em !important;
    object-fit: contain !important;
  }
---

<!-- _paginate: false -->
<!-- _footer: '' -->

# Fra Konsept til Kode
## Implementer din egen MCP-server 💻

<br>

**JavaZone 2025** ☕

<br>

**Jarle Hansen** 
**Systek**

---

# **Agenda** 📋

1. 🔍 **Problem og løsning**
   - Hva er MCP?
   - Verdien det gir

2. 🛠️ **Teknisk oversikt**
   - Transport og protokoll  
   - Under panseret

3. 💻 **Praktisk demo**
   - Implementere en MCP Server

4. 🌐 **Alternativer**
   - Andre språk/rammeverk
   - Alternativ MCP server

5. 🏁 **Wrap-up**
   - Best practices
   - Oppsummering

---

# ✨ Hva er Model Context Protocol?

- **Lansert november 2024** av Anthropic som en åpen standard
- **Problemet**: AI-verktøy lever i isolasjon uten tilgang til dine data og systemer
- **Løsningen**: Standardisert måte for AI-modeller å kommunisere med eksterne systemer
- **Praktisk**: Tilgang til din kodebase, databaser, eller forretningsdata

---

# Model Context Protocol

![](images/usb-c.jpeg)

---

# **MCP gir deg** 🎁

- **En voksende liste av ferdigbygde integrasjoner** som din LLM kan koble seg direkte til
- **En standardisert måte å bygge tilpassede integrasjoner** for AI-applikasjoner  
- **En åpen protokoll** som alle kan implementere og bruke fritt
- **Fleksibiliteten til å bytte mellom ulike apper** og ta konteksten din med deg

---

# **Model Context Protocol** 🎉

<div style="font-size: 24px;">

```
     AI Modeller          MCP           Datakilder
   
   Claude ──┐                    ┌──── Database
            │                    │
   GPT-4 ───┼──── [MCP Hub] ─────┼──── API-er
            │                    │
   Gemini ──┼                    ├──── Filer
            │                    │
   Llama ───┘                    └──── Slack
```

</div>

## **= Én standard protokoll!**

---

# **MCP Support Status** 🚀

- 🤖 **Claude** (Anthropic)
- 🔷 **Copilot** (Microsoft)
- 💬 **ChatGPT** (OpenAI)
- 🌈 **Gemini** (Google)

<br>

#### **🎯 MCP er raskt på vei til å bli universell standard**  

---

# **Offisielle MCP-servere**

<div class="columns">
<div>

### **🗄️ Database**
PostgreSQL, SQLite, MongoDB

### **🛠️ Dev Tools**
GitHub, Git, Puppeteer

</div>
<div>

### **💼 Business**
Slack, Google Drive, Gmail

### **🌐 Web/API**
Brave Search, Fetch, Time

</div>
</div>

<br>

##### **🔗 github.com/modelcontextprotocol/servers**

---


# **Transport laget** 🚚

<div class="columns">
<div>

## 📡 **Stdio Transport**
- Bruker standard io
- Optimal ytelse uten nettverks-overhead
- Direkte kommunikasjon mellom lokale prosesser

</div>
<div>

## 🌐 **HTTP Transport** 
- HTTP POST for meldinger fra klient til server
- Streamable HTTP, feks Server-Sent Events (SSE)
- Autentisering: OAuth, API-nøkler, custom headers

</div>
</div>

### **🔑 JSON-RPC 2.0 format på begge**

---

# **JSON-RPC Meldingseksempel**

<div class="columns">
<div>

### **Klient → Server**
```json
{
  "jsonrpc": "2.0",
  "id": 1,
  "method": "tools/call",
  "params": {
    "name": "get_weather",
    "arguments": {
      "location": "Oslo"
    }
  }
}
```

</div>
<div>

### **Server → Klient**
```json
{
  "jsonrpc": "2.0",
  "id": 1,
  "result": {
    "content": [
      {
        "type": "text",
        "text": "Oslo: 5°C, delvis skyet. Vind: 10 km/t fra vest."
      }
    ]
  }
}
```

</div>
</div>

---

# **Livssyklus**

![](images/mcp-server.png)

---


# **MCP Byggeklosser**

<div style="text-align: left; margin: 0 auto; width: 90%;">

## 🗂️ **Resources**
Statisk innhold: dokumenter, konfigurasjon, data

## 🔨 **Tools**
Funksjoner AI kan kalle: søk, opprett, oppdater

## 💬 **Prompts**
Forhåndsdefinerte templates for spesifikke oppgaver

</div>

---

# **Hva skjer under panseret**

<style scoped>
.step-item {
  opacity: 0;
  transform: translateX(-30px);
  animation: stepSlideIn 0.3s ease-out forwards;
  margin-bottom: 35px;
}

.step-item:nth-child(1) { animation-delay: 0.1s; }
.step-item:nth-child(2) { animation-delay: 0.2s; }
.step-item:nth-child(3) { animation-delay: 0.3s; }
.step-item:nth-child(4) { animation-delay: 0.4s; }
.step-item:nth-child(5) { animation-delay: 0.5s; }
.step-item:nth-child(6) { animation-delay: 0.6s; }

@keyframes stepSlideIn {
  to {
    opacity: 1;
    transform: translateX(0);
  }
}
</style>

<div style="text-align: left; font-size: 26px; line-height: 1.8;">

1. <div class="step-item">🔵  Klienten sender spørsmålet ditt til Claude</div>

2. <div class="step-item">🧠  Claude analyserer tilgjengelige verktøy og bestemmer hva som brukes</div>

3. <div class="step-item">⚡  Klienten utfører valgte verktøy gjennom MCP-serveren</div>

4. <div class="step-item">📤  Resultatene sendes tilbake til Claude</div>

5. <div class="step-item">💬  Claude lager et passende svar</div>

6. <div class="step-item">✨  Svaret vises til deg!</div>

</div>

---

# **Demo: JavaZone MCP Server** 🎬

<div style="display: flex; flex-direction: column; align-items: center;">

📊 **Finne generell informasjon om sesjonene**

🔍 **Søke etter detaljer om presentasjonen for en foredragsholdere**

💻 **IntelliJ som MCP server (fra versjon 2025.2)**

</div>

---

# **Vi skal bygge**


<div style="display: flex; flex-direction: column; align-items: center;">

🌱 **Spring Boot applikasjon fra scratch (Kotlin + Spring AI)**

🔗 **Implementere JavaZone API-integrasjon**

⚙️ **Legge til MCP server-funksjonalitet**

🧪 **Teste med Claude Desktop**

</div>


---

<div style="text-align: center; margin: 40px 0;">

## 💬 "At this point, I wanted to start building! So, I went to my second favorite place on the internet, the Spring Initializr - [**start.spring.io**](https://start.spring.io)"

<br>

##### **— Josh Long, Spring Developer Advocate** 🌱

</div>

---


# **Andre alternativer for MCP-servere**

<div class="columns">
<div>

### **🟢 Node.js/TypeScript**
```typescript
import { Server } from '@modelcontextprotocol/sdk'

const server = new Server({
  name: 'my-server'
})
```

### **🔵 Python**
```python
from mcp import Server

server = Server("my-server")

@server.tool()
def search_data(query: str):
    return results
```

</div>
<div>

### **🔷 Go**
```go
package main

import "github.com/modelcontextprotocol/go-sdk"

func main() {
    server := mcp.NewServer("my-server")
    server.AddTool("search", searchHandler)
}
```

### **🟣 C#/.NET**
```csharp
var builder = Host.CreateApplicationBuilder();
builder.Services.AddMcpServer("my-server");

var app = builder.Build();
```

</div>
</div>

---

# **Best Practices**

<div class="columns">
<div>

### **🎯 Design & Implementering**
- Lag tools for hele arbeidsflyter
- Beskriv tools tydelig med handlingsorienterte navn
- Robust error handling og validering
- Logg til stderr (ikke stdout)

</div>
<div>

### **📈 Skalerbarhet & Sikkerhet**
- Bruk namespace organisering (`files/read`, `db/query`)
- Aldri eksponere uten autentisering
- Vurder flere MCP-servere for store systemer

</div>
</div>

---

# **Oppsummering**

- 🌐 **MCP standardiserer AI-integrasjoner** - én protokoll for alle
- 🚀 **Spring AI + Kotlin** gjør implementering enkel og kjent  
- 💻 **Demo** viser praktisk verdi på minutter
- 🔓 **Åpen standard** - ingen vendor lock-in, bred støtte

---

# **Takk for meg** 🙏

<div style="text-align: left; margin: 0 auto; width: 85%;">

##### **Referanser**
🔗 `modelcontextprotocol.io`
🔗 `docs.spring.io/spring-ai/mcp`

<br>

##### **Kontakt**
📧 LinkedIn: Jarle Hansen
📧 E-post: jarle@jarlehansen.net

</div>

![bg opacity:0.1](images/minecraft.png)
