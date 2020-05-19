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
        x: 320
        'y': 127
        navigate:
          40317b48-2779-108b-ae63-8df769f7736a:
            targetId: 61180d96-0005-c840-e70d-b475c33977eb
            port: SUCCESS
    results:
      SUCCESS:
        61180d96-0005-c840-e70d-b475c33977eb:
          x: 572
          'y': 113
