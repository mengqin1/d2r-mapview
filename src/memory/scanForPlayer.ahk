global lastPlayerPointer

scanForPlayer(ByRef d2rprocess, startingOffset) {
    
    ; check the one that previously worked, it's likely not checkLastOffset()
    ;WriteLog("Checking last player pointer " lastPlayerPointer)
    if (checkPlayerPointer(d2rprocess, lastPlayerPointer)) {
        return lastPlayerPointer
    } else {
        WriteLog("Scanning for new player pointer " lastPlayerPointer ", starting default offset " startingOffset)
        lastPlayerPointer := getPlayerOffset(d2rprocess, startingOffset)
    }
    return lastPlayerPointer
}

checkPlayerPointer(ByRef d2r, playerUnit) {
    if (playerUnit > 0) { ; keep following the next pointer
        
        pAct := playerUnit + 0x20
        actAddress := d2r.read(pAct, "Int64")
        mapSeedAddress := actAddress + 0x1C
        mapSeed := d2r.read(mapSeedAddress, "UInt")

        pPath := playerUnit + 0x38
        pathAddress := d2r.read(pPath, "Int64")
        xPos := d2r.read(pathAddress + 0x02, "UShort")
        yPos := d2r.read(pathAddress + 0x06, "UShort")

        ;WriteLog(name " " xPos " " yPos " " mapSeed)
        if (xPos > 0 and yPos > 0 and mapSeed) {
            ;WriteLog("SUCCESS: Found current player offset: " newOffset ", " xPos " " yPos " at entry " attempts ", which gives obfuscated map seed: " mapSeed)
            return true
        }
    }
    return false
}

getPlayerOffset(ByRef d2r, startingOffset) {
    uiOffset := offsets["uiOffset"]
    expOffset := offsets["expOffset"]

    found := false
    loop, 128
    {
        SetFormat Integer, D
        attempts := A_Index + 0
        
        newOffset := HexAdd(startingOffset, (attempts - 1) * 8)
        startingAddress := d2r.BaseAddress + newOffset
        SetFormat Integer, D
        if (loops > 1) {
            WriteLogDebug("Checking player unit " attempts " of 128 with offset " newOffset)
        }
        playerUnit := d2r.read(startingAddress, "Int64")
        while (playerUnit > 0) { ; keep following the next pointer
            pInventory := playerUnit + 0x90
            inventory := d2r.read(pInventory, "Int64")
            if (inventory) {
                
                expCharPtr := d2r.read(d2r.BaseAddress + expOffset, "Int64")
                expChar := d2r.read(expCharPtr + 0x5C, "UShort")
                basecheck := (d2r.read(inventory + 0x30, "UShort")) != 1
                if (expChar) {
                    basecheck := (d2r.read(inventory + 0x70, "UShort")) != 0
                }
                
                if (basecheck) {
                    pAct := playerUnit + 0x20
                    actAddress := d2r.read(pAct, "Int64")
                    mapSeedAddress := actAddress + 0x1C
                    mapSeed := d2r.read(mapSeedAddress, "UInt")

                    pPath := playerUnit + 0x38
                    pathAddress := d2r.read(pPath, "Int64")
                    xPos := d2r.read(pathAddress + 0x02, "UShort")
                    yPos := d2r.read(pathAddress + 0x06, "UShort")

                    pUnitData := playerUnit + 0x10
                    playerNameAddress := d2r.read(pUnitData, "Int64")
                    name :=
                    Loop, 16
                    {
                        name := name . Chr(d2r.read(playerNameAddress + (A_Index -1), "UChar"))
                    }
                    ;WriteLog(name " " xPos " " yPos " " mapSeed)
                    if (xPos > 0 and yPos > 0 and StrLen(mapSeed) > 6) {
                        WriteLog("SUCCESS: Found current player offset: " newOffset ", " xPos " " yPos " at entry " attempts ", which gives obfuscated map seed: " mapSeed)
                        
                        SetFormat Integer, D
                        found := true
                        return playerUnit
                    }
                }
            }
            ;newOffset := (playerUnit + 0x150) - d2r.BaseAddress
            playerUnit := d2r.read(playerUnit + 0x150, "Int64")  ; get next player
        }
    }
    if (!found) {
        WriteLogDebug("Did not find a player offset in unit hashtable, likely in game menu.")
    }
    return false
}

; yes, you really have to do this in AHK to add two hex values reliably
HexAdd(x, y) {
    SetFormat, Integer, hex
    l := (((lx := StrLen(x)) > (ly := StrLen(y))) ? lx : ly) - 2
    return Format("0x{:0" Format("{:d}", l) "x}", x + y)
}

