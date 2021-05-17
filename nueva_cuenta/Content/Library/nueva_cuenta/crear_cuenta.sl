namespace: nueva_cuenta
operation:
  name: crear_cuenta
  inputs:
    - usuario: '${row.split(",")[0]}'
    - password: '${row.split(",")[1]}'
  sequential_action:
    gav: 'com.microfocus.seq:nueva_cuenta.crear_cuenta:1.0.0'
    skills:
      - Web
    settings:
      windows:
        active: false
      web:
        active: true
        address: 'https://signup.live.com/signup?mkt=es-es&lic=1&uaid=d05dab9acc754218a8c0cc90da924eed'
        browser: IE64
        close_on_exit: true
    steps:
      - step:
          id: '1'
          object_path: 'Browser("Crear cuenta").Page("Crear cuenta").WebEdit("Nuevo correo electrónico")'
          action: Set
          default_args: '"mariano.mariano.1"'
          snapshot: ".\\Snapshots\\ssf1.html"
          highlight_id: 'Browser("Crear cuenta").Page("Crear cuenta").WebEdit("Nuevo correo electrónico")'
          args: '${usuario+"@hotmail.com"}'
      - step:
          id: '2'
          object_path: 'Browser("Crear cuenta").Page("Crear cuenta").WebButton("Siguiente")'
          action: Click
          snapshot: ".\\Snapshots\\ssf2.html"
          highlight_id: 'Browser("Crear cuenta").Page("Crear cuenta").WebButton("Siguiente")'
      - step:
          id: '4'
          object_path: 'Browser("Crear cuenta").Page("Crear cuenta").WebEdit("Crea una contraseña")'
          action: Set
          default_args: ''
          snapshot: ".\\Snapshots\\ssf4.html"
          highlight_id: 'Browser("Crear cuenta").Page("Crear cuenta").WebEdit("Crea una contraseña")'
          args: '${password}'
      - step:
          id: '5'
          object_path: 'Browser("Crear cuenta").Page("Crear cuenta").WebButton("Siguiente")'
          action: Click
          snapshot: ".\\Snapshots\\ssf5.html"
          highlight_id: 'Browser("Crear cuenta").Page("Crear cuenta").WebButton("Siguiente")'
      - step:
          id: '6'
          object_path: 'Browser("Crear cuenta").Page("Crear cuenta").WebEdit("Nombre")'
          action: Set
          default_args: '"Mariano"'
          snapshot: ".\\Snapshots\\ssf6.html"
          highlight_id: 'Browser("Crear cuenta").Page("Crear cuenta").WebEdit("Nombre")'
      - step:
          id: '7'
          object_path: 'Browser("Crear cuenta").Page("Crear cuenta").WebEdit("Apellidos")'
          action: Set
          default_args: '"Mariano"'
          snapshot: ".\\Snapshots\\ssf7.html"
          highlight_id: 'Browser("Crear cuenta").Page("Crear cuenta").WebEdit("Apellidos")'
      - step:
          id: '8'
          object_path: 'Browser("Crear cuenta").Page("Crear cuenta").WebButton("Siguiente")'
          action: Click
          snapshot: ".\\Snapshots\\ssf8.html"
          highlight_id: 'Browser("Crear cuenta").Page("Crear cuenta").WebButton("Siguiente")'
      - step:
          id: '9'
          object_path: 'Browser("Crear cuenta").Page("Crear cuenta").WebList("Día de nacimiento")'
          action: Select
          default_args: '"10"'
          snapshot: ".\\Snapshots\\ssf9.html"
          highlight_id: 'Browser("Crear cuenta").Page("Crear cuenta").WebList("Día de nacimiento")'
      - step:
          id: '10'
          object_path: 'Browser("Crear cuenta").Page("Crear cuenta").WebList("Mes de nacimiento")'
          action: Select
          default_args: '"febrero"'
          snapshot: ".\\Snapshots\\ssf10.html"
          highlight_id: 'Browser("Crear cuenta").Page("Crear cuenta").WebList("Mes de nacimiento")'
      - step:
          id: '11'
          object_path: 'Browser("Crear cuenta").Page("Crear cuenta").WebNumber("BirthYear")'
          action: Set
          default_args: '"2000"'
          snapshot: ".\\Snapshots\\ssf11.html"
          highlight_id: 'Browser("Crear cuenta").Page("Crear cuenta").WebNumber("BirthYear")'
      - step:
          id: '12'
          object_path: 'Browser("Crear cuenta").Page("Crear cuenta").WebButton("Siguiente")'
          action: Click
          snapshot: ".\\Snapshots\\ssf12.html"
          highlight_id: 'Browser("Crear cuenta").Page("Crear cuenta").WebButton("Siguiente")'
  outputs:
    - return_result: '${return_result}'
    - error_message: '${error_message}'
  results:
    - SUCCESS
    - WARNING
    - FAILURE
object_repository:
  objects:
    - object:
        smart_identification:
          base_filter:
            property_ref:
              - micclass
          optional_filter:
            property_ref:
              - name
              - title
              - openurl
              - opentitle
              - openedbytestingtool
              - number of tabs
          algorithm: Mercury.TolerantPriority
          active: true
        name: Crear cuenta
        child_objects:
          - object:
              smart_identification:
                base_filter:
                  property_ref:
                    - micclass
                optional_filter:
                  property_ref:
                    - title
                    - url
                algorithm: Mercury.TolerantPriority
                active: true
              name: Crear cuenta
              child_objects:
                - object:
                    smart_identification:
                      base_filter:
                        property_ref:
                          - micclass
                          - type
                          - html tag
                      optional_filter:
                        property_ref:
                          - html id
                          - name
                          - class
                          - default value
                          - min
                          - max
                          - step
                          - visible
                      algorithm: Mercury.TolerantPriority
                      active: true
                    name: BirthYear
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: WebNumber
                            regular_expression: false
                          name: micclass
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '//INPUT[@id="BirthYear"]'
                            regular_expression: false
                          name: _xpath
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '-1'
                            regular_expression: false
                          name: visible
                          hidden: true
                          read_only: true
                          type: BOOL
                      - property:
                          value:
                            value: number
                            regular_expression: false
                          name: type
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: ''
                            regular_expression: false
                          name: step
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '406'
                            regular_expression: false
                          name: source_index
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: BirthYear
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '1905'
                            regular_expression: false
                          name: min
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '2021'
                            regular_expression: false
                          name: max
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: INPUT
                            regular_expression: false
                          name: html tag
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: BirthYear
                            regular_expression: false
                          name: html id
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: ''
                            regular_expression: false
                          name: default value
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: form-control
                            regular_expression: false
                          name: class
                          hidden: true
                          read_only: true
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: WebNumber
                    visual_relations: ''
                    last_update_time: 'viernes, 14 de mayo de 2021 8:55:17'
                    basic_identification:
                      property_ref:
                        - micclass
                        - _xpath
                        - type
                        - name
                        - html tag
                      ordinal_identifier: ''
                - object:
                    smart_identification:
                      base_filter:
                        property_ref:
                          - micclass
                          - html tag
                      optional_filter:
                        property_ref:
                          - name
                          - html id
                          - class
                          - default value
                          - items count
                          - visible items
                          - visible
                          - acc_name
                      algorithm: Mercury.TolerantPriority
                      active: true
                    name: Mes de nacimiento
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: WebList
                            regular_expression: false
                          name: micclass
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '//SELECT[@id="BirthMonth"]'
                            regular_expression: false
                          name: _xpath
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: visible items
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: '-1'
                            regular_expression: false
                          name: visible
                          hidden: true
                          read_only: true
                          type: BOOL
                      - property:
                          value:
                            value: '389'
                            regular_expression: false
                          name: source_index
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: BirthMonth
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '13'
                            regular_expression: false
                          name: items count
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: SELECT
                            regular_expression: false
                          name: html tag
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: BirthMonth
                            regular_expression: false
                          name: html id
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: ''
                            regular_expression: false
                          name: default value
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: datepart1 form-control
                            regular_expression: false
                          name: class
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: Mes de nacimiento
                            regular_expression: false
                          name: acc_name
                          hidden: true
                          read_only: true
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: WebList
                    visual_relations: ''
                    last_update_time: 'viernes, 14 de mayo de 2021 8:55:17'
                    basic_identification:
                      property_ref:
                        - micclass
                        - _xpath
                        - name
                        - html tag
                      ordinal_identifier: ''
                - object:
                    smart_identification:
                      base_filter:
                        property_ref:
                          - micclass
                          - html tag
                      optional_filter:
                        property_ref:
                          - name
                          - html id
                          - class
                          - default value
                          - items count
                          - visible items
                          - visible
                          - acc_name
                      algorithm: Mercury.TolerantPriority
                      active: true
                    name: Día de nacimiento
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: WebList
                            regular_expression: false
                          name: micclass
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '//SELECT[@id="BirthDay"]'
                            regular_expression: false
                          name: _xpath
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: visible items
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: '-1'
                            regular_expression: false
                          name: visible
                          hidden: true
                          read_only: true
                          type: BOOL
                      - property:
                          value:
                            value: '351'
                            regular_expression: false
                          name: source_index
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: BirthDay
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '32'
                            regular_expression: false
                          name: items count
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: SELECT
                            regular_expression: false
                          name: html tag
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: BirthDay
                            regular_expression: false
                          name: html id
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: ''
                            regular_expression: false
                          name: default value
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: datepart0 form-control
                            regular_expression: false
                          name: class
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: Día de nacimiento
                            regular_expression: false
                          name: acc_name
                          hidden: true
                          read_only: true
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: WebList
                    visual_relations: ''
                    last_update_time: 'viernes, 14 de mayo de 2021 8:55:17'
                    basic_identification:
                      property_ref:
                        - micclass
                        - _xpath
                        - name
                        - html tag
                      ordinal_identifier: ''
                - object:
                    smart_identification:
                      base_filter:
                        property_ref:
                          - micclass
                          - type
                          - html tag
                      optional_filter:
                        property_ref:
                          - name
                          - html id
                          - max length
                          - default value
                          - class
                          - rows
                          - placeholder
                          - acc_name
                      algorithm: Mercury.TolerantPriority
                      active: true
                    name: Nuevo correo electrónico
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: WebEdit
                            regular_expression: false
                          name: micclass
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '//INPUT[@id="MemberName"]'
                            regular_expression: false
                          name: _xpath
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: email
                            regular_expression: false
                          name: type
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '349'
                            regular_expression: false
                          name: source_index
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: rows
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: alguien@example.com
                            regular_expression: false
                          name: placeholder
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: MemberName
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '524288'
                            regular_expression: false
                          name: max length
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: INPUT
                            regular_expression: false
                          name: html tag
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: MemberName
                            regular_expression: false
                          name: html id
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: ''
                            regular_expression: false
                          name: default value
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: ltr_override form-control email-input-max-width
                            regular_expression: false
                          name: class
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: Nuevo correo electrónico
                            regular_expression: false
                          name: acc_name
                          hidden: true
                          read_only: true
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: WebEdit
                    visual_relations: ''
                    last_update_time: 'viernes, 14 de mayo de 2021 8:55:17'
                    basic_identification:
                      property_ref:
                        - micclass
                        - _xpath
                        - type
                        - name
                        - html tag
                      ordinal_identifier: ''
                - object:
                    smart_identification:
                      base_filter:
                        property_ref:
                          - micclass
                          - type
                          - html tag
                      optional_filter:
                        property_ref:
                          - name
                          - html id
                          - max length
                          - default value
                          - class
                          - rows
                          - placeholder
                          - acc_name
                      algorithm: Mercury.TolerantPriority
                      active: true
                    name: Nombre
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: WebEdit
                            regular_expression: false
                          name: micclass
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '//INPUT[@id="FirstName"]'
                            regular_expression: false
                          name: _xpath
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: text
                            regular_expression: false
                          name: type
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '88'
                            regular_expression: false
                          name: source_index
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: rows
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: Nombre
                            regular_expression: false
                          name: placeholder
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: FirstName
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '524288'
                            regular_expression: false
                          name: max length
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: INPUT
                            regular_expression: false
                          name: html tag
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: FirstName
                            regular_expression: false
                          name: html id
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: ''
                            regular_expression: false
                          name: default value
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: form-control
                            regular_expression: false
                          name: class
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: Nombre
                            regular_expression: false
                          name: acc_name
                          hidden: true
                          read_only: true
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: WebEdit
                    visual_relations: ''
                    last_update_time: 'viernes, 14 de mayo de 2021 8:55:17'
                    basic_identification:
                      property_ref:
                        - micclass
                        - _xpath
                        - type
                        - name
                        - html tag
                      ordinal_identifier: ''
                - object:
                    smart_identification:
                      base_filter:
                        property_ref:
                          - micclass
                          - type
                          - html tag
                      optional_filter:
                        property_ref:
                          - name
                          - html id
                          - max length
                          - default value
                          - class
                          - rows
                          - placeholder
                          - acc_name
                      algorithm: Mercury.TolerantPriority
                      active: true
                    name: Crea una contraseña
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: WebEdit
                            regular_expression: false
                          name: micclass
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '//INPUT[@id="PasswordInput"]'
                            regular_expression: false
                          name: _xpath
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: password
                            regular_expression: false
                          name: type
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '90'
                            regular_expression: false
                          name: source_index
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: rows
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: Crea una contraseña
                            regular_expression: false
                          name: placeholder
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: Password
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '524288'
                            regular_expression: false
                          name: max length
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: INPUT
                            regular_expression: false
                          name: html tag
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: PasswordInput
                            regular_expression: false
                          name: html id
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: ''
                            regular_expression: false
                          name: default value
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: form-control email-input-max-width
                            regular_expression: false
                          name: class
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: Crea una contraseña
                            regular_expression: false
                          name: acc_name
                          hidden: true
                          read_only: true
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: WebEdit
                    visual_relations: ''
                    last_update_time: 'viernes, 14 de mayo de 2021 8:55:17'
                    basic_identification:
                      property_ref:
                        - micclass
                        - _xpath
                        - type
                        - name
                        - html tag
                      ordinal_identifier: ''
                - object:
                    smart_identification:
                      base_filter:
                        property_ref:
                          - micclass
                          - type
                          - html tag
                      optional_filter:
                        property_ref:
                          - name
                          - html id
                          - max length
                          - default value
                          - class
                          - rows
                          - placeholder
                          - acc_name
                      algorithm: Mercury.TolerantPriority
                      active: true
                    name: Apellidos
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: WebEdit
                            regular_expression: false
                          name: micclass
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '//INPUT[@id="LastName"]'
                            regular_expression: false
                          name: _xpath
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: text
                            regular_expression: false
                          name: type
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '93'
                            regular_expression: false
                          name: source_index
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: '0'
                            regular_expression: false
                          name: rows
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: Apellidos
                            regular_expression: false
                          name: placeholder
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: LastName
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '524288'
                            regular_expression: false
                          name: max length
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: INPUT
                            regular_expression: false
                          name: html tag
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: LastName
                            regular_expression: false
                          name: html id
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: ''
                            regular_expression: false
                          name: default value
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: form-control
                            regular_expression: false
                          name: class
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: Apellidos
                            regular_expression: false
                          name: acc_name
                          hidden: true
                          read_only: true
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: WebEdit
                    visual_relations: ''
                    last_update_time: 'viernes, 14 de mayo de 2021 8:55:17'
                    basic_identification:
                      property_ref:
                        - micclass
                        - _xpath
                        - type
                        - name
                        - html tag
                      ordinal_identifier: ''
                - object:
                    smart_identification:
                      base_filter:
                        property_ref:
                          - micclass
                          - html tag
                      optional_filter:
                        property_ref:
                          - name
                          - type
                          - html id
                          - value
                          - class
                          - visible
                          - acc_name
                      algorithm: Mercury.TolerantPriority
                      active: true
                    name: Siguiente
                    child_objects: []
                    properties:
                      - property:
                          value:
                            value: WebButton
                            regular_expression: false
                          name: micclass
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '//INPUT[@id="iSignupAction"]'
                            regular_expression: false
                          name: _xpath
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '-1'
                            regular_expression: false
                          name: visible
                          hidden: true
                          read_only: true
                          type: BOOL
                      - property:
                          value:
                            value: Siguiente
                            regular_expression: false
                          name: value
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: submit
                            regular_expression: false
                          name: type
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '388'
                            regular_expression: false
                          name: source_index
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: Siguiente
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: INPUT
                            regular_expression: false
                          name: html tag
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: iSignupAction
                            regular_expression: false
                          name: html id
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: btn btn-block win-button btn-primary
                            regular_expression: false
                          name: class
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: ''
                            regular_expression: false
                          name: acc_name
                          hidden: true
                          read_only: true
                          type: STRING
                    comments: ''
                    custom_replay: ''
                    class: WebButton
                    visual_relations: ''
                    last_update_time: 'viernes, 14 de mayo de 2021 8:55:17'
                    basic_identification:
                      property_ref:
                        - micclass
                        - _xpath
                        - type
                        - name
                        - html tag
                      ordinal_identifier: ''
              properties:
                - property:
                    value:
                      value: ''
                      regular_expression: false
                    name: user-input in post data
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: ''
                      regular_expression: false
                    name: user input in get data
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: 'https://signup.live.com/signup'
                      regular_expression: false
                    name: url without form data
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: 'https://signup.live.com/signup?mkt=es-es&lic=1&uaid=d05dab9acc754218a8c0cc90da924eed'
                      regular_expression: false
                    name: url
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: Crear cuenta
                      regular_expression: false
                    name: title
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: ''
                      regular_expression: false
                    name: non user-input in post data
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: ''
                      regular_expression: false
                    name: non user-input in get data
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: Page
                      regular_expression: false
                    name: micclass
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: '10004'
                      regular_expression: false
                    name: index
                    hidden: true
                    read_only: true
                    type: NUMBER
                - property:
                    value:
                      value: ''
                      regular_expression: false
                    name: form data
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: '128646'
                      regular_expression: false
                    name: document size
                    hidden: true
                    read_only: true
                    type: NUMBER
                - property:
                    value:
                      value: ''
                      regular_expression: false
                    name: all data in get method
                    hidden: true
                    read_only: true
                    type: STRING
              comments: ''
              custom_replay: ''
              class: Page
              visual_relations: ''
              last_update_time: 'viernes, 14 de mayo de 2021 8:55:17'
              basic_identification:
                property_ref:
                  - micclass
                ordinal_identifier: ''
        properties:
          - property:
              value:
                value: Crear cuenta - Internet Explorer
                regular_expression: false
              name: title
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: 'https://signup.live.com/signup?mkt=es-es&lic=1&uaid=d05dab9acc754218a8c0cc90da924eed'
                regular_expression: false
              name: openurl
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: Cuenta Microsoft
                regular_expression: false
              name: opentitle
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: '-1'
                regular_expression: false
              name: openedbytestingtool
              hidden: true
              read_only: true
              type: BOOL
          - property:
              value:
                value: '1'
                regular_expression: false
              name: number of tabs
              hidden: true
              read_only: true
              type: NUMBER
          - property:
              value:
                value: Crear cuenta
                regular_expression: false
              name: name
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: Browser
                regular_expression: false
              name: micclass
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: '1'
                regular_expression: false
              name: browserindex
              hidden: true
              read_only: true
              type: I2
        comments: ''
        custom_replay: ''
        class: Browser
        visual_relations: ''
        last_update_time: 'viernes, 14 de mayo de 2021 8:55:17'
        basic_identification:
          property_ref:
            - micclass
          ordinal_identifier:
            value: 0
            type: creationtime
  check_points_and_outputs: []
  parameters: []
