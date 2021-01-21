namespace: flowAuthoring
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
        x: 331.7578125
        'y': 214.0234375
        navigate:
          3a45430e-bd73-e6d3-0d7b-3045c08e0ee4:
            targetId: 3244e8f6-dfa9-2e79-9b05-38de01cbe174
            port: SUCCESS
    results:
      SUCCESS:
        3244e8f6-dfa9-2e79-9b05-38de01cbe174:
          x: 791.7578125
          'y': 187.78515625
