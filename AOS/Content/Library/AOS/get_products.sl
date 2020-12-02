namespace: AOS
flow:
  name: get_products
  inputs:
    - aos_url: 'http://localhost:8082'
    - file_path: "c:\\\\temp\\products.txt"
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
        x: 530
        'y': 235
        navigate:
          c6b953ae-a66a-db70-3c08-cd183c182560:
            targetId: 884a0985-f374-885f-8f6f-3127df56ed5e
            port: SUCCESS
    results:
      SUCCESS:
        884a0985-f374-885f-8f6f-3127df56ed5e:
          x: 802
          'y': 217
