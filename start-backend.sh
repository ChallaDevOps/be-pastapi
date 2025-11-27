npx concurrently \
"uvicorn admin.src.app:app --host 0.0.0.0 --port 8001 --reload" \
"uvicorn scenario.src.app:app --host 0.0.0.0 --port 8002 --reload" \
"uvicorn cust-conf.src.app:app --host 0.0.0.0 --port 8003 --reload" \
"uvicorn ums.src.app:app --host 0.0.0.0 --port 8004 --reload" \
"uvicorn reports.src.app:app --host 0.0.0.0 --port 8005 --reload" \
"uvicorn promotions.src.app:app --host 0.0.0.0 --port 8006 --reload"
