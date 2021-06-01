namespace: NetworkTest
flow:
  name: LocalPing
  workflow:
    - run_command:
        do:
          io.cloudslang.base.cmd.run_command:
            - command: ipconfig
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      run_command:
        x: 233
        'y': 50
        navigate:
          ed4edcae-4d4e-9c91-6d27-4c189b83ebfd:
            targetId: 5c6c7e80-1b8f-1510-e137-7ff5dd11181c
            port: SUCCESS
    results:
      SUCCESS:
        5c6c7e80-1b8f-1510-e137-7ff5dd11181c:
          x: 450
          'y': 56
