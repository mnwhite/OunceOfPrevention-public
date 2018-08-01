import os

doc_list = os.listdir('.')
for this_doc in doc_list:
    suffix = this_doc[-3:]
    if (suffix != 'dct') and (suffix != 'DCT'):
        continue
    
    f = open(this_doc,'r')
    filetext = f.read()
    f.close()
    
    begin = filetext.find('h:')
    if begin == -1:
        begin = filetext.find('H:')
    end   = filetext.find('RawData\\') + 8
    
    newtext = filetext[:begin] + '..\\RawHRS\\' + filetext[end:]
    
    f = open(this_doc,'w')
    f.write(newtext)
    f.close()
