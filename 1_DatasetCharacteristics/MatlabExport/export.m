data = field1List

% Erstelle den Hauptordner für den Export
mainFolder = 'ExportedData';
if ~exist(mainFolder, 'dir')
    mkdir(mainFolder);
end

T = struct2table(data)

% Extrahieren der eindeutigen Participant IDs
uniqueParticipantIDs = unique(T.ParticipantID);

% Definieren Sie den Pfad, wo die CSV-Dateien gespeichert werden sollen
% Zum Beispiel:
outputFolderPath = mainFolder;

% Schleife über die eindeutigen Participant IDs
for i = 1:numel(uniqueParticipantIDs)
    % Extrahieren der aktuellen Participant ID
    currentID = uniqueParticipantIDs(i);
    
    % Filtern der Zeilen des Tables für die aktuelle Participant ID
    rows = T.ParticipantID == currentID;
    
    % Extrahieren der Daten für die aktuelle Participant ID
    participantData = T(rows, :);
    participantFolder = sprintf('Participant_%d', i);
    % Extrahieren und Exportieren der Daten in separate CSV-Dateien
    for j = 1:height(participantData)
        testFolder = fullfile(mainFolder, participantFolder, sprintf('Test%d', j));
        if ~exist(testFolder, 'dir')
            mkdir(testFolder);
        end

        % Extrahieren der Daten aus jeder Zeile
        gazeData = participantData{j, 2};
        pupilData = participantData{j, 3};
        blinksData = participantData{j, 4};
        annotationsData = participantData{j, 5};
        
        % Definieren der Dateinamen für die CSV-Dateien
        gazeFilename = fullfile(testFolder, ['Participant_', num2str(currentID), '_Gaze_', num2str(j), '.csv']);
        pupilFilename = fullfile(testFolder, ['Participant_', num2str(currentID), '_Pupil_', num2str(j), '.csv']);
        blinksFilename = fullfile(testFolder, ['Participant_', num2str(currentID), '_Blinks_', num2str(j), '.csv']);
        annotationsFilename = fullfile(testFolder, ['Participant_', num2str(currentID), '_Annotations_', num2str(j), '.csv']);
        
        % Exportieren der Daten in CSV-Dateien
        writetable(gazeData{1}, gazeFilename);
        writetable(pupilData{1}, pupilFilename);
        writetable(blinksData{1}, blinksFilename);
        writetable(annotationsData{1}, annotationsFilename);
    end
end