namespace: NetworkTest
flow:
  name: MyLocalPingTest
  workflow:
    - run_command:
        do:
          io.cloudslang.base.cmd.run_command:
            - command: ping 127.0.0.1
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
        x: 419.7578125
        'y': 270.0234375
        navigate:
          1ddf943e-c8f7-eecb-07d8-e490eedaac4c:
            targetId: 72f64ea8-0bb8-e167-9654-cfdfbe659343
            port: SUCCESS
    results:
      SUCCESS:
        72f64ea8-0bb8-e167-9654-cfdfbe659343:
          x: 709.7578125
          'y': 261.78515625
