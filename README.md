# 📄 Letterly  
**AI-powered iOS app that generates professional job application cover letters from any job posting link.**

Letterly is an iOS application designed to simplify the job application process.  
Users enter their personal profile once, paste a link to any job posting, and Letterly automatically extracts the job description, analyzes the requirements, and generates a tailored cover letter using AI.  
The result can be previewed, edited, and exported as a clean PDF — ready to send.

---

## ✨ Features

- **Personal Profile Storage**  
  Store your personal details (name, contact info, experiences, skills, etc.) directly inside the app.

- **Job Link Analyzer**  
  Paste any job posting URL — Letterly fetches the page content automatically using URLSession.

- **AI-Generated Cover Letters**  
  Using an AI text-generation API, Letterly creates a professional, job-specific cover letter in seconds.

- **Live Preview & Editing**  
  The generated text can be adjusted before export.

- **PDF Export**  
  Export your final cover letter as a polished PDF file using Apple's PDFKit.

- **Fast Workflow**  
  Enter your profile once → paste job link → receive finished PDF.  
  Repeat for unlimited job postings.

---

## 🧠 How It Works (Technical Overview)

1. **Profile Setup**  
   User enters personal information, stored securely using Swift’s local persistence (UserDefaults, Keychain, or Core Data).

2. **Job Posting Parsing**  
   - User pastes a link to a job advertisement  
   - App loads the HTML with `URLSession`  
   - HTML is cleaned and converted into readable plain text

3. **AI Request**  
   - App sends profile + job description to an AI API  
   - The API processes the data and generates a personalized cover letter  
   - Response is parsed and displayed in SwiftUI

4. **PDF Generation**  
   - Using PDFKit, the cover letter is rendered into a properly formatted PDF  
   - User can export or share the file via the iOS share sheet

---

## 🛠️ Technologies Used

- **Swift 5.9+**
- **SwiftUI** — for all UI layouts and interactions  
- **MVVM Architecture** — separates logic, improves testability  
- **URLSession** — to fetch and parse job posting HTML pages  
- **AI Text Generation API**  
  - (OpenAI, Mistral, Groq, or another provider — pluggable)  
- **PDFKit** — for PDF rendering and exports  
- **Combine / Swift Concurrency (async/await)** — for data flow  
- **Local Storage**  
  - UserDefaults (profile)  
  - Keychain (API keys if needed)

---

## 📱 App Structure
