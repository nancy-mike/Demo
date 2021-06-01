namespace: webAction
flow:
  name: registerUsersFromExcel
  inputs:
    - excel_path: "C:\\\\Users\\\\Administrator\\\\Desktop\\\\users.xlsx"
    - sheet: Sheet1
    - login_header: Username
    - password_header: Password
    - name_header: Full Name
    - email_header: email
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
            - rowDelimiter: '| '
            - columnDelimiter: ','
            - 'password_header ': '${password_header}'
            - 'email_header ': '${email_header}'
            - 'name_header ': '${name_header}'
            - 'login_header ': '${login_header}'
        publish:
          - login_index: "${str(header.split(',').index(login_header))}"
          - password_index: "${str(header.split(',').index(password_header))}"
          - email_index: "${str(header.split(',').index(email_header))}"
          - name_index: "${str(header.split(',').index(name_header))}"
          - data: '${returnResult}'
          - header
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
        x: 293.7578125
        'y': 155.0234375
        navigate:
          2999659b-efc3-adc8-9aa7-d6dc1d1bf22e:
            targetId: 99f1b4aa-381e-58e9-ba3f-30385e6e10eb
            port: success
    results:
      SUCCESS:
        99f1b4aa-381e-58e9-ba3f-30385e6e10eb:
          x: 544.7578125
          'y': 155.78515625
