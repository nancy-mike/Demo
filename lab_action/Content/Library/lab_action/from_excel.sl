namespace: lab_action
flow:
  name: from_excel
  inputs:
    - excel_path: "C:\\Users\\Administrator\\Desktop\\users.xlsx"
    - sheet: sheet1
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
            - rowIndex: '0:100'
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
          - success: lab_account_flow
    - lab_account_flow:
        loop:
          for: 'row in data.split("|")'
          do:
            lab_action.lab_account_flow:
              - username: '${row.split(",")[int(login_index)]}'
              - firnammee: '${row.split(",")[int(name_index)].split()[0]}'
              - last_name: '${row.split(",")[int(name_index)].split()[-1]}'
              - password: '${row.split(",")[int(password_index)]}'
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
        x: 45
        'y': 154
      lab_account_flow:
        x: 261
        'y': 60
        navigate:
          2102475b-35f6-47a5-1f04-eb1a5774814c:
            targetId: a0362951-c608-1ff5-4ca6-95008d688f06
            port: SUCCESS
    results:
      SUCCESS:
        a0362951-c608-1ff5-4ca6-95008d688f06:
          x: 490
          'y': 148
