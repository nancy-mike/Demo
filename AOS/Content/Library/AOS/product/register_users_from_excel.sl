namespace: AOS.product
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
          - success: Register_Account_flow
    - Register_Account_flow:
        loop:
          for: 'row in data.split("|")'
          do:
            Register_Account.Register_Account_flow:
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
        x: 195
        'y': 143
      Register_Account_flow:
        x: 441
        'y': 140
        navigate:
          0c82e816-eca5-5444-1640-950f37a6476b:
            targetId: 982f8432-394c-8438-6d2f-fe9b5a71d124
            port: SUCCESS
    results:
      SUCCESS:
        982f8432-394c-8438-6d2f-fe9b5a71d124:
          x: 752
          'y': 146
