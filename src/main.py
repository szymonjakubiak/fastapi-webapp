from fastapi import FastAPI
import requests
import uvicorn

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/session/{session_id}")
async def read_session(session_id: int):
    external_api_url = "https://conferenceapi.azurewebsites.net"
    response = requests.get(f"{external_api_url}/session/{session_id}")
    return {"conference_info": response.text}


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
