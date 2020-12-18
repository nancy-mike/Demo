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
        x: 142.60000610351562
        'y': 214
        navigate:
          eb0467df-b82a-c466-1447-139cc39845d8:
            targetId: 384c64ae-51aa-9392-9dc6-e5c153bd11f1
            port: SUCCESS
    results:
      SUCCESS:
        384c64ae-51aa-9392-9dc6-e5c153bd11f1:
          x: 361.6000061035156
          'y': 207.60000610351562
