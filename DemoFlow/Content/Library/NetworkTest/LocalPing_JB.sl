namespace: NetworkTest
flow:
  name: LocalPing_JB
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
        x: 332
        'y': 60.5
        navigate:
          e73e4d46-f065-8615-f8db-733533bddacd:
            targetId: cc8d0976-c217-1d7a-f1c7-539db3b055b8
            port: SUCCESS
    results:
      SUCCESS:
        cc8d0976-c217-1d7a-f1c7-539db3b055b8:
          x: 540
          'y': 59
