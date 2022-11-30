# Custom setElementData

## About
Element data works by sotring data on elements in C++, so there is no concept of “tables” there.
Having less context switching (IE less calls between Lua and C++) is generally seen as faster, so yes a custom "system" in Lua would be faster.

## Usage

setElementData()

```lua
exports.data:dataSet( element theElement, string key, var value [, bool synchronize = true ] )

-- Example
exports.data:dataSet(player, "Money", 8000, true)
```

getElementData()
```lua
local money = exports.data:dataGet(element theElement, string key)

-- Example
local money = exports.data:dataGet(player, "Money")
```
