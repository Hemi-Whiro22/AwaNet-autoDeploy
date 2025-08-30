# AwaNet Deploy

This repository contains the Render deployment blueprint for **AwaNet**.

It defines two main services:
- **Backend (AwaNet-Backend)**  
  A FastAPI + Uvicorn service running on Python, connected to Supabase and OpenAI APIs.  
  Handles OCR, translation, memory logging, and kaitiaki agent orchestration.

- **Frontend (AwaNet-React)**  
  A React + Vite static site that provides the user interface for interacting with AwaNet.  
  The frontend is built with TailwindCSS and points to the backend API.

## Deployment

This repo uses [Render Blueprints](https://render.com/docs/blueprint-spec) via a `render.yaml` file.  
To deploy:

1. Push this repo to GitHub.  
2. In Render, create a new **Blueprint** service pointing to this repo.  
3. Render will automatically spin up both the backend and frontend services.  
4. Configure environment variables in Render’s dashboard (Supabase keys, OpenAI key, etc.).  
5. Set up your domain (e.g., `den-of-the-pack.com`) in the Render settings and update Cloudflare DNS.

## License
This project is licensed under the [Apache 2.0 License](LICENSE).
