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
        x: 557.7578125
        'y': 276.0234375
        navigate:
          2a5943fb-4995-2ef2-b61e-5aff9d6968e4:
            targetId: c441abb7-9f29-57b6-3930-debcf5524f99
            port: SUCCESS
    results:
      SUCCESS:
        c441abb7-9f29-57b6-3930-debcf5524f99:
          x: 886.7578125
          'y': 266.78515625
