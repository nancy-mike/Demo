namespace: web_action2
flow:
  name: Register1_flow
  workflow:
  - Register1:
      do:
        web_action2.Register1: []
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
