# SchemeSaathi (स्कीमसाथी)
### Government Scheme and Scholarship Finder with AI-Assisted Auto-Apply
**Developed for Kritical Hacks 2026 by Team CodeRush**  
*“You bring the dream. We handle the paperwork.”*

---

## 🌟 Overview
**SchemeSaathi** is an AI-powered, multilingual civic platform that bridges the gap between Indian students/families and over 1,800+ central, state, and institutional welfare schemes.

Even though billions of rupees in government benefits exist, **82% of eligible beneficiaries miss out** due to scattered portals, bureaucratic jargon, document discrepancies, and missed deadlines. SchemeSaathi eliminates these friction points with deterministic eligibility verification, intelligent OCR document checks, and safe live-web auto-filling powered by **TinyFish**.

---

## 🚀 Live Demo & How to Run
The web application is self-contained and zero-dependency.

### Option 1: One-Click Windows Launch
Double-click:
```bat
start.bat
```
This automatically boots the Node.js server and launches your default web browser at `http://localhost:3000`.

### Option 2: Manual Terminal Run
```powershell
node server.js
```
Then visit [http://localhost:3000](http://localhost:3000) in any web browser.

### Option 3: Direct File View
You can also open [index.html](file:///c:/Users/Aakashi%20Arora/OneDrive/Desktop/Kritical%20Hacks/index.html) directly in Chrome, Edge, or Firefox.

---

## 🧠 AI, ML & Technical Architecture

### 1. Deterministic Rule Engine (Zero Hallucination Guarantee)
- Prevents LLM hallucinations on legal eligibility criteria.
- Hard rules evaluate criteria deterministically:
  - Gender requirements
  - Social category (SC / ST / OBC / EWS / General / Minority)
  - Course level & Institution AICTE/UGC affiliation
  - Exact annual family income ceilings
  - Minimum qualifying board exam marks & domicile state

### 2. Multi-Objective ML Ranking Engine
- Ranks qualified schemes dynamically by:
  - **Fit Score (0–100%)**: Marks surplus, demographic alignment, first-generation graduate bonus.
  - **Urgency Score**: Deadlines closing within 7 days receive an urgent `"Apply First"` recommendation.
  - **Benefit Weight**: Financial assistance amount (e.g. ₹50,000/year for technical degrees).
  - **Approval Likelihood**: Historical acceptance and disbursement rates.

### 3. Natural Language (NLP) & Voice Entity Parser
- Allows students to describe themselves freely in everyday English or Hindi:  
  *“e.g. I am a girl in B.Tech, SC category, family income 2 lakh, 85% marks from Delhi”*
- Automatically extracts demographic entities (Gender, Course, Category, State, Income, Marks) and synchronizes with the structured profile form.
- Integrates with the **Web Speech API** for voice dictation (`hi-IN` & `en-IN`).

### 4. Document Intelligence & OCR Mismatch Detection
- Inspects uploaded certificates (Income Certificate, Caste Certificate, 12th Marksheet, Bonafide).
- Verifies issuing authority, digital signatures/QR codes, and expiration dates.
- Detects subtle spelling mismatches (e.g. *“Riya Kumari”* on marksheet vs *“Riya”* on Aadhaar) before official portal submission to prevent fatal rejections.

### 5. Conversational RAG Assistant (Saathi AI)
- Grounded strictly in official scheme gazettes (NSP, AICTE, Ministry of Social Justice).
- Provides verified source citations and links for every recommendation.
- Multilingual accessibility with text-to-speech voice playback.

---

## 🐟 TinyFish Live-Web Automation Integration

TinyFish acts as the live-web execution layer for SchemeSaathi:

1. **TinySearch**: Scours official `.gov.in` and `.nic.in` domains to discover newly published scheme guidelines and revised deadlines.
2. **TinyFetch**: Converts unstructured government gazettes, complex HTML tables, and PDFs into clean structured JSON.
3. **TinyAgent**: Navigates ASP.NET and legacy portals, binds verified student profile data to portal DOM inputs, and attaches verified PDFs.
4. **TinyBrowser**: Manages sandboxed headless Chromium sessions, maintaining session state and handling complex portal cookies.

### 🛡️ Safe “Auto-Apply” Protocol (Slide 6)
SchemeSaathi adheres strictly to an ethical civic design: **Auto-fill plus explicit user approval, NOT silent auto-submission.**
- The platform pre-fills verified fields and checks document hashes.
- It displays a complete, transparent review screen.
- **The student must check the explicit authorization box and confirm before TinyAgent clicks final submission.**
- Protects users against erroneous income declarations, category claims, and unauthorized data transmission.

---

## 💰 Unit Economics & Revenue Model (Slide 7 & 8)

### Unit Economics per Application
- **TinyFish Agent (40 steps × $0.016)**: ~$0.64 (~₹55–₹60)
- **LLM RAG & Document Checks**: ₹5–₹20
- **OCR / Document Processing**: ₹2–₹10
- **Cloud & WhatsApp Alerts**: ₹2–₹5
- **Optional Expert Human Counselor Review**: ₹30–₹100
- **Total Cost per Fully Assisted Application**: **₹94–₹195** (or **₹64–₹95** automated)
- **Social Return**: Unlocks **₹10 Crore in benefits** for every 10,000 students at an operational cost of only ~₹14 Lakh (over **65x ROI**).

### B2B2C Sustainable Revenue Architecture
1. **Free for Students & Families**: No paywall for discovery or basic auto-fill.
2. **Schools & Colleges SaaS**: Annual subscriptions (₹1–5 Lakh/year) for counselor copilots and student tracking dashboards.
3. **Government Departments**: White-label portals and district-level equity analytics (₹10 Lakh – ₹1 Crore+).
4. **CSR Programs & Foundations**: Outcome-based funding (₹5–50 Lakh) tied to completed disbursements.
5. **API & Data Licensing**: Real-time eligibility-check APIs for edtech platforms and education lenders.

---

## 📱 User Interfaces & Features Included
- **Soft Aesthetic Design**: Organic cream palette (`#FAF7F2`), forest green typography (`#0D4A32`), gentle rounded corners, and soft micro-interactions.
- **Role Switcher**:
  - 🎓 **Student Finder**: Interactive natural language query, voice input, structured profile, and ranked scheme cards.
  - 🐟 **TinyFish Studio**: Live interactive terminal simulating TinySearch, TinyFetch, and TinyAgent form navigation.
  - 🏫 **Counselor Portal**: Student roster, status funnel, and one-click WhatsApp nudges.
  - 📊 **Economics & ROI**: Interactive sliders for students, scholarship amounts, and unlock multiples.
- **Multilingual Support**: Live language toggle for **English**, **हिन्दी (Hindi)**, **தமிழ் (Tamil)**, and **বাংলা (Bengali)**.

---
*Created with ❤️ by Team CodeRush for Kritical Hacks 2026.*
