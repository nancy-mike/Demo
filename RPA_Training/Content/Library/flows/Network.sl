namespace: flows
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
        x: 242
        'y': 256
        navigate:
          2f4c6364-46b8-b47d-206b-c4f1ba21a3a5:
            targetId: 63b666bd-f3ac-6bc2-261a-82bc3a2c95fe
            port: SUCCESS
    results:
      SUCCESS:
        63b666bd-f3ac-6bc2-261a-82bc3a2c95fe:
          x: 657
          'y': 267
