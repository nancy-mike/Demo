namespace: web_action2
flow:
  name: register_account2_flow
  inputs:
    - url: 'http://localhost:8082'
    - username: helenk
    - password: Helenk01
    - first_name: Helen
    - last_name: Keller
    - email: hk@merant.com
  workflow:
    - register_account2:
        do:
          web_action2.register_account2:
            - url: '${url}'
            - username: '${username}'
            - password: '${password}'
            - first_name: '${first_name}'
            - last_name: '${last_name}'
            - email: '${email}'
        publish:
          - return_result
          - error_message
        navigate:
          - SUCCESS: SUCCESS
          - WARNING: SUCCESS
          - FAILURE: on_failure
  outputs:
    - return_result
    - error_message
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      register_account2:
        x: 100
        'y': 150
        navigate:
          7a7abc83-97b7-878a-a2bd-c912b44c15a5:
            targetId: ed06a2da-bea1-bca6-92b5-8bdef75a8ec0
            port: SUCCESS
          3f0b5443-619b-e297-2231-7818a7baca0a:
            targetId: ed06a2da-bea1-bca6-92b5-8bdef75a8ec0
            port: WARNING
    results:
      SUCCESS:
        ed06a2da-bea1-bca6-92b5-8bdef75a8ec0:
          x: 400
          'y': 150
