namespace: NetworkTest
flow:
  name: LocalPingCgl
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
        x: 300
        'y': 147
        navigate:
          2455aee5-3f35-4324-48d2-e95ee9fc756f:
            targetId: 9ad2858d-6f59-136e-f2b7-8fe22d1fc441
            port: SUCCESS
    results:
      SUCCESS:
        9ad2858d-6f59-136e-f2b7-8fe22d1fc441:
          x: 676
          'y': 146
