namespace: Network_Test
flow:
  name: local_ping
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
        x: 124.01823425292969
        'y': 68.53385925292969
        navigate:
          c23cdb65-b850-5521-7eba-d2c26995e339:
            targetId: d26d090a-a20b-a0ce-13ac-4562ff994b75
            port: SUCCESS
    results:
      SUCCESS:
        d26d090a-a20b-a0ce-13ac-4562ff994b75:
          x: 400.01824951171875
          'y': 38.03907012939453
