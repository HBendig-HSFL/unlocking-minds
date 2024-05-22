% Initialisierung der leeren Zelle für das Ergebnis
% numRows = size(Data, 2);
% numCols = size(Data(1).task, 2);

%task_struct = Data.task(:)

% Extrahiere das erste Feld als Liste
field1List = {Data.task}; % Feld 1 als Zellarray extrahieren

% Umwandlung der Zellarrays in normale Arrays (optional)
field1List = cell2mat(field1List); 


% Erstelle eine fortlaufende ID-Spalte
idColumn = (1:numel(field1List))';

% Füge die neue ID-Spalte zur Liste hinzu
for i = 1:numel(field1List)
    field1List(i).ParticipantID = idColumn(i);
end

field1List = orderfields(field1List, {'ParticipantID', 'gaze', 'pupil', 'blinks', 'annotation'});



% Extrahiere die IDs aus der Struktur
IDs = [field1List.ParticipantID];

% Neue ID zuweisen
newIDs = repelem(1:numel(IDs)/4, 4);

% Aktualisiere die IDs in der Struktur
for i = 1:numel(field1List)
    field1List(i).ParticipantID = newIDs(i);
end

% Ergebnis anzeigen
disp(field1List);