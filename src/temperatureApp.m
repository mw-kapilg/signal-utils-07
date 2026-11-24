function fig = temperatureApp
%TEMPERATUREAPP Small app that converts Celsius to Fahrenheit.
%   FIG = TEMPERATUREAPP opens the app and returns its figure.

fig = uifigure(Name="Temperature Converter");
g = uigridlayout(fig, [3 1]);
celsius = uieditfield(g, "numeric", Tag="celsius");
result = uilabel(g, Text="", Tag="result");
result.Layout.Row = 3;
button = uibutton(g, Text="Convert", Tag="convert", ...
    ButtonPushedFcn=@(~,~) set(result, "Text", ...
    sprintf("%.1f F", convertTemperature(celsius.Value, "C", "F"))));
button.Layout.Row = 2;
end
