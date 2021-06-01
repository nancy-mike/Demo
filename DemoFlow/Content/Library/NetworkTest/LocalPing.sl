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
        x: 247.7578125
        'y': 104.0234375
        navigate:
          bb5c7aeb-cc32-4ad2-77ab-db034e0aac15:
            targetId: 31102578-38b0-b961-a9fb-711e26751c6d
            port: SUCCESS
    results:
      SUCCESS:
        31102578-38b0-b961-a9fb-711e26751c6d:
          x: 477.7578125
          'y': 106.78515625
