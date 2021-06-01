namespace: networkTest
flow:
  name: localPing2
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
        x: 217.7578125
        'y': 116.0234375
        navigate:
          17b2e316-0e35-177b-d13e-b5ea9a3f0bb1:
            targetId: d4c0b770-5471-22d2-b5c1-5d4406ba84de
            port: SUCCESS
    results:
      SUCCESS:
        d4c0b770-5471-22d2-b5c1-5d4406ba84de:
          x: 444.7578125
          'y': 115.78515625
