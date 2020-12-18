namespace: kelvinsflow
flow:
  name: flow1
  workflow:
    - run_command:
        do:
          io.cloudslang.base.cmd.run_command:
            - command: ipconfig /all
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
        x: 307.01824951171875
        'y': 113.53385925292969
        navigate:
          2a7e1510-2a84-e3dc-eb2f-a068283d0ee0:
            targetId: b2873ee4-e716-c140-e33b-80aaf2a0cbe1
            port: SUCCESS
    results:
      SUCCESS:
        b2873ee4-e716-c140-e33b-80aaf2a0cbe1:
          x: 537.0182495117188
          'y': 87.03907012939453
