namespace: PRODUCTS
flow:
  name: getProducts
  inputs:
    - aos_url: 'http://localhost:8082/#/register'
    - fileP: "c:\\\\temp\\\\products.txt"
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
        x: 392.7578125
        'y': 211.0234375
        navigate:
          2b55047e-66de-bea2-4da4-f68741692092:
            targetId: 4eb1f60a-9cae-c7e5-7e5f-d29a0728693b
            port: SUCCESS
    results:
      SUCCESS:
        4eb1f60a-9cae-c7e5-7e5f-d29a0728693b:
          x: 711
          'y': 213
