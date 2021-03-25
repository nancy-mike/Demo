namespace: NetworkTest
flow:
  name: LocalPing2
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
        x: 651.7578125
        'y': 271.0234375
        navigate:
          c9e6e02b-8918-62c9-89b6-dc785d76bf9c:
            targetId: ddda70a2-e8e6-8bb1-d9b1-f583bf90d4bc
            port: SUCCESS
    results:
      SUCCESS:
        ddda70a2-e8e6-8bb1-d9b1-f583bf90d4bc:
          x: 894.7578125
          'y': 291.78515625
