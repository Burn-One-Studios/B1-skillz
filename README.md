
## <h3 align='center'>This is the QBCore Branch</h3>
## <h3 align='center'>For more support or to see more of our resources you can join the Burn One Studios Discord <a href='https://discord.gg/yKyN9Q3Vmy'>discord</a></h3>

### [ What is this? ]
- A skillsystem based on GTA's existing skills.
- Very easy to configure, just check the config.
- You can for example add this to your gym script to get stronger.

### [ Functions ]
- Skills displays in ESC -> Stats -> Skills
- All the skills that is added by default have a unique "function", for example if you run your stamina will increase by the time.
- Depending on the skill level your character will perform the skill better, for example if your stamina is high you can run longer without getting exhausted.
- Every ``Config.UpdateFrequency`` (seconds) it will remove the current ``RemoveAmount`` for that skill.

### [ Installation ]
- Download the resource and drop it to your resource folder.
- Import the SQL file to your servers DB
- Add ``start B1-skillz`` to your server.cfg

### [ How do I use it? ]
- To Update a skill you do following:
```lua
    exports["B1-skillz"]:UpdateSkill(skill, amount)
```
  so if you were to add 2% to Stamina you do
```lua
    exports["B1-skillz"]:UpdateSkill("Stamina", 2)
```

- An export to check to see if a skill is equal or greater than a value
```lua
    exports["B1-skillz"]:CheckSkill(skill, val)
```

so if you want to check if your lung capacity is 50 or over you would do
```lua
exports["B1-skillz"]:CheckSkill("Lung Capacity", 50, function(hasskill)
    if hasskill then
        print("Lung Capacity 50 or over")
    else
        print("Lung Capacity lover than 50")
    end
end)
```

- There is also an export to get the current skill if you were to do something from another script
```lua
    exports["B1-skillz"]:GetCurrentSkill(skill)
```

so if we wanted to print out the `Current` of the "Shooting" it will look like this
```lua
CreateThread(function()
local shootingskill = exports["B1-skillz"]:GetCurrentSkill("Shooting")
QBCore.Debug(shootingskill) --prints the table to the server console
print(shootingskill.Current) --prints "Current" of that skill to the clients console
end)
```
### [ Previews ]

<h3 align='center'>Preview of skills menu</h3>
<p align="center">
    <img src="https://raw.githubusercontent.com/Kingsage311/Kingsage311/main/assets/skillmenuprev.png"/>
</p>