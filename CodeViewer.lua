local Ls, Ms = getscripts()
local Localscripts = ""
rconsoleprint("@@RED@@")
rconsoleprint("Script Viewer. \nScripts (LocalScripts): \n \n")
rconsoleprint("@@LIGHT_BLUE@@")
for v, i in pairs(Ls) do
    rconsoleprint(v .. " -> " .. i.Name .. "\n")
end
rconsoleprint("@@RED@@")
rconsoleprint("\n \n Type The Name of the Script below here and the Code will pop up.\n")
rconsoleprint("@@CYAN@@")
local Name = rconsoleinput("Type Here.")
for v, i in pairs(Ls) do
    if i.Name == Name then
        rconsoleclear()
        rconsoleprint("Showing Script For '" .. Name .. "': \n \n")
        rconsoleprint("@@GREEN@@")
        rconsoleprint(decompile(i))
        rconsoleprint("\n \n Type 'Copy' to copy the Script. \n")
        if messagebox("Do you want to copy the Script?", "Copy Script", 4) == 6 then
            setclipboard(decompile(i))
        end
    end
end
if rconsoleinput("Type 'Execute' to execute this Script Again.") == "Execute" then
    loadstring(game:HttpGet(""))();
end
