---
marp: true
theme: uncover
class: invert
paginate: false
footer: 'Jarle Hansen'
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


  h1:not(#from-concept-to-code)::after {
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

  #from-concept-to-code::after {
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

  .columns div:nth-child(2) {
    text-align: left;
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

  /* Reduce spacing between numbered lists and their sub-bullets */
  ol li ul {
    margin-top: -0.5em;
    margin-bottom: 0.5em;
  }

  ol li ul li {
    font-style: italic;
  }

  ol li {
    margin-bottom: 0.8em;
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

  /* At This Point slide animations */
  .at-this-point-quote {
    opacity: 0;
    transform: translateY(50px) scale(0.95);
    animation: fadeInUp 1.5s ease-out 0.5s forwards;
  }

  .josh-long-signature {
    opacity: 0;
    transform: translateX(-30px);
    animation: slideInRight 0.4s ease-out 1s forwards;
  }

  @keyframes fadeInUp {
    0% {
      opacity: 0;
      transform: translateY(50px) scale(0.95);
    }
    60% {
      opacity: 0.8;
      transform: translateY(-10px) scale(1.02);
    }
    100% {
      opacity: 1;
      transform: translateY(0) scale(1);
    }
  }

  @keyframes slideInRight {
    0% {
      opacity: 0;
      transform: translateX(-30px);
    }
    70% {
      opacity: 0.9;
      transform: translateX(5px);
    }
    100% {
      opacity: 1;
      transform: translateX(0);
    }
  }

  /* Fade with glow effect */
  .quote-text {
    opacity: 0;
    filter: blur(5px);
    animation: fadeInSharp 0.5s ease-out 0.1s forwards;
  }

  .quote-highlight {
    display: inline-block;
    opacity: 0;
    transform: scale(1.2);
    filter: blur(3px);
    animation: glowFocus 0.4s ease-out 0.6s forwards;
  }

  @keyframes fadeInSharp {
    0% {
      opacity: 0;
      filter: blur(5px);
    }
    100% {
      opacity: 1;
      filter: blur(0px);
    }
  }

  @keyframes glowFocus {
    0% {
      opacity: 0;
      transform: scale(1.2);
      filter: blur(3px);
      text-shadow: 0 0 20px #00d4ff;
    }
    50% {
      opacity: 0.8;
      transform: scale(1.1);
      filter: blur(1px);
      text-shadow: 0 0 15px #00d4ff;
    }
    100% {
      opacity: 1;
      transform: scale(1);
      filter: blur(0px);
      text-shadow: 0 0 8px #00d4ff;
    }
  }

  /* Extended animation for title slide */
  .extended-text {
    display: inline-block;
    color: #ff4444;
    font-weight: bold;
    opacity: 0;
    transform: translateY(-100vh) rotate(-10deg);
  }

  /* Animation triggered by button press/navigation */
  .extended-text.animate {
    animation: fallIn 1.5s ease-out forwards;
  }

  @keyframes fallIn {
    0% {
      opacity: 0;
      transform: translateY(-100vh) rotate(-10deg);
    }
    60% {
      opacity: 1;
      transform: translateY(10px) rotate(2deg);
    }
    80% {
      transform: translateY(-5px) rotate(-1deg);
    }
    95% {
      transform: translateY(2px) rotate(0.5deg);
    }
    100% {
      opacity: 1;
      transform: translateY(0) rotate(0deg);
    }
  }

  /* JavaScript to trigger animation on navigation */
  /* Add this script to handle the animation trigger */
  .slide-trigger {
    position: absolute;
    bottom: 20px;
    right: 20px;
    background: #00d4ff;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    transition: all 0.3s ease;
  }

  .slide-trigger:hover {
    background: #0099cc;
    transform: scale(1.05);
  }

  /* Trigger animation on hover of the title - only on first slide */
  section:first-of-type h1:hover .extended-text {
    animation: fallIn 1.5s ease-out forwards;
  }

  /* Add hover cursor only on first slide */
  section:first-of-type h1 {
    cursor: pointer;
    position: relative;
  }
---

<!-- _paginate: false -->
<!-- _footer: '' -->

# From Concept to Code <span class="extended-text" id="extended">(Extended)</span>
## Implement Your Own MCP Server 💻

<br>

**JavaZone 2025** ☕

<br>

**Jarle Hansen**

---

# **Agenda** 📋

<div style="font-size: 26px; line-height: 1.4;">

1. 🔍 **Problem and solution**

2. 🛠️ **Technical overview**

3. 💻 **Practical demo**

4. 🌐 **Alternatives for MCP implementation**

5. 🏁 **Wrap-up**

</div>

---

# ✨ What is Model Context Protocol?

- **Launched November 2024** by Anthropic
<br>
- **The Problem**: AI tools live in isolation without access to your data and systems
<br>
- **The Solution**: Standardized way for AI models to communicate with external systems

---

# Model Context Protocol

![](images/usb-c.jpeg)

---

# **Official MCP Servers**

<div class="columns">
<div>

### **🗄️ Database**
PostgreSQL, SQLite, MongoDB

### **🛠️ Dev Tools**
GitHub, Git, Puppeteer, Context 7

</div>
<div>

### **💼 Business**
Slack, Google Drive, Gmail

### **🌐 Web/API**
Brave Search, Fetch, Time

</div>
</div>

<br>

##### **🔗 [github.com/modelcontextprotocol/servers](https://github.com/modelcontextprotocol/servers)**

---


# **Transport Layer** 🚚

<div class="columns">
<div>

## 📡 **Stdio Transport**
- Good performance, no network overhead
- Direct communication between local processes

</div>
<div>

## 🌐 **HTTP Transport**
- HTTP POST from client to server
- Streamable HTTP implementation, e.g., Server-Sent Events (SSE)
- Authentication: OAuth, API keys, custom headers

</div>
</div>

### **🔑 JSON-RPC 2.0 format on both**

---

# **Lifecycle**

<div class="columns">
<div>

![width:400px](images/mcp-server.png)

</div>
<div>

<br>

**1. Initialization** - The client connects to the MCP server and establishes communication
*(Claude Desktop, Claude Code, <br>VS Code...)*

<br>

**2. Discovery** - The server exposes available tools/resources/prompts

<br>

**3. Execution** - The client calls tools and receives the result

</div>
</div>


---

# **Demo: JavaZone MCP Server**

<style scoped>
.process-steps {
  text-align: left;
  font-size: 26px;
  line-height: 1.8;
}

.process-steps > div {
  opacity: 0;
  transform: translateX(-40px);
  animation: slideInStep 0.6s ease-out forwards;
}

.process-steps > div:nth-child(1) { animation-delay: 0.2s; }
.process-steps > div:nth-child(3) { animation-delay: 0.5s; }
.process-steps > div:nth-child(5) { animation-delay: 0.8s; }

@keyframes slideInStep {
  0% {
    opacity: 0;
    transform: translateX(-40px);
  }
  100% {
    opacity: 1;
    transform: translateX(0);
  }
}

/* Hover effect for interactivity */
.process-steps > div:hover {
  transform: translateX(10px);
  transition: transform 0.2s ease;
}
</style>

<div class="process-steps">

<div>📊 <strong>Find general information about the conference</strong></div>

<br>

<div>🔍 <strong>Search for presentation details for a speaker</strong></div>

<br>

<div>💻 <strong>IntelliJ as MCP server (from version 2025.2)</strong></div>

</div>

---

<div style="text-align: center; margin: 40px 0;" class="at-this-point-quote">

<div class="quote-text">
<h2>💬 "At this point, I wanted to start building! So, I went to my second favorite place on the internet, the Spring Initializr - <span class="quote-highlight"><a href="https://start.spring.io"><strong>start.spring.io</strong></a></span>"</h2>
</div>

<br>

<div class="josh-long-signature">
<h5><strong>— Josh Long, Spring Developer Advocate</strong> 🌱</h5>
</div>

</div>

---

# **Other Alternatives for MCP Servers**

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

### **🎯 Design & Implementation**
- Create tools for entire workflows
- Describe tools clearly with action-oriented names
- Robust error handling and validation
- Log to stderr (not stdout)

</div>
<div>

### **📈 Scalability & Security**
- Use namespace organization (`files/read`, `db/query`)
- Consider multiple MCP servers for large systems
- For remote servers, remember authentication

</div>
</div>

---

<!-- _footer: '' -->

# **🏪 MCP Registry (09/09-2025)**

![width:80%](images/mcp-registry.jpg)

##### **🔗 [https://registry.modelcontextprotocol.io](https://registry.modelcontextprotocol.io)**

---

# **MCP Registry Preview** 🚀

<br>

- **🌐 Centralized source of truth** for MCP ecosystem discovery

<br>

- **📦 Open catalog and API** for publicly available MCP servers

<br>

- **🤝 Community-driven** with 16+ contributors from 9+ companies

<br>

- **🔧 Flexible registry options** supporting public and private sub-registries

---

<iframe src="http://localhost:8080/mcp-registry.html" width="100%" height="600" style="border: none;"></iframe>

---

# **Security**

**Security best practices  🔒**
https://modelcontextprotocol.io/specification/latest

<br>

**Only use MCP from trusted sources**

---

# **Summary**

- 🌐 **MCP standardizes AI integrations** - one protocol for all

<br>

- 🔓 **Open standard** - no vendor lock-in, broad support

<br>

- 🚀 **Demo: Kotlin + Spring AI**, easy to get started

<br>

- 💻 **Multiple implementations available** in various languages

<br>

- 🔒 **Consider security**


---

# **Thank You** 🙏

<div style="text-align: left; margin: 0 auto; width: 85%;">

##### **References**
🔗 `modelcontextprotocol.io`
🔗 `docs.spring.io/spring-ai/reference`

<br>

##### **Contact**
**Jarle Hansen**
📧 Email: jarle@jarlehansen.net

</div>

![bg opacity:0.16](images/minecraft.png)