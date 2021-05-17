namespace: Diagrama
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
        x: 316
        'y': 206
        navigate:
          e6ded360-abb5-737c-e4c9-42a37123475c:
            targetId: e5bd52e3-3a55-0536-4a6f-99928eab03bc
            port: SUCCESS
    results:
      SUCCESS:
        e5bd52e3-3a55-0536-4a6f-99928eab03bc:
          x: 537
          'y': 206
