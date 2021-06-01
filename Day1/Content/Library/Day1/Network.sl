namespace: Day1
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
        x: 258
        'y': 254
        navigate:
          b92d6706-f68b-be22-6c2a-98423a68fd5d:
            targetId: b0e7e508-dec3-605c-8fc4-413cfa73653f
            port: SUCCESS
    results:
      SUCCESS:
        b0e7e508-dec3-605c-8fc4-413cfa73653f:
          x: 572
          'y': 254
