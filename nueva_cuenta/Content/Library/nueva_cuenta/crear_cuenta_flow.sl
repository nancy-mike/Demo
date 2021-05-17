namespace: nueva_cuenta
flow:
  name: crear_cuenta_flow
  workflow:
    - get_cell:
        do:
          io.cloudslang.base.excel.get_cell:
            - excel_file_name: "C:\\Users\\Drevyr\\Desktop\\datos.xlsx"
            - worksheet_name: Hoja1
            - has_header: 'Yes'
            - first_row_index: '1'
            - row_index: '0:10'
            - column_index: '0:10'
            - row_delimiter: '|'
            - column_delimiter: ','
        publish:
          - data: '${return_result}'
          - Cabecera: '${header}'
        navigate:
          - SUCCESS: crear_cuenta
          - FAILURE: FAILURE
    - crear_cuenta:
        loop:
          for: 'row in data.split("|")'
          do:
            nueva_cuenta.crear_cuenta:
              - usuario: '${row.split(",")[0]}'
              - password: '${row.split(",")[1]}'
          break:
            - FAILURE
          publish:
            - return_result
            - error_message
        navigate:
          - SUCCESS: SUCCESS
          - WARNING: SUCCESS
          - FAILURE: FAILURE
  outputs:
    - return_result
    - error_message
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      get_cell:
        x: 42
        'y': 80
        navigate:
          23f5691f-d574-e39b-1fe7-4ce430743a0c:
            targetId: 0da61bd0-605b-66ea-c6c8-e6c4a8e81bca
            port: FAILURE
      crear_cuenta:
        x: 232
        'y': 86
        navigate:
          19483737-bcb9-d32a-a9a2-50480f33050f:
            targetId: 0da61bd0-605b-66ea-c6c8-e6c4a8e81bca
            port: FAILURE
          d3b4235d-bc25-4f2f-a4bb-1e106fa71f1f:
            targetId: cf0db08e-b405-5488-d219-dc991be409bf
            port: WARNING
          5c29e7ff-9b83-582d-9dd8-bf8137a34345:
            targetId: cf0db08e-b405-5488-d219-dc991be409bf
            port: SUCCESS
    results:
      SUCCESS:
        cf0db08e-b405-5488-d219-dc991be409bf:
          x: 494
          'y': 157
      FAILURE:
        0da61bd0-605b-66ea-c6c8-e6c4a8e81bca:
          x: 115
          'y': 250
