local SKIP = 5

function skipDown(bp)
    for i = 1, SKIP do
        bp:CursorDown()
    end
end

function skipUp(bp)
    for i = 1, SKIP do
        bp:CursorUp()
    end
end

function init() end
