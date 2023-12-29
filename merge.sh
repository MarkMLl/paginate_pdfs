#!/bin/bash

# Assemble all constituent PDFs, including a manually-generated index, into a
# single file without bookmarks annotations:

# set -x

OUTPUT=${1:-merged_bundle.pdf}

echo "Merging, output: $OUTPUT"

pdftk \
TOC.pdf \
not_left_blank.pdf \
'Mr M Morgan-Lloyd V (1) JFG Telemetry Limited & (2) JFG Farming Limited - Cover Letter.pdf' \
'Mr M Morgan-Lloyd V (1) JFG Telemetry Limited & (2) JFG Farming Limited - Judgment.pdf' \
'CMO Morgan-Lloyd v JFG 1400518-2019.pdf' \
'Negotiations in advance of remedy hearing.pdf' \
not_left_blank.pdf \
'Re Negotiations in advance of remedy hearing.pdf' \
not_left_blank.pdf \
'Re Negotiations in advance of remedy hearing_2.pdf' \
not_left_blank.pdf \
'Re Negotiations in advance of remedy hearing_3.pdf' \
not_left_blank.pdf \
'Re Negotiations in advance of remedy hearing_4.pdf' \
not_left_blank.pdf \
'Re Negotiations in advance of remedy hearing_5.pdf' \
'Re Negotiations in advance of remedy hearing_6.pdf' \
not_left_blank.pdf \
'Re Negotiations in advance of remedy hearing_7.pdf' \
not_left_blank.pdf \
'2007_agreement.pdf' \
'markMLl_signed.pdf' \
not_left_blank.pdf \
'chrisML_signed.pdf' \
not_left_blank.pdf \
'email_2018-11-04.pdf' \
not_left_blank.pdf \
'email_2018-11-05.pdf' \
not_left_blank.pdf \
'email_2018-11-26.pdf' \
not_left_blank.pdf \
'email_2018-11-27_1.pdf' \
'email_2018-11-27_2.pdf' \
'email_2018-12-14.pdf' \
'email_2018-12-17.pdf' \
'database_query.pdf' \
not_left_blank.pdf \
'FW Acas Early Conciliation R356098_18 Morgan Lloyd vs JFG Telemetry LTD T_A KDG Telemetry.pdf' \
'FW Acas Early Conciliation R356098_18 Morgan Lloyd vs JFG Telemetry LTD T_A KDG Telemetry_2.pdf' \
'FW ACAS Early Conciliation - Mark Morgan Lloyd vs JFG Telemetry LTD T_A KDG Telemetry ref R356098_18 and other_3.pdf' \
'FW Acas Early Conciliation Certificate R356136_18 Morgan Lloyd vs JFG Farming Ltd t_a South Hill Farm_4.pdf' \
'76 EC (C) Certificate.pdf' \
not_left_blank.pdf \
'code-of-practice-on-disciplinary-and-grievance-procedures.pdf' \
'discipline-and-grievances-at-work-the-acas-guide.pdf' \
'section_95_data.pdf' \
not_left_blank.pdf \
'crossheading_enforcement_data.pdf' \
not_left_blank.pdf \
'regulation_2_made_data.pdf' \
not_left_blank.pdf \
'crossheading_compensation_data.pdf' \
not_left_blank.pdf \
'section_38_data.pdf' \
'Connected companies and Employment Allowance further guidance for employers and their agents - GOV.UK.pdf' \
not_left_blank.pdf \
'covernote.pdf' \
not_left_blank.pdf \
'Re NMW Enquiry.pdf' \
not_left_blank.pdf \
'communications_record.pdf' \
'Notes_on_6-year_diary.pdf' \
not_left_blank.pdf \
'email_2013-18-relevant.pdf' \
'android-phone-incoming.pdf' \
not_left_blank.pdf \
'Software Engineer - Civil Service Jobs - GOV.UK.pdf' \
'Instrument and Electrical Engineers Ineos Careers.pdf' \
'Salary survey What_s a UK engineer worth in 2022.pdf' \
not_left_blank.pdf \
'Average Meggitt Salary in United Kingdom in 2023 PayScale.pdf' \
not_left_blank.pdf \
'How To Become A Software Engineer - Forbes Advisor UK.pdf' \
photos.pdf \
cat output $OUTPUT

