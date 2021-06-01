namespace: Register_Account
flow:
  name: Register_Account_flow
  inputs:
    - url: 'http://localhost:8082'
    - username: Usuario3
    - password: Usuario3Pass
    - first_name: James3
    - last_name: Ho3
    - email: Usuario3@prueba.com
  workflow:
    - Register_Account:
        do:
          Register_Account.Register_Account:
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
      Register_Account:
        x: 100
        'y': 150
        navigate:
          38789cbe-d875-7773-ae59-1e975c74c47a:
            targetId: 26b3d79f-2a45-54d0-1170-d9de5f34649b
            port: SUCCESS
          d82477c7-e745-d73c-59c3-7d1823d95130:
            targetId: 26b3d79f-2a45-54d0-1170-d9de5f34649b
            port: WARNING
    results:
      SUCCESS:
        26b3d79f-2a45-54d0-1170-d9de5f34649b:
          x: 400
          'y': 150
