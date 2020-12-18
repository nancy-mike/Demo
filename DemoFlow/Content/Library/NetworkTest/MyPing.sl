namespace: NetworkTest
flow:
  name: MyPing
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
        x: 192.0182342529297
        'y': 110.53385925292969
        navigate:
          c344e392-113e-84ae-b8da-323dffef85fe:
            targetId: ffb9f030-37c6-5091-4763-1641b5d5d19a
            port: SUCCESS
    results:
      SUCCESS:
        ffb9f030-37c6-5091-4763-1641b5d5d19a:
          x: 417.01824951171875
          'y': 83.03907012939453
