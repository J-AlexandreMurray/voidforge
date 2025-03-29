# 📚 Character & Worldbuilding Database

<!-- TABLE OF CONTENTS -->

<details open="open">
  <summary><h2>Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#">Overview</a>
      <ul>
        <li><a href="#">MVP Features</a></li>
      </ul>
    </li>
    <li><a href="#">Tech Stack</a></li>
    <li>
      <a href="#">Installation</a>
      <ul>
        <li><a href="#">Prereq</a></li>
        <li><a href="#">Dev Setup</a></li>
      </ul>
    </li>
    <li><a href="#">Roadmap</a></li>
    <li><a href="#">Contributing</a></li>
    <li><a href="#">Follow</a></li>
    <li><a href="#">License</a></li>
  </ol>
</details>


🌌 VoidForge

VoidForge is a worldbuilding application designed to function seamlessly both online and offline. It leverages Next.js, PWA support, IndexedDB (via SQLite) for offline storage, and Supabase for optional cloud synchronization.


---

🚀 Features

✅ Offline Mode – Fully functional without an internet connection.
✅ Local Storage with SQLite – Saves data using SQLite in the browser.
✅ Cloud Sync with Supabase – Optionally syncs data when online.
✅ PWA Support – Installable on desktop and mobile devices.
✅ User Authentication – Uses Supabase Auth for account management.
✅ Markdown Support – Write and structure content effectively.
✅ Interactive UI – Designed for worldbuilding projects, including maps and timelines.


---

🛠 Tech Stack

🔹 Frontend: Next.js (React-based framework)
🔹 Backend: Next.js API routes + Supabase
🔹 Database: SQLite (via absurd-sql) for offline, Supabase Postgres for cloud
🔹 Local Storage: IndexedDB via SQLite
🔹 PWA: next-pwa (service workers, caching, and offline pages)


---

📥 Installation

Prerequisites

📌 Node.js (LTS recommended)
📌 npm or yarn
📌 A Supabase account

Setup

1️⃣ Clone the repository:

git clone https://github.com/yourusername/voidforge.git
cd voidforge

2️⃣ Install dependencies:

npm install

3️⃣ Create an .env.local file for Supabase:

NEXT_PUBLIC_SUPABASE_URL=your_supabase_url
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_supabase_anon_key

4️⃣ Run the development server:

npm run dev


---

🌍 Offline Mode

VoidForge uses IndexedDB with SQLite to store data locally, ensuring full offline functionality. When online, data can sync with Supabase automatically.

🔄 How it Works

IndexedDB is managed via SQLite (Absurd-SQL) for structured storage.

Service Workers cache key assets and API requests.

Supabase Sync merges offline changes when reconnected.



---

🔗 API Routes

VoidForge includes custom API routes for handling user data:

🔹 api/save – Saves data locally or syncs to Supabase
🔹 api/load – Loads local or cloud data
🔹 api/auth – Handles user authentication via Supabase


---

🚀 Deployment

🔹 Vercel (Recommended)

1️⃣ Install Vercel CLI:

npm install -g vercel

2️⃣ Deploy:

vercel

🔹 Self-Hosting

Use next build and serve with next start.

Ensure Supabase environment variables are set.



---

🤝 Contributing

VoidForge is a solo development project, but feedback and suggestions are always welcome! If you'd like to contribute ideas or report issues: 1️⃣ Fork the repo
2️⃣ Create a new branch (git checkout -b feature-branch)
3️⃣ Commit your changes (git commit -m 'Add feature')
4️⃣ Push and create a pull request


---

📜 License

VoidForge is licensed under the MIT License. Feel free to use, modify, and share responsibly.

