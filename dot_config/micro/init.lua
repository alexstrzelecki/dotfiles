-- personal init file

-- Set blinking block cursor when micro takes over the terminal.
-- tcell overrides Alacritty's configured cursor on startup, so we restore
-- a more visible style manually. \27[1 q = blinking block.
local function setCursor()
    io.write("\27[1 q")
    io.flush()
end

function init()
    setCursor()
end

function onViewOpen(v)
    setCursor()
end
