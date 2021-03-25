namespace: flowAuthoring
flow:
  name: Network
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
        x: 418
        'y': 210
        navigate:
          fda088b3-4dff-3f08-a2dc-df244408e398:
            targetId: 1ba3da9f-aca9-0579-37b0-28a9e577aac3
            port: SUCCESS
    results:
      SUCCESS:
        1ba3da9f-aca9-0579-37b0-28a9e577aac3:
          x: 666
          'y': 206
