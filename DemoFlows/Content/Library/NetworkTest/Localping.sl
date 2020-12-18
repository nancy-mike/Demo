namespace: NetworkTest
flow:
  name: Localping
  workflow:
    - run_command:
        do:
          io.cloudslang.base.cmd.run_command:
            - command: ipconfig
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      run_command:
        x: 269.01824951171875
        'y': 160.0390625
        navigate:
          adf320a2-6922-5a72-df07-e6eb2b2d08d9:
            targetId: ab74a433-2710-794d-528a-e443a00ac161
            port: SUCCESS
    results:
      SUCCESS:
        ab74a433-2710-794d-528a-e443a00ac161:
          x: 444.01824951171875
          'y': 180.0390625
