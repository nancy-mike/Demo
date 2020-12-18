namespace: verification
flow:
  name: from_excel_ver
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
          - username_index: "${str(header.split(',').index(login_header))}"
          - password_index: "${str(header.split(',').index(password_header))}"
          - email_index: "${str(header.split(',').index(email_header))}"
          - name_index: "${str(header.split(',').index(name_header))}"
        navigate:
          - failure: on_failure
          - success: SUCCESS
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      Get_Cell:
        x: 45
        'y': 153
        navigate:
          a70e4fff-b2a3-0bfb-7783-8466137b5950:
            targetId: a0362951-c608-1ff5-4ca6-95008d688f06
            port: success
    results:
      SUCCESS:
        a0362951-c608-1ff5-4ca6-95008d688f06:
          x: 490
          'y': 148
