
CheckForUpdates() {
    try {
        URLLatestRelease := "https://api.github.com/repos/joffreybesos/d2r-mapview/releases/latest"
        response := GetAPIRequest(URLLatestRelease)
        respJSON := JSON.Load(response)
        latesttag := respJSON.tag_name
        latesttag := StrReplace(latesttag, "v", "")

        WriteLog("Latest version on Github is " latesttag " this version is " version)
        currenttagarr := StrSplit(version , ".")
        latesttagarr  := StrSplit(latesttag , ".")
        foundnewer := true
        if (currenttagarr[1] > latesttagarr[1]) {
            foundnewer := false
        } else if (currenttagarr[2] > latesttagarr[2]) {
            foundnewer := false
        } else if (currenttagarr[3] > latesttagarr[3]) {
            foundnewer := false
        }

        sameVersion := true
        Loop, 3
        {
            sameVersion := (currenttagarr[A_Index] == latesttagarr[A_Index]) ? sameVersion : false
        }
        if (sameVersion) {
            foundnewer := false
        }


        if (foundnewer) {
            WriteLog("Found newer version to download")
            promptmsg1 := localizedStrings["errormsg25"]
            promptmsg2 := localizedStrings["errormsg26"]
            MsgBox, 36,version, %promptmsg1%`n%promptmsg2%
            IfMsgBox Yes
            {
                
                exeUrl := respJSON.assets[1].browser_download_url
                filename := A_ScriptDir . "/" . respJSON.assets[1].name
                WriteLog("Downloading " exeUrl " to " filename) 
                UrlDownloadToFile, %exeUrl%, %filename%
                if (FileExist(filename)) {
                    Run, %filename%
                    WriteLog("Restarting as newer version...")
                    ExitApp
                } else {
                    WriteLog("Failed to download newer version")
                }
            } else {
                WriteLog("User chose to not download newer version")
            }
        } else {
            WriteLog(version " is latest version")
        }
    } catch e {
        WriteLog("Failed to check for update")
    }
}

GetAPIRequest(ByRef url) {
    oWhr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    oWhr.Open("GET", url, false)
    oWhr.SetRequestHeader("Content-Type", "application/json")
    oWhr.SetRequestHeader("Accept", "application/vnd.github.v3+json")
    oWhr.Send()
    return oWhr.ResponseText
}
