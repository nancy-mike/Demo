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
        x: 235
        'y': 50
        navigate:
          96210f59-706e-36f4-66e6-88fa247b476a:
            targetId: b627ecde-2beb-b8cb-9894-7f0b9e80a4cc
            port: SUCCESS
    results:
      SUCCESS:
        b627ecde-2beb-b8cb-9894-7f0b9e80a4cc:
          x: 385
          'y': 55
