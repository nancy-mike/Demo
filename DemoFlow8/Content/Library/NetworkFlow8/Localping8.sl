namespace: NetworkFlow8
flow:
  name: Localping8
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
        x: 206
        'y': 204.25
        navigate:
          752078a2-4e72-cd00-78fb-6a3c6fa87678:
            targetId: eb723778-29d3-2a6e-2a2c-b5646c5f8efd
            port: SUCCESS
    results:
      SUCCESS:
        eb723778-29d3-2a6e-2a2c-b5646c5f8efd:
          x: 428
          'y': 223.02777099609375
