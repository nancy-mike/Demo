namespace: NetworkTest
flow:
  name: jme_LocalPing
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
        x: 403
        'y': 182
        navigate:
          bdcbc6a3-474f-47ab-dde5-8441d0549681:
            targetId: cbc44399-283e-7ea8-1962-15524311f39c
            port: SUCCESS
    results:
      SUCCESS:
        cbc44399-283e-7ea8-1962-15524311f39c:
          x: 677
          'y': 182
