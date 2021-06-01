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
        x: 269
        'y': 174.765625
        navigate:
          b6dd18d6-658b-08d4-f994-4542c719a903:
            targetId: ff01c153-956b-da03-5a67-4fe2c7107978
            port: SUCCESS
    results:
      SUCCESS:
        ff01c153-956b-da03-5a67-4fe2c7107978:
          x: 593
          'y': 169
