namespace: Expressions
flow:
  name: slice
  workflow:
    - json_path_query:
        do:
          io.cloudslang.base.json.json_path_query:
            - json_object: |-
                ${'''
                { "names" : [ "Adam", "Thom", "David", "Mary" ] }
                '''}
            - json_path: $.names
        publish:
          - names: '${str(eval(return_result)[::-1])}'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      json_path_query:
        x: 190
        'y': 137
        navigate:
          585a4f32-fd75-fa61-44a7-343f1d9f6f55:
            targetId: 9a9c7209-ca6d-c880-2b4a-26d3a6aed8ea
            port: SUCCESS
    results:
      SUCCESS:
        9a9c7209-ca6d-c880-2b4a-26d3a6aed8ea:
          x: 494
          'y': 137
