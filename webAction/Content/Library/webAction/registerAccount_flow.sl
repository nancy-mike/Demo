namespace: webAction
flow:
  name: registerAccount_flow
  inputs:
    - url: 'http://localhost:8082/#/register'
    - username: helenk
    - password: Helenk01
    - first_name: Helen
    - last_name: Keller
    - email: hk@merant.com
  workflow:
    - registerAccount:
        do:
          webAction.registerAccount:
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
      registerAccount:
        x: 100
        'y': 150
        navigate:
          fc96ee98-4d28-a799-3801-dfbf75836891:
            targetId: 2d1c1b8d-85fa-ea51-92f3-f15b41d677fc
            port: SUCCESS
          5276f3d8-a539-825b-76ac-88397f8af98e:
            targetId: 2d1c1b8d-85fa-ea51-92f3-f15b41d677fc
            port: WARNING
    results:
      SUCCESS:
        2d1c1b8d-85fa-ea51-92f3-f15b41d677fc:
          x: 400
          'y': 150
