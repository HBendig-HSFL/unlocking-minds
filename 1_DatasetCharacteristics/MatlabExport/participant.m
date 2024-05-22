% Initialisierung der leeren Zelle für das Ergebnis
numRows = size(Data, 2);
numCols = size(Data(1).subject_info, 2);
resultList = cell(numRows, numCols);

% Durchlaufe jedes Element des äußeren Structs
for i = 1:numRows
    % Extrahiere das innere Struct aus dem aktuellen Element des äußeren Structs
    currentTable = Data(i).subject_info;
    
    newRow = cell(1, numCols); % Verwende eine Zelle, um verschiedene Datentypen zu unterstützen
    % Extrahiere die Werte aus der Tabelle und speichere sie in der Ergebnisliste
    for j = 1:numCols
        newRow{j} = currentTable{1, j}; % Direkter Zugriff auf die Werte
    end

    resultList(i, :) = newRow; % Zuweisung in einer separaten Zeile
end

% Wandle die Zellen in eine Matrix um
resultArray = cellfun(@string, resultList, 'UniformOutput', false);

% Ergebnisarray anzeigen
disp(resultArray);

% Erstelle eine fortlaufende ID-Spalte
idColumn = (1:size(resultArray, 1))';

% Wandle die IDs in eine Zelle um
idCell = num2cell(idColumn);

% Füge die neue ID-Spalte zur resultierenden Liste hinzu
resultArrayWithID = horzcat(idCell, resultArray);

% Ergebnisarray mit ID anzeigen
disp(resultArrayWithID);

resultTable = array2table(resultArrayWithID, 'VariableNames', {'ID', 'VisualAcuity_logMAR_', 'Gender', 'Age', 'Education'}); % Füge die Namen der Spalten hinzu

writetable(resultTable, 'participants.csv');