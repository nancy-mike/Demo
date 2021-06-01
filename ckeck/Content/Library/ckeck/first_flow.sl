namespace: ckeck
flow:
  name: first_flow
  workflow:
  - first:
      do:
        ckeck.first: []
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
