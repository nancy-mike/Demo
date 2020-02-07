namespace: test
flow:
  name: register_users_from_excel
  inputs:
    - excel_path: "C:\\\\Users\\\\Administrator\\\\Desktop\\\\users.xlsx"
    - sheet: Sheet1
    - login_header: Username
    - password_header: Password
    - email_header: Email
    - name_header: Full Name
  workflow:
    - Get_Cell:
        do_external:
          5060d8cc-d03c-43fe-946f-7babaaec589f:
            - excelFileName: '${excel_path}'
            - worksheetName: '${sheet}'
            - hasHeader: 'yes'
            - firstRowIndex: '0'
            - rowIndex: '0:1000'
            - columnIndex: '0:100'
            - rowDelimiter: '|'
            - columnDelimiter: ','
            - login_header: '${login_header}'
            - password_header: '${password_header}'
            - email_header: '${email_header}'
            - name_header: '${name_header}'
        publish:
          - data: '${returnResult}'
          - header
          - login_index: '${str(header.split(",").index(login_header))}'
          - password_index: '${str(header.split(",").index(password_header))}'
          - email_index: '${str(header.split(",").index(email_header))}'
          - name_index: '${str(header.split(",").index(name_header))}'
        navigate:
          - failure: on_failure
          - success: register_account_flow
    - register_account_flow:
        loop:
          for: 'row in data.split("|")'
          do:
            web_action.register_account_flow:
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
        x: 61
        'y': 147
      register_account_flow:
        x: 200
        'y': 151
        navigate:
          6abad0f2-729e-41a4-8d9b-118c77dbb88f:
            targetId: 41bfbb99-b4ad-dcc8-16aa-aa5fa05bd445
            port: SUCCESS
    results:
      SUCCESS:
        41bfbb99-b4ad-dcc8-16aa-aa5fa05bd445:
          x: 343
          'y': 141
