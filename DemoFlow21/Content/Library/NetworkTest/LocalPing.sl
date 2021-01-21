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
        x: 378.7578125
        'y': 280.0234375
        navigate:
          71600b43-28db-906f-b126-c369600df12a:
            targetId: b058c046-51a6-7fe3-0f64-b2cb3eec2893
            port: SUCCESS
    results:
      SUCCESS:
        b058c046-51a6-7fe3-0f64-b2cb3eec2893:
          x: 838.7578125
          'y': 261.78515625
