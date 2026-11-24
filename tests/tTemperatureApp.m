classdef tTemperatureApp < matlab.uitest.TestCase
    % App tests for temperatureApp.

    methods (Test)
        function convertsOnButtonPress(testCase)
            fig = temperatureApp;
            testCase.addTeardown(@delete, fig);
            testCase.type(findobj(fig, "Tag", "celsius"), 100);
            testCase.press(findobj(fig, "Tag", "convert"));
            testCase.verifyEqual(findobj(fig, "Tag", "result").Text, '212.0 F');
        end
    end
end
