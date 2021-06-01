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
        x: 287.7578125
        'y': 112.0234375
        navigate:
          4442c9b6-0ecb-f4cf-28e8-ffc5cbcc4b5f:
            targetId: a111cefa-8cd3-29db-a34d-3beae25eaed8
            port: SUCCESS
    results:
      SUCCESS:
        a111cefa-8cd3-29db-a34d-3beae25eaed8:
          x: 496
          'y': 120
