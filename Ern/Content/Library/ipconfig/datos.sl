namespace: ipconfig
flow:
  name: datos
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
        x: 245
        'y': 123
        navigate:
          882f9e5c-a860-efab-fe20-43f7163343aa:
            targetId: 90637975-2b54-ffa5-832f-d6aca966d500
            port: SUCCESS
    results:
      SUCCESS:
        90637975-2b54-ffa5-832f-d6aca966d500:
          x: 575
          'y': 107
