namespace: NetworkTest
flow:
  name: LocalPingVPI
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
        x: 284.7578125
        'y': 161.0234375
        navigate:
          74b746b9-5b8a-20da-7e7b-d51831525ef4:
            targetId: bbb9ac59-3b13-3c22-2b62-8a8edcfd60cc
            port: SUCCESS
    results:
      SUCCESS:
        bbb9ac59-3b13-3c22-2b62-8a8edcfd60cc:
          x: 672.7578125
          'y': 86.78515625
