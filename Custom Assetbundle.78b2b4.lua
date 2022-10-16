function onload()
  -- clickable area
  self.createButton({
      click_function="click", function_owner=self,
      position={0, 0.2, 0}, height=700, width=700, color={1,1,1,0}, label=""
  })
  -- button label
  self.createButton({
      click_function="click", function_owner=self,
      position={0, 0.2, 0}, height=1, width=1, color={1,1,1,1}, label="Lower\nZones", font_size=200
  })

  offset = -10
end

function click()
  self.AssetBundle.playTriggerEffect(0)
  print("Wow!")

  local allObjects = getAllObjects()
    for _,o in ipairs(allObjects) do
        if o.name == "FogOfWarTrigger" then
            if o.isSmoothMoving() then return end
            o.translate({0,offset,0})
        end
    end
    offset = offset * -1
end