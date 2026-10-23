@echo off
title Knowlix AI - Backend Server (FastAPI)
echo ===================================================
echo Starting Knowlix AI Backend Server on Port 8000...
echo ===================================================
cd /d "%~dp0backend"
python -m uvicorn app.main:app --host 127.0.0.1 --port 8000 --reload
pause
