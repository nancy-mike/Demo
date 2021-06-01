namespace: product
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
        x: 231
        'y': 121.5
        navigate:
          85854102-4d20-3d3d-da02-fb7401da2cfc:
            targetId: 89a36938-5e56-f59c-18d7-69d0b1c1ce50
            port: SUCCESS
    results:
      SUCCESS:
        89a36938-5e56-f59c-18d7-69d0b1c1ce50:
          x: 471
          'y': 126
