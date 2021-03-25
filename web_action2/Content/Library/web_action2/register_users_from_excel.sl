namespace: web_action2
flow:
  name: register_users_from_excel
  inputs:
    - excel_path: "C:\\\\Users\\\\Administrator\\\\Desktop\\\\users.xlsx"
    - sheet: Sheet1
    - login_header: Username
    - password_header: Password
    - name_header: Full Name
    - email_header: Email
  workflow:
    - Get_Cell:
        do_external:
          5060d8cc-d03c-43fe-946f-7babaaec589f:
            - excelFileName: '${excel_path}'
            - worksheetName: '${sheet}'
            - hasHeader: 'Yes'
            - firstRowIndex: '0'
            - rowIndex: '0:1000'
            - columnIndex: '0:100'
            - rowDelimiter: '|'
            - columnDelimiter: ','
            - password_header: '${password_header}'
            - email_header: '${email_header}'
            - name_header: '${name_header}'
            - login_header: '${login_header}'
        publish:
          - data: '${returnResult}'
          - header
          - login_index: "${str(header.split(',').index(login_header))}"
          - password_index: "${str(header.split(',').index(password_header))}"
          - email_index: "${str(header.split(',').index(email_header))}"
          - name_index: "${str(header.split(',').index(name_header))}"
        navigate:
          - failure: on_failure
          - success: register_account2_flow
    - register_account2_flow:
        loop:
          for: 'row in data.split("|")'
          do:
            web_action2.register_account2_flow:
              - username: '${row.split(",")[int(login_index)]}'
              - password: '${row.split(",")[int(password_index)]}'
              - first_name: '${row.split(",")[int(name_index)].split()[0]}'
              - last_name: '${row.split(",")[int(name_index)].split()[-1]}'
              - email: '${row.split(",")[int(email_index)]}'
          break:
            - FAILURE
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      Get_Cell:
        x: 433.7578125
        'y': 241.0234375
      register_account2_flow:
        x: 666
        'y': 245
        navigate:
          ef8375d2-e6e3-5cf3-93ed-89245efc44c0:
            targetId: 2c1286df-7de2-3790-6d82-d0eff1a74ff0
            port: SUCCESS
    results:
      SUCCESS:
        2c1286df-7de2-3790-6d82-d0eff1a74ff0:
          x: 952
          'y': 228
