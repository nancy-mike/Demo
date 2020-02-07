namespace: Demo
flow:
  name: register_account_flow
  inputs:
    - url: 'http://localhost:8080'
    - username: helenk
    - password: Helenk01
    - first_name: Helen
    - last_name: Keller
    - email: hk@merant.com
  workflow:
    - register_account:
        do:
          web_action.register_account:
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
      register_account:
        x: 100
        'y': 150
        navigate:
          a921b794-b0d3-b482-b88e-762e62395a67:
            targetId: 3a6bb805-8ffa-3d49-d220-6fb6b94cfc21
            port: SUCCESS
          bebc97ee-b32b-5044-4d8d-6ba6f9285051:
            targetId: 3a6bb805-8ffa-3d49-d220-6fb6b94cfc21
            port: WARNING
    results:
      SUCCESS:
        3a6bb805-8ffa-3d49-d220-6fb6b94cfc21:
          x: 400
          'y': 150
