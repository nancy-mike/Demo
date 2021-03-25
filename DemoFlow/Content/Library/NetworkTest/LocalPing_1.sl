namespace: NetworkTest
flow:
  name: LocalPing_1
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
        x: 65
        'y': 164.5
        navigate:
          3d016374-ef4e-b774-d482-8ce281d4706b:
            targetId: 903ba6f9-993f-292c-498a-4c59da9abae2
            port: SUCCESS
    results:
      SUCCESS:
        903ba6f9-993f-292c-498a-4c59da9abae2:
          x: 402
          'y': 135
