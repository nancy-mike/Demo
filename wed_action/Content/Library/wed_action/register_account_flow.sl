namespace: wed_action
flow:
  name: register_account_flow
  inputs:
    - url: 'http://localhost:8082'
    - username: helenk
    - password: Helenk01
    - first_name: Helen
    - last_name: Keller
    - email: hk@merant.com
  workflow:
    - register_account:
        do:
          wed_action.register_account:
            - url: '${url}'
            - username: '${username}'
            - password: '${password}'
            - first_name: '${first_name}'
            - last_name: '${first_name}'
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
          5157f40c-edce-dab3-784c-5120493463af:
            targetId: 7a48a8eb-6542-6f1b-74bb-d8ce90a026e5
            port: SUCCESS
          6c5eb89c-175d-b63b-ee23-69d7968c0171:
            targetId: 7a48a8eb-6542-6f1b-74bb-d8ce90a026e5
            port: WARNING
    results:
      SUCCESS:
        7a48a8eb-6542-6f1b-74bb-d8ce90a026e5:
          x: 400
          'y': 150
