# Changelog

## Unreleased

### Fixed
- `backend/.env` is now loaded at startup, so `GEMINI_API_KEY` is actually read.
- Uploads are analysed for real. Previously, without a working API key, every file received canned photosynthesis, binary-tree or thermodynamics content chosen by keyword matching.
- JSON from Gemma 4 is parsed correctly even when the model prints its reasoning first.
- The study calendar uses the real date, month navigation and the student's own sessions instead of hardcoded October 2026 values.

### Added
- Retry once on server errors, then fall back to a second Gemma model (`GEMMA_FALLBACK_MODELS`).
- Offline analysis of the real PDF text when the model is unavailable.
- Photos are shrunk to at most 1600 px before upload.
- Calls to the model log how long they took.

### Changed
- Gemma 4 runs with minimal thinking, and PDF analysis no longer asks the model to repeat the document text, which makes responses faster.
