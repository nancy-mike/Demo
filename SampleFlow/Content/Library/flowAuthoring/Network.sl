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
        x: 287
        'y': 112.5
        navigate:
          0aa3c5f6-0ff2-190d-d97b-9d16105ea7ec:
            targetId: db696921-7757-06cf-878e-4cdce7762398
            port: SUCCESS
    results:
      SUCCESS:
        db696921-7757-06cf-878e-4cdce7762398:
          x: 495
          'y': 115
