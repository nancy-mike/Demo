namespace: test
flow:
  name: get_products
  inputs:
    - aos_url: 'http://localhost:8080'
    - file_path: "c:\\\\temp\\\\products.txt"
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
        x: 106
        'y': 133
        navigate:
          78bf350c-89e8-e72f-4bb6-282d501d87ff:
            targetId: ebe9c609-e94d-6208-c0d5-690efebd53db
            port: SUCCESS
    results:
      SUCCESS:
        ebe9c609-e94d-6208-c0d5-690efebd53db:
          x: 305
          'y': 115
