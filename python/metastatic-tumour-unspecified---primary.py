# Catherine Morgan, Roger T Webb, Mathew J Carr, Evangelos Kontopantelis, Carolyn A Chew-Graham, Nav Kapur, Darren M. Ashcroft, 2024.

import sys, csv, re

codes = [{"code":"B58..00","system":"readv2"},{"code":"B5z..00","system":"readv2"},{"code":"B560100","system":"readv2"},{"code":"B563300","system":"readv2"},{"code":"B560500","system":"readv2"},{"code":"B58z.00","system":"readv2"},{"code":"B561200","system":"readv2"},{"code":"B560600","system":"readv2"},{"code":"B560.00","system":"readv2"},{"code":"B563100","system":"readv2"},{"code":"B56z.00","system":"readv2"},{"code":"B56..00","system":"readv2"},{"code":"B560700","system":"readv2"},{"code":"B562000","system":"readv2"},{"code":"B59z.00","system":"readv2"},{"code":"B561900","system":"readv2"},{"code":"ByuC700","system":"readv2"},{"code":"B561500","system":"readv2"},{"code":"B563200","system":"readv2"},{"code":"B59..00","system":"readv2"},{"code":"B561800","system":"readv2"},{"code":"B58yz00","system":"readv2"},{"code":"B561100","system":"readv2"},{"code":"B5y..00","system":"readv2"},{"code":"B560300","system":"readv2"},{"code":"B565300","system":"readv2"},{"code":"B560z00","system":"readv2"},{"code":"B58y.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('metastatic-tumour-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["metastatic-tumour-unspecified---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["metastatic-tumour-unspecified---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["metastatic-tumour-unspecified---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
