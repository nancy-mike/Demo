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
        x: 621.7578125
        'y': 277.0234375
        navigate:
          93bb8c7d-cbdf-fcc6-3119-e8b58d299937:
            targetId: 0a83a1f8-f499-2680-00b4-0ed56ba2a9d8
            port: SUCCESS
    results:
      SUCCESS:
        0a83a1f8-f499-2680-00b4-0ed56ba2a9d8:
          x: 923
          'y': 280
