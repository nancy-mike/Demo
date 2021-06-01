namespace: FlowAuthoring
flow:
  name: Network
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
        x: 499.7578125
        'y': 201.0234375
        navigate:
          828aa816-56ea-bc83-fd9a-41692e4c0eec:
            targetId: c0a3596e-6815-2857-50f3-c0dfda6af0a6
            port: SUCCESS
    results:
      SUCCESS:
        c0a3596e-6815-2857-50f3-c0dfda6af0a6:
          x: 733
          'y': 206
