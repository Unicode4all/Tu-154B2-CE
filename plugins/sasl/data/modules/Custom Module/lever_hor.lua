size = {139, 29}

-- property table
defineProperty("value", 0) -- variable for changing

defineProperty("minimum", 0) -- minimum for variable, lower position of lever
defineProperty("maximum", 1) -- maximum for variable, higher position of lever

defineProperty("addFunc") -- variable for changing


-- images
defineProperty("back_img") -- background image
defineProperty("lever_img") -- lever image  

local Min = get(minimum)
local Max = get(maximum)
local Range = Max - Min  -- define range of used variable


local mouse_stat = false
local was_click = false  -- for onMouseClick operate only once
--local v = get(value)
local inverse = false
inverse = Max < Min

-- lever consist of several components
components = {
           
     -- movable lever image
    free_texture {
        image = get(lever_img),
        position_y = 0,
        position_x = function()
             local a = (get(value) - Min) * (size[1]-30) / Range
             if a > size[1] - 30 then a = size[1] - 30 end
             if a < 0 then a = 0 end
             return a  
        end,
        width = 30,
        height = 30, 
    },
    
    -- clicable area for lever
    clickable {
       position = { 15, 0, 109, 29 },
       --[[ 
       cursor = { 
            x = 0, 
            y = 0, 
            width = 16, 
            height = 16, 
            shape = loadImage("clickable.png")
        },  
        --]]
        onMouseClick = function(comp, x, y, button)
           mouse_stat = true
           if x < 0 then x = 0 elseif x > 100 then x = 100 end
		    local val = x / 100 * Range + Min
			
		   if mouse_stat and not was_click then 
              set(value, val)
           end
           was_click = true  -- second automatic click will not cause prewious calculations
           return true
        end,
        
                
        onMouseMove = function(comp, x, y, button) 
           if x < 0 then x = 0 elseif x > 100 then x = 100 end
		  
		   local val = x / 100 * Range + Min
		   if mouse_stat then 
              set(value, val)
           end
           return true 
        end,
		
		onMouseUp = function(comp, x, y, button)
			if x < 0 then x = 0 elseif x > 100 then x = 100 end
			local val = x / 100 * Range + Min
			set(value, val)
			mouse_stat = false
			was_click = false
			--addFunc()
			return true
        end,
		
    },

}








