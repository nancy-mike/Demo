namespace: NetworkTest
flow:
  name: RPA_Ping
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
        x: 81
        'y': 101
        navigate:
          707076b7-2207-21b2-5795-089d6f55b143:
            targetId: e58fed9b-5f6b-6f5d-496b-d6bb2ff67921
            port: SUCCESS
    results:
      SUCCESS:
        e58fed9b-5f6b-6f5d-496b-d6bb2ff67921:
          x: 368
          'y': 96
