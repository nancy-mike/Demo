namespace: NetworkTestCG
flow:
  name: LocalPing_1_8
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
        x: 100
        'y': 150
        navigate:
          397f5506-1bd0-8258-6bed-3d760d7c30d7:
            targetId: 1f0b2b73-5cff-0484-6a6e-25e21133dd48
            port: SUCCESS
    results:
      SUCCESS:
        1f0b2b73-5cff-0484-6a6e-25e21133dd48:
          x: 400
          'y': 150
