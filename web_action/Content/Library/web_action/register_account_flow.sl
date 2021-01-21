namespace: web_action
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
          c1e4a038-8733-e34d-bc11-3d13df1758be:
            targetId: fd89b212-6406-57a3-87ff-6f0ce88945a9
            port: SUCCESS
          719056f9-8c46-44d7-8d82-b832beb3881d:
            targetId: fd89b212-6406-57a3-87ff-6f0ce88945a9
            port: WARNING
    results:
      SUCCESS:
        fd89b212-6406-57a3-87ff-6f0ce88945a9:
          x: 400
          'y': 150
