namespace: lab_action
flow:
  name: lab_account_flow
  inputs:
    - url: 'http://localhost:8082'
    - username: kelvinkoh
    - firnammee: kelvin
    - last_name: koh
    - password: 123456Ab
    - email: kelvin@kelvin.com
  workflow:
    - lab_account:
        do:
          lab_action.lab_account:
            - url: '${url}'
            - username: '${username}'
            - password: '${password}'
            - first_name: '${firnammee}'
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
      lab_account:
        x: 101
        'y': 150
        navigate:
          30b3dea9-4b40-88f4-a3f4-a81a828799f7:
            targetId: 23d87b3c-62cf-6bee-4d1c-0dae73b16508
            port: SUCCESS
          fe4568ff-ae40-dc04-16f5-891eb7db8731:
            targetId: 23d87b3c-62cf-6bee-4d1c-0dae73b16508
            port: WARNING
    results:
      SUCCESS:
        23d87b3c-62cf-6bee-4d1c-0dae73b16508:
          x: 400
          'y': 150
