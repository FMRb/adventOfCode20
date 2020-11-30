-- Setup the day for the advent of calendar

if #arg ~= 1 then
    print("Usage: <day-number>\n")
    os.exit(1)
end

function exists(file)
    local ok, err, code = os.rename(file, file)
    if not ok then
        if code == 13 then
            -- Permission denied, but it exists
            return true
        end
    end
    return ok, err
end

if not exists('.git') then
    print("You must run the script from the root of the repository\n")
    os.exit(1)
end

name = "day"..arg[1]
os.execute("cargo new --bin "..name)
os.execute("mkdir "..name.."/input")
