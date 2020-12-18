namespace: AOS_Product
flow:
  name: get_Prod
  inputs:
    - aos_url: 'http://localhost:8082'
    - file_path: "c:\\temp\\products.txt"
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
        x: 263.01824951171875
        'y': 137.5338592529297
        navigate:
          333014ae-1463-bd68-8741-abadeaa1d44e:
            targetId: 813e9909-6bb5-ae05-80ed-116ad49811bd
            port: SUCCESS
    results:
      SUCCESS:
        813e9909-6bb5-ae05-80ed-116ad49811bd:
          x: 563.0182495117188
          'y': 275.0390625
