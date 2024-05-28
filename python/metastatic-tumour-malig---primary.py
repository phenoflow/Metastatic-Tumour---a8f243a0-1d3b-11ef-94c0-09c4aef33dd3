# Catherine Morgan, Roger T Webb, Mathew J Carr, Evangelos Kontopantelis, Carolyn A Chew-Graham, Nav Kapur, Darren M. Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"B582z00","system":"readv2"},{"code":"B582300","system":"readv2"},{"code":"B58y800","system":"readv2"},{"code":"B585.00","system":"readv2"},{"code":"B58y300","system":"readv2"},{"code":"ByuC800","system":"readv2"},{"code":"B582200","system":"readv2"},{"code":"B58y900","system":"readv2"},{"code":"B58y700","system":"readv2"},{"code":"B572.00","system":"readv2"},{"code":"B582.00","system":"readv2"},{"code":"B582100","system":"readv2"},{"code":"B582000","system":"readv2"},{"code":"B586.00","system":"readv2"},{"code":"B582500","system":"readv2"},{"code":"B574200","system":"readv2"},{"code":"B581200","system":"readv2"},{"code":"B58y500","system":"readv2"},{"code":"B575000","system":"readv2"},{"code":"B570.00","system":"readv2"},{"code":"B581000","system":"readv2"},{"code":"B587.00","system":"readv2"},{"code":"B576200","system":"readv2"},{"code":"B58y100","system":"readv2"},{"code":"B582400","system":"readv2"},{"code":"B580.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('metastatic-tumour-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["metastatic-tumour-malig---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["metastatic-tumour-malig---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["metastatic-tumour-malig---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
