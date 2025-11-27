from fastapi import FastAPI

SERVICE_NAME = "scenario"  # change this for each service

app = FastAPI(title=SERVICE_NAME)

@app.get("/health")
def health():
    return {"service": SERVICE_NAME, "status": "healthy"}

@app.get("/info")
def info():
    return {"service": SERVICE_NAME, "message": f"{SERVICE_NAME} is running"}
