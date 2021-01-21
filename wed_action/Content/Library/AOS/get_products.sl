namespace: AOS
flow:
  name: get_products
  inputs:
    - aos_url: 'http://localhost:8082'
    - file_path: "c:\\\\tmp\\\\products.txt"
  workflow:
    - http_client_get:
        do:
          io.cloudslang.base.http.http_client_get:
            - url: '${aos_url+"/catalog/api/v1/categories/all_data"}'
        publish:
          - json: '${return_result}'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      http_client_get:
        x: 269.7578125
        'y': 376.0234375
        navigate:
          6ca1c767-cde6-152d-3cec-717a8e56c21f:
            targetId: aa42f2e1-5586-fd30-77d0-a6a8567053cd
            port: SUCCESS
    results:
      SUCCESS:
        aa42f2e1-5586-fd30-77d0-a6a8567053cd:
          x: 842.7578125
          'y': 364.78515625
