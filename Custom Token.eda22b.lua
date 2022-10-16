--[[    Character Sheet Template    by: MrStump

You can set up your own character sheet if you follow these steps.

Step 1) Change the character sheet image
    -Right click on the character sheet, click Custom
    -Replace the image URL with one for your character sheet
    -Click import, make sure your sheet loads
    -SAVE THE GAME (the table setup)
    -LOAD FROM THAT SAVE YOU JUST MADE

Step 2) Edit script to fit your character sheet
    -Below you will see some general options, and then the big data table
    -The data table is what determines how many of which buttons are made
        -Checkboxes
        -Counters
        -Textboxes
    -By default, there are 3 of each. You can add more or remove entries
    -If you intend to add/remove, be sure only to add/remove ENTRIES
        -This is what an entry looks like:
            {
                pos   = {-0.977,0.1,-0.589},
                size  = 800,
                state = false
            },
        -Deleting the whole thing would remove that specific item on the sheet
        -Copy and pasting it after another entry would create another
    -Each entry type has unique data points (pos, size, state, etc)
        -Do not try to add in your own data points or remove them individually
        -There is a summary of what each point does at the top of its category

Step 3) Save and check script changes
    -Hit Save & Apply in the script window to save your code
    -You can edit your code as needed and Save+Apply as often as needed
    -When you are finished, make disableSave = false below then Save+apply
        -This enables saving, so your sheet will remember whats on it.

Bonus) Finding/Editing Positions for elements
    I have included a tool to get positions for buttons in {x,y,z} form
    Place it where you want the center of your element to be
    Then copy the table from the notes (lower right of screen)
        You can highlight it and CTRL+C
    Paste it into the data table where needed (pos=)
    If you want to manually tweek the values:
        {0,0,0} is the center of the character sheet
        {1,0,0} is right, {-1,0,0} is left
        {0,0,-1} is up, {0,0,1} is down
        0.1 for Y is the height off of the page.
            If it was 0, it would be down inside the model of the sheet

Begin editing below:    ]]

--Set this to true while editing and false when you have finished
disableSave = true
--Remember to set this to false once you are done making changes
--Then, after you save & apply it, save your game too

--Color information for button text (r,g,b, values of 0-1)
buttonFontColor = {0,0,0}
--Color information for button background
buttonColor = {1,1,1}
--Change scale of button (Avoid changing if possible)
buttonScale = {0.1,0.1,0.1}

--This is the button placement information
defaultButtonData = {
    --Add checkboxes
    checkbox = {
        --[[
        pos   = the position (pasted from the helper tool)
        size  = height/width/font_size for checkbox
        state = default starting value for checkbox (true=checked, false=not)
        ]]
        --First checkbox
        {
            pos   = {-0.977,0.1,-0.589},
            size  = 800,
            state = false
        },
        --Second checkbox
        {
            pos   = {-0.163,0.1,-0.594},
            size  = 800,
            state = false
        },
        --Third checkbox
        {
            pos   = {0.735,0.1,-0.592},
            size  = 800,
            state = false
        },
        --End of checkboxes
    },
    --Add counters that have a + and - button
    counter = {
        --[[
        pos    = the position (pasted from the helper tool)
        size   = height/width/font_size for counter
        value  = default starting value for counter
        hideBG = if background of counter is hidden (true=hidden, false=not)
        ]]
        --First counter
        {
            pos    = {-0.996,0.1,0.057},
            size   = 800,
            value  = 0,
            hideBG = true
        },
        --Second counter
        {
            pos    = {-0.151,0.1,0.043},
            size   = 800,
            value  = 0,
            hideBG = false
        },
        --Third counter
        {
            pos    = {0.736,0.1,0.051},
            size   = 800,
            value  = 0,
            hideBG = true
        },
        --End of counters
    },
    --Add editable text boxes
    textbox = {
        --[[
        pos       = the position (pasted from the helper tool)
        rows      = how many lines of text you want for this box
        width     = how wide the text box is
        font_size = size of text. This and "rows" effect overall height
        label     = what is shown when there is no text. "" = nothing
        value     = text entered into box. "" = nothing
        alignment = Number to indicate how you want text aligned
                    (1=Automatic, 2=Left, 3=Center, 4=Right, 5=Justified)
        ]]
        --LINKE 1
        {
            pos       = {-0.705,0.1,-1.89},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --LINKE 2
        {
            pos       = {-0.705,0.1,-1.71},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --LINKE 3
        {
            pos       = {-0.705,0.1,-1.52},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --LINKE 4

        {
            pos       = {-0.705,0.1,-1.34},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --LINKE 5

        {
            pos       = {-0.705,0.1,-1.15},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --LINKE 6

        {
            pos       = {-0.705,0.1,-0.96},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --LINKE 7

        {
            pos       = {-0.705,0.1,-0.775},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --SPD 1
        {
            pos       = {-0.21,0.1,-1.89},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --SPD 2
        {
            pos       = {-0.21,0.1,-1.71},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --SPD 3
        {
            pos       = {-0.21,0.1,-1.52},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --SPD 4

        {
            pos       = {-0.21,0.1,-1.34},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --SPD 5

        {
            pos       = {-0.21,0.1,-1.15},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --SPD 6

        {
            pos       = {-0.21,0.1,-0.96},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --SPD 7

        {
            pos       = {-0.21,0.1,-0.775},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        
        --GRÜNE 1
        {
            pos       = {0.285,0.1,-1.89},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --GRÜNE 2
        {
            pos       = {0.285,0.1,-1.71},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --GRÜNE 3
        {
            pos       = {0.285,0.1,-1.52},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --GRÜNE 4

        {
            pos       = {0.285,0.1,-1.34},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --GRÜNE 5

        {
            pos       = {0.285,0.1,-1.15},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --GRÜNE 6

        {
            pos       = {0.285,0.1,-0.96},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --GRÜNE 7

        {
            pos       = {0.285,0.1,-0.775},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        -- CDU 1
        {
            pos       = {0.7825,0.1,-1.89},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --CDU 2
        {
            pos       = {0.7825,0.1,-1.71},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --CDU 3
        {
            pos       = {0.7825,0.1,-1.52},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --CDU 4

        {
            pos       = {0.7825,0.1,-1.34},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --CDU 5

        {
            pos       = {0.7825,0.1,-1.15},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --CDU 6

        {
            pos       = {0.7825,0.1,-0.96},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --CDU 7

        {
            pos       = {0.7825,0.1,-0.775},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        -- FDP 1
        {
            pos       = {1.276,0.1,-1.89},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --FDP 2
        {
            pos       = {1.276,0.1,-1.71},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --FDP 3
        {
            pos       = {1.276,0.1,-1.52},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --FDP 4

        {
            pos       = {1.276,0.1,-1.34},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --FDP 5

        {
            pos       = {1.276,0.1,-1.15},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --FDP 6

        {
            pos       = {1.276,0.1,-0.96},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --FDP 7

        {
            pos       = {1.276,0.1,-0.775},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --End of REGIONS textboxes

        --Start of Victory textboxes

        --LINKE 1
        {
            pos       = {-0.705,0.1,-0.505},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --LINKE 2
        {
            pos       = {-0.705,0.1,-0.32},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --LINKE 3
        {
            pos       = {-0.705,0.1,-0.13},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --LINKE 4

        {
            pos       = {-0.705,0.1,0.055},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --LINKE 5

        {
            pos       = {-0.705,0.1,0.24},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --LINKE 6

        {
            pos       = {-0.705,0.1,0.43},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --LINKE 7

        {
            pos       = {-0.705,0.1,0.61},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --SPD 1
        {
            pos       = {-0.21,0.1,-0.505},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --SPD 2
        {
            pos       = {-0.21,0.1,-0.32},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --SPD 3
        {
            pos       = {-0.21,0.1,-0.13},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --SPD 4

        {
            pos       = {-0.21,0.1,0.055},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --SPD 5

        {
            pos       = {-0.21,0.1,0.24},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --SPD 6

        {
            pos       = {-0.21,0.1,0.43},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --SPD 7

        {
            pos       = {-0.21,0.1,0.61},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        
        --GRÜNE 1
        {
            pos       = {0.285,0.1,-0.505},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --GRÜNE 2
        {
            pos       = {0.285,0.1,-0.32},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --GRÜNE 3
        {
            pos       = {0.285,0.1,-0.13},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --GRÜNE 4

        {
            pos       = {0.285,0.1,0.055},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --GRÜNE 5

        {
            pos       = {0.285,0.1,0.24},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --GRÜNE 6

        {
            pos       = {0.285,0.1,0.43},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --GRÜNE 7

        {
            pos       = {0.285,0.1,0.61},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        -- CDU 1
        {
            pos       = {0.7825,0.1,-0.505},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --CDU 2
        {
            pos       = {0.7825,0.1,-0.32},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --CDU 3
        {
            pos       = {0.7825,0.1,-0.13},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --CDU 4

        {
            pos       = {0.7825,0.1,0.055},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --CDU 5

        {
            pos       = {0.7825,0.1,0.24},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --CDU 6

        {
            pos       = {0.7825,0.1,0.43},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --CDU 7

        {
            pos       = {0.7825,0.1,0.61},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        -- FDP 1
        {
            pos       = {1.276,0.1,-0.505},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --FDP 2
        {
            pos       = {1.276,0.1,-0.32},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --FDP 3
        {
            pos       = {1.276,0.1,-0.13},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --FDP 4

        {
            pos       = {1.276,0.1,0.055},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --FDP 5

        {
            pos       = {1.276,0.1,0.24},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --FDP 6

        {
            pos       = {1.276,0.1,0.43},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --FDP 7

        {
            pos       = {1.276,0.1,0.61},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        -- MARKETING TEXTBOXES

        --LINKE

        {
            pos       = {-0.705,0.1,0.91},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --SPD

        {
            pos       = {-0.21,0.1,0.91},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --GRÜNE

        {
            pos       = {0.285,0.1,0.91},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --CDU 

        {
            pos       = {0.7825,0.1,0.91},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --FDP 

        {
            pos       = {1.276,0.1,0.91},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        -- PP TEXTBOXES

        --LINKE

        {
            pos       = {-0.705,0.1,1.23},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --SPD

        {
            pos       = {-0.21,0.1,1.23},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --GRÜNE

        {
            pos       = {0.285,0.1,1.23},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --CDU 

        {
            pos       = {0.7825,0.1,1.23},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --FDP 

        {
            pos       = {1.276,0.1,1.23},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        -- AUCTION TEXTBOXES

        --LINKE

        {
            pos       = {-0.705,0.1,1.56},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --SPD

        {
            pos       = {-0.21,0.1,1.56},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --GRÜNE

        {
            pos       = {0.285,0.1,1.56},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --CDU 

        {
            pos       = {0.7825,0.1,1.56},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --FDP 

        {
            pos       = {1.276,0.1,1.56},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        -- AUCTION TEXTBOXES

        --LINKE

        {
            pos       = {-0.705,0.1,1.96},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --SPD

        {
            pos       = {-0.21,0.1,1.96},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --GRÜNE

        {
            pos       = {0.285,0.1,1.96},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --CDU 

        {
            pos       = {0.7825,0.1,1.96},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },

        --FDP 

        {
            pos       = {1.276,0.1,1.96},
            rows      = 1,
            width     = 2000,
            font_size = 600,
            label     = "Value",
            value     = "0",
            alignment = 3
        },
        --End of REGIONS textboxes
    }
}



--Lua beyond this point, I recommend doing something more fun with your life



--Save function
function updateSave()
    saved_data = JSON.encode(ref_buttonData)
    if disableSave==true then saved_data="" end
    self.script_state = saved_data
end

--Startup procedure
function onload(saved_data)
    if disableSave==true then saved_data="" end
    if saved_data ~= "" then
        local loaded_data = JSON.decode(saved_data)
        ref_buttonData = loaded_data
    else
        ref_buttonData = defaultButtonData
    end

    spawnedButtonCount = 0
    --createCheckbox()
    --createCounter()
    createTextbox()
end



--Click functions for buttons



--Checks or unchecks the given box
function click_checkbox(tableIndex, buttonIndex)
    if ref_buttonData.checkbox[tableIndex].state == true then
        ref_buttonData.checkbox[tableIndex].state = false
        self.editButton({index=buttonIndex, label=""})
    else
        ref_buttonData.checkbox[tableIndex].state = true
        self.editButton({index=buttonIndex, label=string.char(10008)})
    end
    updateSave()
end

--Applies value to given counter display
function click_counter(tableIndex, buttonIndex, amount)
    ref_buttonData.counter[tableIndex].value = ref_buttonData.counter[tableIndex].value + amount
    self.editButton({index=buttonIndex, label=ref_buttonData.counter[tableIndex].value})
    updateSave()
end

--Updates saved value for given text box
function click_textbox(i, value, selected)
    if selected == false then
        ref_buttonData.textbox[i].value = value
        updateSave()
    end
end

--Dud function for if you have a background on a counter
function click_none() end



--Button creation



--Makes checkboxes
function createCheckbox()
    for i, data in ipairs(ref_buttonData.checkbox) do
        --Sets up reference function
        local buttonNumber = spawnedButtonCount
        local funcName = "checkbox"..i
        local func = function() click_checkbox(i, buttonNumber) end
        self.setVar(funcName, func)
        --Sets up label
        local label = ""
        if data.state==true then label=string.char(10008) end
        --Creates button and counts it
        self.createButton({
            label=label, click_function=funcName, function_owner=self,
            position=data.pos, height=data.size, width=data.size,
            font_size=data.size, scale=buttonScale,
            color=buttonColor, font_color=buttonFontColor
        })
        spawnedButtonCount = spawnedButtonCount + 1
    end
end

--Makes counters
function createCounter()
    for i, data in ipairs(ref_buttonData.counter) do
        --Sets up display
        local displayNumber = spawnedButtonCount
        --Sets up label
        local label = data.value
        --Sets height/width for display
        local size = data.size
        if data.hideBG == true then size = 0 end
        --Creates button and counts it
        self.createButton({
            label=label, click_function="click_none", function_owner=self,
            position=data.pos, height=size, width=size,
            font_size=data.size, scale=buttonScale,
            color=buttonColor, font_color=buttonFontColor
        })
        spawnedButtonCount = spawnedButtonCount + 1

        --Sets up add 1
        local funcName = "counterAdd"..i
        local func = function() click_counter(i, displayNumber, 1) end
        self.setVar(funcName, func)
        --Sets up label
        local label = "+"
        --Sets up position
        local offsetDistance = (data.size/2 + data.size/4) * (buttonScale[1] * 0.002)
        local pos = {data.pos[1] + offsetDistance, data.pos[2], data.pos[3]}
        --Sets up size
        local size = data.size / 2
        --Creates button and counts it
        self.createButton({
            label=label, click_function=funcName, function_owner=self,
            position=pos, height=size, width=size,
            font_size=size, scale=buttonScale,
            color=buttonColor, font_color=buttonFontColor
        })
        spawnedButtonCount = spawnedButtonCount + 1

        --Sets up subtract 1
        local funcName = "counterSub"..i
        local func = function() click_counter(i, displayNumber, -1) end
        self.setVar(funcName, func)
        --Sets up label
        local label = "-"
        --Set up position
        local pos = {data.pos[1] - offsetDistance, data.pos[2], data.pos[3]}
        --Creates button and counts it
        self.createButton({
            label=label, click_function=funcName, function_owner=self,
            position=pos, height=size, width=size,
            font_size=size, scale=buttonScale,
            color=buttonColor, font_color=buttonFontColor
        })
        spawnedButtonCount = spawnedButtonCount + 1
    end
end

function createTextbox()
    for i, data in ipairs(ref_buttonData.textbox) do
        --Sets up reference function
        local funcName = "textbox"..i
        local func = function(_,_,val,sel) click_textbox(i,val,sel) end
        self.setVar(funcName, func)

        self.createInput({
            input_function = funcName,
            function_owner = self,
            label          = data.label,
            alignment      = data.alignment,
            position       = data.pos,
            scale          = buttonScale,
            width          = data.width,
            height         = (data.font_size*data.rows)+24,
            font_size      = data.font_size,
            color          = buttonColor,
            font_color     = buttonFontColor,
            value          = data.value,
        })
    end
end