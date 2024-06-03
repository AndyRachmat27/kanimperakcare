from fastapi import FastAPI
from fastapi import Request
from fastapi.responses import JSONResponse
import db_helper

app = FastAPI()


@app.post("/")
async def handle_request(request: Request):
    # Ambil data JSON dari Request
    payload = await request.json()

    # Ekstrak informasi yang diperlukan dari payload
    # Berdasarkan struktur WebhookRequest dari Dialogflow
    intent = payload['queryResult']['intent']['displayName']
    parameters = payload['queryResult']['parameters']
    output_contexts = payload['queryResult']['outputContexts']

    if intent == "paspor.cek-context: ongoing-proses":
        return paspor_cek(parameters)
    
def paspor_cek(parameters: dict):
    permohonan_id = int(parameters['permohonan_id'])
    permohonan_status = db_helper.get_permohonan_status(permohonan_id)
    permohonan_nama = db_helper.get_permohonan_nama(permohonan_id)

    if permohonan_status:
        fulfillment_text = f" Permohonan dengan nomor {permohonan_id} atas nama {permohonan_nama} sudah sampai tahap {permohonan_status}"
    else:
        fulfillment_text = f" tidak dapat menemukan nomor {permohonan_id}"

    return JSONResponse(content={
        "fulfillmentText": fulfillment_text
    })
