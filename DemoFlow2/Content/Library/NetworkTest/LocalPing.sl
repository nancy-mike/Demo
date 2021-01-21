namespace: NetworkTest
flow:
  name: LocalPing
  workflow:
    - run_command:
        do:
          io.cloudslang.base.cmd.run_command:
            - command: ipconfig
            - cwd: null
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
        x: 576
        'y': 341
        navigate:
          3e8645be-28bf-f216-2aac-1c270c016ede:
            targetId: 9204fb0a-b122-12bc-21c1-455d1fb485e3
            port: SUCCESS
    results:
      SUCCESS:
        9204fb0a-b122-12bc-21c1-455d1fb485e3:
          x: 820
          'y': 349
