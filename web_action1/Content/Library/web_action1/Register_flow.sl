namespace: web_action1
flow:
  name: Register_flow
  workflow:
  - Register:
      do:
        web_action1.Register: []
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
