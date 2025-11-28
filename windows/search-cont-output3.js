FOR_APPEND=8
fso = new ActiveXObject("Scripting.FileSystemObject");
logFileName = "E:\\Documents\\CryptoCurrency\\Ethereum\\Pools\\search-cont-output5.txt";
logFile = fso.OpenTextFile(logFileName, FOR_APPEND, true);

search="ERROR";
regexObj= new RegExp(search, "i");

while (!WScript.StdIn.AtEndOfStream) {
    // Read stdin line-by-line, outputting it to terminal
    // and regex searching it for search, appending matched lines to logFileName.
    line=WScript.StdIn.ReadLine();
    WScript.Stdout.WriteLine(line);
    
    if (line.search(regexObj) != -1) {
        // Get current date in MM/DD/YYYY format
        now = new Date();
        now_month = now.getMonth() + 1;
        if (now_month < 10)
            now_month = "0" + now_month;
        now_day = now.getDate();
        if (now_day < 10)
            now_day = "0" + now_day;
        now_str = now_month + "/" + now_day + "/" + now.getFullYear();
        
        // Write line to logFile with date prefix
        logFile.WriteLine(now_str + " " + line);
    }
}

logFile.Close();
