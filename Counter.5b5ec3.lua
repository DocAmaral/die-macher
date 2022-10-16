function onLoad()
    scale = {0.5, 0.5, 0.5}
    fontSizeFor5 = 40 * 2
    fontSizeFor10 = 30 * 2
    fontSizeFor100 = 30 * 2   

    params = {
        click_function = "minus5",
        function_owner = self,
        label          = "-5",
        position       = {0.22, 0.23, -0.42},
        rotation       = {0, 180, 0},
        width          = 150 * 2,
        height         = 60 * 2,
        font_size      = fontSizeFor5,
        scale          = scale,
        color          = {0.18, 0.18, 0.18},
        font_color     = {1, 1, 1},
    }
    self.createButton(params)

    params = {
        click_function = "plus5",
        function_owner = self,
        label          = "+5",
        position       = {-0.22, 0.23, -0.42},
        rotation       = {0, 180, 0},
        width          = 150 * 2,
        height         = 60 * 2,
        font_size      = fontSizeFor5,
        scale          = scale,
        color          = {0.18, 0.18, 0.18},
        font_color     = {1, 1, 1},
    }
    self.createButton(params)

    params = {
        click_function = "minus10",
        function_owner = self,
        label          = "-10",
        position       = {0.32, 0.23, -0.58},
        rotation       = {0, 180, 0},
        width          = 80 * 2,
        height         = 60 * 2,
        font_size      = fontSizeFor10,
        scale          = scale,
        color          = {0.18, 0.18, 0.18},
        font_color     = {1, 1, 1},
    }
    self.createButton(params)

    params = {
        click_function = "minus100",
        function_owner = self,
        label          = "-100",
        position       = {0.12, 0.23, -0.58},
        rotation       = {0, 180, 0},
        width          = 90 * 2,
        height         = 60 * 2,
        font_size      = fontSizeFor100,
        scale          = scale,
        color          = {0.18, 0.18, 0.18},
        font_color     = {1, 1, 1},
    }
    self.createButton(params)

    params = {
        click_function = "plus10",
        function_owner = self,
        label          = "+10",
        position       = {-0.32, 0.23, -0.58},
        rotation       = {0, 180, 0},
        width          = 80 * 2,
        height         = 60 * 2,
        font_size      = fontSizeFor10,
        scale          = scale,
        color          = {0.18, 0.18, 0.18},
        font_color     = {1, 1, 1},
    }
    self.createButton(params)

    params = {
        click_function = "plus100",
        function_owner = self,
        label          = "+100",
        position       = {-0.12, 0.23, -0.58},
        rotation       = {0, 180, 0},
        width          = 90 * 2,
        height         = 60 * 2,
        font_size      = fontSizeFor100,
        scale          = scale,
        color          = {0.18, 0.18, 0.18},
        font_color     = {1, 1, 1},
    }
    self.createButton(params)
end

function minus5()
    n = -5
    self.Counter.setValue(self.Counter.getValue() + n)
end

function plus5()
    n = 5
    self.Counter.setValue(self.Counter.getValue() + n)
end

function minus10()
    n = -10
    self.Counter.setValue(self.Counter.getValue() + n)
end

function plus10()
    n = 10
    self.Counter.setValue(self.Counter.getValue() + n)
end

function minus100()
    n = -100
    self.Counter.setValue(self.Counter.getValue() + n)
end

function plus100()
    n = 100
    self.Counter.setValue(self.Counter.getValue() + n)
end