namespace: AOS.product
flow:
  name: get_products
  inputs:
    - aos_url: 'http://localhost:8082'
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
        x: 248.7578125
        'y': 135.0234375
        navigate:
          d1adc172-861e-987e-c197-b41755eea7ee:
            targetId: 423b1c96-09bf-891f-df53-084e0e4e9604
            port: SUCCESS
    results:
      SUCCESS:
        423b1c96-09bf-891f-df53-084e0e4e9604:
          x: 472.7578125
          'y': 111.78515625
