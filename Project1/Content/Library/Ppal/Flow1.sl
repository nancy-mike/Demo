namespace: Ppal
flow:
  name: Flow1
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
        x: 141
        'y': 119
        navigate:
          be233370-795b-2617-cc95-473d7ddc2959:
            targetId: 3e06cb55-475b-9ce2-5a22-a0bdbbd2a623
            port: SUCCESS
    results:
      SUCCESS:
        3e06cb55-475b-9ce2-5a22-a0bdbbd2a623:
          x: 383
          'y': 119
