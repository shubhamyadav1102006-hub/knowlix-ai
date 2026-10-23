# Contributing to Knowlix AI

Thanks for helping! This guide gets you running in a few minutes.

## Set up

1. Fork the repo and clone it.
2. Backend:
   ```
   cd backend
   copy .env.example .env      (Mac/Linux: cp .env.example .env)
   pip install -r requirements.txt
   python -m uvicorn app.main:app --reload
   ```
3. Frontend (new terminal):
   ```
   cd frontend
   npm install
   npm run dev
   ```
4. Put your own `GEMINI_API_KEY` in `backend/.env`.

## Rules

- **Never commit `backend/.env`** or any API key. It is already in `.gitignore`.
- One logical change per commit, with a message that says what it does (for example `fix: handle empty PDF pages`).
- Run the tests before opening a pull request:
  ```
  cd backend
  pytest
  ```
- For bigger changes, open an issue first so we can agree on the approach.

## Good first issues

- Hindi support for the study assistant
- Spaced-repetition scheduling
- Self-hosted Gemma through Ollama or vLLM
