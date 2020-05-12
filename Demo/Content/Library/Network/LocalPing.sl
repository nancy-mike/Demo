namespace: Network
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
        x: 209.01171875
        'y': 166.27734375
        navigate:
          236c97ae-ef44-1087-5abe-94b0bf75f5c0:
            targetId: 03fed7eb-00e0-3b3f-5d14-21ed7bc36390
            port: SUCCESS
    results:
      SUCCESS:
        03fed7eb-00e0-3b3f-5d14-21ed7bc36390:
          x: 385.01171875
          'y': 142.0390625
