cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  urinary-metastatic-tumour---primary:
    run: urinary-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  metastatic-tumour-malig---primary:
    run: metastatic-tumour-malig---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: urinary-metastatic-tumour---primary/output
  multiple-metastatic-tumour---primary:
    run: multiple-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-malig---primary/output
  large-metastatic-tumour---primary:
    run: large-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: multiple-metastatic-tumour---primary/output
  metastatic-tumour-duodenum---primary:
    run: metastatic-tumour-duodenum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: large-metastatic-tumour---primary/output
  metastatic-tumour-respiratory---primary:
    run: metastatic-tumour-respiratory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-duodenum---primary/output
  metastatic-tumour-peritoneum---primary:
    run: metastatic-tumour-peritoneum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-respiratory---primary/output
  intrathoracic-metastatic-tumour---primary:
    run: intrathoracic-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-peritoneum---primary/output
  metastatic-tumour-unspecified---primary:
    run: metastatic-tumour-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: intrathoracic-metastatic-tumour---primary/output
  digestive-metastatic-tumour---primary:
    run: digestive-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-unspecified---primary/output
  metastatic-tumour-bladder---primary:
    run: metastatic-tumour-bladder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: digestive-metastatic-tumour---primary/output
  parotid-metastatic-tumour---primary:
    run: parotid-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-bladder---primary/output
  metastatic-tumour-liver---primary:
    run: metastatic-tumour-liver---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: parotid-metastatic-tumour---primary/output
  metastatic-tumour-vulva---primary:
    run: metastatic-tumour-vulva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-liver---primary/output
  metastatic-tumour-brain---primary:
    run: metastatic-tumour-brain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-vulva---primary/output
  metastatic-tumour-illdefined---primary:
    run: metastatic-tumour-illdefined---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-brain---primary/output
  metastatic-tumour-cervix---primary:
    run: metastatic-tumour-cervix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-illdefined---primary/output
  inguinal-metastatic-tumour---primary:
    run: inguinal-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-cervix---primary/output
  metastatic-tumour-axilla---primary:
    run: metastatic-tumour-axilla---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: inguinal-metastatic-tumour---primary/output
  metastatic-tumour-carcinoma---primary:
    run: metastatic-tumour-carcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-axilla---primary/output
  metastatic-tumour-iliac---primary:
    run: metastatic-tumour-iliac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-carcinoma---primary/output
  metastatic-tumour-lymph---primary:
    run: metastatic-tumour-lymph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-iliac---primary/output
  upper-metastatic-tumour---primary:
    run: upper-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-lymph---primary/output
  cervical-metastatic-tumour---primary:
    run: cervical-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: upper-metastatic-tumour---primary/output
  metastatic-tumour---primary:
    run: metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: cervical-metastatic-tumour---primary/output
  mediastinal-metastatic-tumour---primary:
    run: mediastinal-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: metastatic-tumour---primary/output
  unknown-metastatic-tumour---primary:
    run: unknown-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: mediastinal-metastatic-tumour---primary/output
  spinal-metastatic-tumour---primary:
    run: spinal-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: unknown-metastatic-tumour---primary/output
  tracheobronchial-metastatic-tumour---primary:
    run: tracheobronchial-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: spinal-metastatic-tumour---primary/output
  nervous-metastatic-tumour---primary:
    run: nervous-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: tracheobronchial-metastatic-tumour---primary/output
  mesenteric-metastatic-tumour---primary:
    run: mesenteric-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: nervous-metastatic-tumour---primary/output
  metastatic-tumour-inferior---primary:
    run: metastatic-tumour-inferior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: mesenteric-metastatic-tumour---primary/output
  small-metastatic-tumour---primary:
    run: small-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-inferior---primary/output
  metastatic-tumour-system---primary:
    run: metastatic-tumour-system---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: small-metastatic-tumour---primary/output
  intrapelvic-metastatic-tumour---primary:
    run: intrapelvic-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-system---primary/output
  other-metastatic-tumour---primary:
    run: other-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: intrapelvic-metastatic-tumour---primary/output
  metastatic-tumour-cancer---primary:
    run: metastatic-tumour-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: other-metastatic-tumour---primary/output
  metastatic-tumour-breast---primary:
    run: metastatic-tumour-breast---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-cancer---primary/output
  internal-metastatic-tumour---primary:
    run: internal-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-breast---primary/output
  metastatic-tumour-intestine---primary:
    run: metastatic-tumour-intestine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: internal-metastatic-tumour---primary/output
  intraabdominal-metastatic-tumour---primary:
    run: intraabdominal-metastatic-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-intestine---primary/output
  metastatic-tumour-2ndry---primary:
    run: metastatic-tumour-2ndry---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: intraabdominal-metastatic-tumour---primary/output
  metastatic-tumour-rectum---primary:
    run: metastatic-tumour-rectum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-2ndry---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: metastatic-tumour-rectum---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
