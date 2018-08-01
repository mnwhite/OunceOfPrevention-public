% This script produces Stata .do files that extract and process the HRS
% data from 1996 to 2010.

clear all;
tic
CoreFile = fopen('CoreQ.txt');
ExitFile = fopen('ExitQ.txt');
ImputeFile = fopen('ImputeQ.txt');
CoreData = textscan(CoreFile, '%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s', 'Delimiter', '\t','HeaderLines',1);
ExitData = textscan(ExitFile, '%s %s %s %s %s %s %s %s %s %s', 'Delimiter', '\t','HeaderLines',1);
ImputeData = textscan(ImputeFile, '%s %s %s %s %s %s %s %s %s %s %s', 'Delimiter', '\t','HeaderLines',1);
LabelCol = 1;
NameCol = 2;

CoreVarNames = CoreData{NameCol};
CoreVarLabels = CoreData{LabelCol};
ExitVarNames = ExitData{NameCol};
ExitVarLabels = ExitData{LabelCol};
ImputeVarNames = ImputeData{NameCol};
ImputeVarLabels = ImputeData{LabelCol};

CoreFiles2010 = cell(6,1);
CoreFiles2010{1} = 'H10A_R';
CoreFiles2010{2} = 'H10C_R';
CoreFiles2010{3} = 'H10G_R';
CoreFiles2010{4} = 'H10J_R';
CoreFiles2010{5} = 'H10N_R';
CoreFiles2010{6} = 'H10PR_R';

CoreFiles2008 = cell(6,1);
CoreFiles2008{1} = 'H08A_R';
CoreFiles2008{2} = 'H08C_R';
CoreFiles2008{3} = 'H08G_R';
CoreFiles2008{4} = 'H08J_R';
CoreFiles2008{5} = 'H08N_R';
CoreFiles2008{6} = 'H08PR_R';

CoreFiles2006 = cell(6,1);
CoreFiles2006{1} = 'H06A_R';
CoreFiles2006{2} = 'H06C_R';
CoreFiles2006{3} = 'H06G_R';
CoreFiles2006{4} = 'H06J_R';
CoreFiles2006{5} = 'H06N_R';
CoreFiles2006{6} = 'H06PR_R';

CoreFiles2004 = cell(7,1);
CoreFiles2004{1} = 'H04A_R';
CoreFiles2004{2} = 'H04A_H';
CoreFiles2004{3} = 'H04C_R';
CoreFiles2004{4} = 'H04G_R';
CoreFiles2004{5} = 'H04J_R';
CoreFiles2004{6} = 'H04N_R';
CoreFiles2004{7} = 'H04PR_R';

CoreFiles2002 = cell(7,1);
CoreFiles2002{1} = 'H02A_R';
CoreFiles2002{2} = 'H02A_H';
CoreFiles2002{3} = 'H02C_R';
CoreFiles2002{4} = 'H02G_R';
CoreFiles2002{5} = 'H02J_R';
CoreFiles2002{6} = 'H02N_R';
CoreFiles2002{7} = 'H02PR_R';

CoreFiles2000 = cell(6,1);
CoreFiles2000{1} = 'H00CS_R';
CoreFiles2000{2} = 'H00B_R';
CoreFiles2000{3} = 'H00E_R';
CoreFiles2000{4} = 'H00G_R';
CoreFiles2000{5} = 'H00R_R';
CoreFiles2000{6} = 'H00PR_R';

CoreFiles1998 = cell(7,1);
CoreFiles1998{6} = 'H98PR_R';
CoreFiles1998{7} = 'H98A_R';
CoreFiles1998{1} = 'H98CS_R';
CoreFiles1998{2} = 'H98B_R';
CoreFiles1998{3} = 'H98E_R';
CoreFiles1998{4} = 'H98G_R';
CoreFiles1998{5} = 'H98R_R';

CoreFiles1996 = cell(7,1);
CoreFiles1996{6} = 'H96PR_R';
CoreFiles1996{1} = 'H96CS_R';
CoreFiles1996{2} = 'H96B_R';
CoreFiles1996{3} = 'H96E_R';
CoreFiles1996{4} = 'H96G_R';
CoreFiles1996{5} = 'H96R_R';
CoreFiles1996{7} = 'H96A_R';

CoreFiles1995 = cell(7,1);
CoreFiles1995{6} = 'A95PR_R';
CoreFiles1995{1} = 'A95CS_R';
CoreFiles1995{2} = 'A95B_R';
CoreFiles1995{3} = 'A95E_R';
CoreFiles1995{4} = 'A95G_R';
CoreFiles1995{5} = 'A95R_R';
CoreFiles1995{7} = 'A95A_R';

ExitFiles2010 = cell(5,1);
ExitFiles2010{1} = 'X10A_R';
ExitFiles2010{2} = 'X10C_R';
ExitFiles2010{3} = 'X10G_R';
ExitFiles2010{4} = 'X10N_R';
ExitFiles2010{5} = 'X10PR_R';

ExitFiles2008 = cell(5,1);
ExitFiles2008{1} = 'X08A_R';
ExitFiles2008{2} = 'X08C_R';
ExitFiles2008{3} = 'X08G_R';
ExitFiles2008{4} = 'X08N_R';
ExitFiles2008{5} = 'X08PR_R';

ExitFiles2006 = cell(5,1);
ExitFiles2006{1} = 'X06A_R';
ExitFiles2006{2} = 'X06C_R';
ExitFiles2006{3} = 'X06G_R';
ExitFiles2006{4} = 'X06N_R';
ExitFiles2006{5} = 'X06PR_R';

ExitFiles2004 = cell(5,1);
ExitFiles2004{5} = 'X04PR_R';
ExitFiles2004{1} = 'X04A_R';
ExitFiles2004{2} = 'X04C_R';
ExitFiles2004{3} = 'X04G_R';
ExitFiles2004{4} = 'X04N_R';

ExitFiles2002 = cell(5,1);
ExitFiles2002{1} = 'X02A_R';
ExitFiles2002{2} = 'X02C_R';
ExitFiles2002{3} = 'X02G_R';
ExitFiles2002{4} = 'X02N_R';
ExitFiles2002{5} = 'X02PR_R';

ExitFiles2000 = cell(5,1);
ExitFiles2000{1} = 'X00CS_R';
ExitFiles2000{2} = 'X00B_R';
ExitFiles2000{3} = 'X00E_R';
ExitFiles2000{4} = 'X00R_R';
ExitFiles2000{5} = 'X00PR_R';

ExitFiles1998 = cell(5,1);
ExitFiles1998{5} = 'X98PR_R';
ExitFiles1998{1} = 'X98CS_R';
ExitFiles1998{2} = 'X98B_R';
ExitFiles1998{3} = 'X98E_R';
ExitFiles1998{4} = 'X98R_R';

ImputeFiles2010{1} = 'incwlth10e1a';

ImputeFiles2008{1} = 'incwlth08e1a';

ImputeFiles2006{1} = 'incwlth06f2a';

ImputeFiles2004 = cell(2,1);
ImputeFiles2004{1} = 'h04i_hH';
ImputeFiles2004{2} = 'h04i_qH';

ImputeFiles2002 = cell(2,1);
ImputeFiles2002{1} = 'h02i_hH';
ImputeFiles2002{2} = 'h02i_qH';

ImputeFiles2000 = cell(2,1);
ImputeFiles2000{1} = 'h00i_jH';
ImputeFiles2000{2} = 'h00i_fH';

ImputeFiles1998 = cell(2,1);
ImputeFiles1998{1} = 'h98i_jH';
ImputeFiles1998{2} = 'h98i_fH';

ImputeFiles1996 = cell(2,1);
ImputeFiles1996{1} = 'h96i_jH';
ImputeFiles1996{2} = 'h96i_fH';

ImputeFiles1995 = cell(2,1);
ImputeFiles1995{1} = 'a95i_jH';
ImputeFiles1995{2} = 'a95i_fH';

YearCoreLetters = 'MLKJHGFED';
YearExitLetters = 'WVUTSRQPO';
YearImputeLetters = 'mlkJHGFED';

for Year = [2010:(-2):1996 1995],
    YearCol = 1008 - 0.5*Year;
    if Year == 1995,
        YearCol = 11;
    end
    YearLblCol = YearCol + 9;
    YearText = num2str(Year);
    
    YearCoreKeep = ['KeepCoreVars' YearText];
    YearCoreRename = ['RenameCoreVars' YearText];
    YearCoreLabel = ['LabelCoreVars' YearText];
    YearCoreLabelB = ['DataLabelCoreVars' YearText];
    eval([YearCoreKeep ' = ''keep'';']);
    eval([YearCoreRename ' = '''';']);
    eval([YearCoreLabel ' = '''';']);
    eval([YearCoreLabelB ' = '''';']);
    PrefCoreLetter = YearCoreLetters(YearCol-2);
    eval(['NumCoreFiles = length(CoreFiles' YearText ');']);
    for j = 1:length(CoreVarNames),
        if ~strcmp(CoreData{YearCol}{j},'N/A'),
            if ~strcmp(CoreData{YearCol}{j},'HHID') && ~strcmp(CoreData{YearCol}{j},'PN'),
                eval([YearCoreKeep ' = sprintf([' YearCoreKeep ' ' ''' ' PrefCoreLetter CoreData{YearCol}{j} ''']);']);
                eval([YearCoreRename ' = sprintf([' YearCoreRename ' ''rename '' ''' PrefCoreLetter CoreData{YearCol}{j} ''' '' '' ''' CoreData{NameCol}{j} ''' ''\r\n''' ']);']);
                eval([YearCoreLabel ' = sprintf([' YearCoreLabel ' ''label variable '' ''' CoreData{NameCol}{j} ''' '' '' ''"' CoreData{LabelCol}{j} '"'' ''\r\n'']);']);
                if ~strcmp(CoreData{YearLblCol}{j},'N/A'),
                    if strcmp(CoreData{YearLblCol}{j}(1:5),'Value'),
                        eval([YearCoreLabelB ' = sprintf([' YearCoreLabelB ' ''summarize ' CoreData{NameCol}{j} '\r\nlocal j = ceil(log(r(max))/log(10))\r\n'']);']);
                        eval([YearCoreLabelB ' = sprintf([' YearCoreLabelB ' ''label values ' CoreData{NameCol}{j} ' Value`j$\r\n'']);']);
                    else
                        eval([YearCoreLabelB ' = sprintf([' YearCoreLabelB ' ''label values ' CoreData{NameCol}{j} ' ' CoreData{YearLblCol}{j} '\r\n'']);']);
                    end
                end
            else
                eval([YearCoreKeep ' = sprintf([' YearCoreKeep ' ' ''' ' CoreData{YearCol}{j} ''']);']);
            end
        end
    end
    YearCoreMerge = ['MergeCore' YearText];
    eval([YearCoreMerge ' = '''';']);
    for j = 1:NumCoreFiles,
        eval([YearCoreMerge ' = sprintf([' YearCoreMerge ' ''clear all\r\n'']);']);
        eval([YearCoreMerge ' = sprintf([' YearCoreMerge ' ''infile using ../RawHRS/'' CoreFiles' YearText '{j} ''.dct\r\n'']);']);
        if eval(['CoreFiles' YearText '{j}(end) ~= ''H''']),
            eval([YearCoreMerge ' = sprintf([' YearCoreMerge ' ''sort HHID PN\r\nsave ../Extracted/'' CoreFiles' YearText '{j}' ' ''.dta, replace\r\n'']);']);
        else
            eval([YearCoreMerge ' = sprintf([' YearCoreMerge ' ''sort HHID ' PrefCoreLetter 'SUBHH\r\nsave ../Extracted/'' CoreFiles' YearText '{j}' ' ''.dta, replace\r\n'']);']);
        end
    end
    for j = 1:(NumCoreFiles-1),
        if eval(['CoreFiles' YearText '{j}(end) ~= ''H''']),
            eval([YearCoreMerge ' = sprintf([' YearCoreMerge ' ''sort HHID PN\r\nmerge 1:1 HHID PN using ../Extracted/'' CoreFiles' YearText '{j} ''.dta, sorted\r\ndrop _merge\r\n'']);']);
        else
            eval([YearCoreMerge ' = sprintf([' YearCoreMerge ' ''sort HHID ' PrefCoreLetter 'SUBHH\r\nmerge m:1 HHID ' PrefCoreLetter 'SUBHH using ../Extracted/'' CoreFiles' YearText '{j} ''.dta, sorted\r\ndrop _merge\r\n'']);']);
        end
    end
    if Year < 2006,
        eval([YearCoreMerge ' = sprintf([' YearCoreMerge ' ''sort HHID ' PrefCoreLetter 'SUBHH\r\n'']);']);
    end
    eval([YearCoreLabelB ' = regexprep(' YearCoreLabelB ',''\$'',sprintf(''''''''));']);
    YearCoreExtract = ['ExtractCore' YearText];
    eval([YearCoreExtract ' = sprintf([''clear all\r\nset mem 200M\r\nset more off\r\nset maxvar 10000\r\n'']);']);
    eval([YearCoreExtract ' = sprintf([' YearCoreExtract ' ''\r\n'' ' YearCoreMerge ' ''\r\n'' ' YearCoreKeep ' ''\r\n'' ' YearCoreRename ' ''\r\ndo DefineLabels.do\r\n'' ' YearCoreLabel ' ''\r\n'' ' YearCoreLabelB ' ''\r\nsave ../Extracted/MergedCore'' YearText(3:4) ''.dta, replace\r\n'']);']);
    
    if Year > 1996,
        YearExitKeep = ['KeepExitVars' YearText];
        YearExitRename = ['RenameExitVars' YearText];
        YearExitLabel = ['LabelExitVars' YearText];
        eval([YearExitKeep ' = ''keep'';']);
        eval([YearExitRename ' = '''';']);
        eval([YearExitLabel ' = '''';']);
        PrefExitLetter = YearExitLetters(YearCol-2);
        for j = 1:length(ExitVarNames),
            if ~strcmp(ExitData{YearCol}{j},'N/A'),
                if ~strcmp(ExitData{YearCol}{j},'HHID') && ~strcmp(ExitData{YearCol}{j},'PN'),
                    eval([YearExitKeep ' = sprintf([' YearExitKeep ' ' ''' ' PrefExitLetter ExitData{YearCol}{j} ''']);']);
                        eval([YearExitRename ' = sprintf([' YearExitRename ' ''rename '' ''' PrefExitLetter ExitData{YearCol}{j} ''' '' '' ''' ExitData{NameCol}{j} ''' ''\r\n''' ']);']);
                    eval([YearExitLabel ' = sprintf([' YearExitLabel ' ''label variable '' ''' ExitData{NameCol}{j} ''' '' '' ''"' ExitData{LabelCol}{j} '"'' ''\r\n''' ']);']);
                else
                    eval([YearExitKeep ' = sprintf([' YearExitKeep ' ' ''' ' ExitData{YearCol}{j} ''']);']);
                end
            end
        end
        YearExitMerge = ['MergeExit' YearText];
        eval([YearExitMerge ' = '''';']);
        for j = 1:5,
            eval([YearExitMerge ' = sprintf([' YearExitMerge ' ''clear all\r\n'']);']);
            eval([YearExitMerge ' = sprintf([' YearExitMerge ' ''infile using ../RawHRS/'' ExitFiles' YearText '{j} ''.dct\r\n'']);']); 
            eval([YearExitMerge ' = sprintf([' YearExitMerge ' ''sort HHID PN\r\nsave ../Extracted/'' ExitFiles' YearText '{j}' ' ''.dta, replace\r\n'']);']);
        end
        for j = 1:4,
            eval([YearExitMerge ' = sprintf([' YearExitMerge ' ''merge 1:1 HHID PN using ../Extracted/'' ExitFiles' YearText '{j} ''.dta, sorted\r\ndrop _merge\r\n'']);']);
        end
        YearExitExtract = ['ExtractExit' YearText];
        eval([YearExitExtract ' = sprintf([''clear all\r\nset mem 200M\r\nset more off\r\nset maxvar 10000\r\n'']);']);
        eval([YearExitExtract ' = sprintf([' YearExitExtract ' ''\r\n'' ' YearExitMerge ' ''\r\n'' ' YearExitKeep ' ''\r\n'' ' YearExitRename ' ''\r\n'' ' YearExitLabel ' ''\r\nsave ../Extracted/MergedExit'' YearText(3:4) ''.dta, replace\r\n'']);']);
    end
    
    YearImputeKeep = ['KeepImputeVars' YearText];
    YearImputeRename = ['RenameImputeVars' YearText];
    YearImputeLabel = ['LabelImputeVars' YearText];
    eval([YearImputeKeep ' = ''keep'';']);
    eval([YearImputeRename ' = '''';']);
    eval([YearImputeLabel ' = '''';']);
    eval(['NumImputeFiles = length(ImputeFiles' YearText ');']);
    PrefImputeLetter = YearImputeLetters(YearCol-2);
    for j = 1:length(ImputeVarNames),
        if ~strcmp(ImputeData{YearCol}{j},'N/A'),
            if ~strcmp(ImputeData{YearCol}{j},'HHID') && ~strcmp(ImputeData{YearCol}{j},'PN'),
                eval([YearImputeKeep ' = sprintf([' YearImputeKeep ' ' ''' ' ImputeData{YearCol}{j} ''']);']);
                eval([YearImputeRename ' = sprintf([' YearImputeRename ' ''rename '' ''' ImputeData{YearCol}{j} ''' '' '' ''' ImputeData{NameCol}{j} ''' ''\r\n''' ']);']);
                eval([YearImputeLabel ' = sprintf([' YearImputeLabel ' ''label variable '' ''' ImputeData{NameCol}{j} ''' '' '' ''"' ImputeData{LabelCol}{j} '"'' ''\r\n''' ']);']);
            else
                eval([YearImputeKeep ' = sprintf([' YearImputeKeep ' ' ''' ' ImputeData{YearCol}{j} ''']);']);
            end
        end
    end
    YearImputeMerge = ['MergeImpute' YearText];
    eval([YearImputeMerge ' = '''';']);
    if NumImputeFiles > 1,
        for j = 1:NumImputeFiles,
            eval([YearImputeMerge ' = sprintf([' YearImputeMerge ' ''clear all\r\n'']);']);
            eval([YearImputeMerge ' = sprintf([' YearImputeMerge ' ''infile using ../RawHRS/'' ImputeFiles' YearText '{j} ''.dct\r\n'']);']);
            if eval(['ImputeFiles' YearText '{j}(end) ~= ''H''']),
                eval([YearImputeMerge ' = sprintf([' YearImputeMerge ' ''sort HHID PN\r\nsave ../Extracted/'' ImputeFiles' YearText '{j}' ' ''.dta, replace\r\n'']);']);
            else
                eval([YearImputeMerge ' = sprintf([' YearImputeMerge ' ''sort HHID ' PrefCoreLetter 'SUBHH\r\nsave ../Extracted/'' ImputeFiles' YearText '{j}' ' ''.dta, replace\r\n'']);']);
            end
        end
    else
        eval([YearImputeMerge ' = sprintf([' YearImputeMerge ' ''clear all\r\n'']);']);
        eval([YearImputeMerge ' = sprintf([' YearImputeMerge ' ''use ../RawHRS/'' ImputeFiles' YearText '{1} ''.dta\r\n'']);']);
        eval([YearImputeMerge ' = sprintf([' YearImputeMerge ' ''rename ' PrefImputeLetter 'subhh subhh\r\n'']);']);
    end
    for j = 1:(NumImputeFiles-1),
        if eval(['ImputeFiles' YearText '{j}(end) ~= ''H''']),
            eval([YearImputeMerge ' = sprintf([' YearImputeMerge ' ''sort HHID PN\r\nmerge 1:1 HHID PN using ../Extracted/'' ImputeFiles' YearText '{j} ''.dta, sorted\r\ndrop _merge\r\n'']);']);
        else
            eval([YearImputeMerge ' = sprintf([' YearImputeMerge ' ''sort HHID ' PrefImputeLetter 'SUBHH\r\nmerge m:1 HHID ' PrefImputeLetter 'SUBHH using ../Extracted/'' ImputeFiles' YearText '{j} ''.dta, sorted\r\ndrop _merge\r\n'']);']);
        end
    end
    YearImputeExtract = ['ExtractImpute' YearText];
    eval([YearImputeExtract ' = sprintf([''clear all\r\nset mem 200M\r\nset more off\r\nset maxvar 10000\r\n'']);']);
    eval([YearImputeExtract ' = sprintf([' YearImputeExtract ' ''\r\n'' ' YearImputeMerge ' ''\r\n'' ' YearImputeKeep ' ''\r\n'' ' YearImputeRename ' ''\r\n'' ' YearImputeLabel ' ''\r\nsave ../Extracted/MergedImpute'' YearText(3:4) ''.dta, replace\r\n'']);']);
    
    
    %eval(['cd ' YearText]);
    
    cfile = fopen(['./Scripts/ExtractCore' YearText '.do'],'w');
    eval(['fprintf(cfile,''%s'',' YearCoreExtract ');']);
    fclose(cfile);
    
    if Year > 1996,
        efile = fopen(['./Scripts/ExtractExit' YearText '.do'],'w');
        eval(['fprintf(efile,''%s'',' YearExitExtract ');']);
        fclose(cfile);
    end
    
    ifile = fopen(['./Scripts/ExtractImpute' YearText '.do'],'w');
    eval(['fprintf(ifile,''%s'',' YearImputeExtract ');']);
    fclose(cfile);
    
    %cd ..
end

fclose all;
toc;
