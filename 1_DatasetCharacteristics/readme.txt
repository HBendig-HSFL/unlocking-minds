---Title---

COLET: A Dataset for Cognitive Workload Estimation based on Eye-tracking

---Contributors---

Emmanouil Ktistakis,Institute of Computer Science, Foundation for Research and Technology Hellas (FORTH) and the Laboratory of Optics and Vision, School of Medicine, University of Crete, GR-710 03 Heraklion, Greece
Vasileios Skaramagkas, Institute of Computer Science, Foundation for Research and Technology Hellas (FORTH), GR-700 13 Heraklion, Crete, Greece, ORCID: 0000-0002-3279-8016
Dimitris Manousos, Institute of Computer Science, Foundation for Research and Technology Hellas (FORTH), GR-700 13 Heraklion, Crete, Greece
Nikolaos S. Tachos, Department of Biomedical Research, Institute of Molecular Biology and Biotechnology, FORTH, GR-451 15, Ioannina, Greece and the Department of Materials Science and Engineering, Unit of Medical Technology and Intelligent Information Systems, University of Ioannina, GR-451 10, Ioannina, Greece
Evanthia Tripoliti, Department of Materials Science and Engineering, Unit of Medical Technology and Intelligent Information Systems, University of Ioannina, GR-451 10, Ioannina, Greece
Dimitrios I. Fotiadis, Department of Biomedical Research, Institute of Molecular Biology and Biotechnology, FORTH, GR-451 15, Ioannina, Greece and the Department of Materials Science and Engineering, Unit of Medical Technology and Intelligent Information Systems, University of Ioannina, GR-451 10, Ioannina, Greece
Manolis Tsiknakis, Institute of Computer Science, Foundation for Research and Technology Hellas (FORTH) and the Department of Electrical and Computer Engineering, Hellenic Mediterranean University, GR-710 04 Heraklion, Crete, Greece


---Corresponding Authors---

Vasileios Skaramagkas, vskaramagkas96@gmail.com
Emmanouil Ktistakis, mankti@ics.forth.gr


---DOI---

10.2139/ssrn.4059768 (temporary)

---database Description---

Database including eye movements from 47 participants as they solved puzzles involving visual search tasks of varying complexity and duration.
Participants rated their performance based on NASA RTLX index scale.

The uploaded files include:
1) "data.mat": the database in Matlab cell and struct-type format.
2) "tasks" folder: A folder containing the 21 tasks shown.
3) "readme.txt": a text file providing more information on the database structure.


Part of the dataset was used in the work accepted for publication in: 10.2139/ssrn.4059768


Please refer to the above mentioned article for more information on the data acquisition protocol.


---database Structure---

"data.mat": A matlab workspace file containing 'data' 1x47 cell-vector, which expands to
47 structs, each containing information and recordings from a single subject involved in the 4 tasks.

Version 1:

Each data struct contains the following three fields:

a) data{#}.task{i}

where i = [1,4] and is the task number (please refer to the respective publication for more info on the tasks)

Struct including the following subject information in struct format:

task{i}.gaze --> Gaze related metrics recorded from the eye tracker for each of the 4 total tasks (gaze_timestamp, world_index, confidence, norm_pos_x, norm_pos_y, base_data, gaze_point_3d_x, 
									gaze_point_3d_y, gaze_point_3d_z, eye_center0_3d_x, eye_center0_3d_y, eye_center0_3d_z, gaze_normal0_x, gaze_normal0_y, gaze_normal0_z, 
									eye_center1_3d_x, eye_center1_3d_y, eye_center1_3d_z, gaze_normal1_x, gaze_normal1_y, gaze_normal1_z)

task{i}.pupil --> Pupil related metrics recorded from the eye tracker for each of the 4 total tasks (pupil_timestamp, world_index, eye_id, confidence, norm_pos_x, norm_pos_y, diameter, method,
 									ellipse_center_x, ellipse_center_y, ellipse_axis_a, ellipse_axis_b, ellipse_angle, diameter_3d, model_confidence, model_id, sphere_center_x, 
									sphere_center_y, sphere_center_z, sphere_radius, circle_3d_center_x, circle_3d_center_y, circle_3d_center_z, circle_3d_normal_x, circle_3d_normal_y, 
									circle_3d_normal_z, circle_3d_radius, theta, phi, projected_sphere_center_x,projected_sphere_center_y, projected_sphere_axis_a, projected_sphere_axis_b, 
									projected_sphere_angle)

task{i}.blinks --> Blink related metrics recorded from the eye tracker for each of the 4 total tasks (id, start_timestamp, duration, end_timestamp, start_frame_index, index, end_frame_index, confidence,
								        filter_response, base_data)

task{i}.annotation --> NASA RTLX scores for each of the 4 total tasks

For more info regarding the recordings from Pupil Core visit: https://docs.pupil-labs.com/core/software/pupil-capture/


b) data{#}.subject_info

Struct including general subject information:

1) Visual acuity: measured binocularly in distance of 0.80cm (logMAR)

2) Gender ('F': Female, 'M': Male)  

3) Age (years) 

4) Education level (years)


c) "images" folder: Folder containing the images used in the experiment

1 --> bowling_balls
2 --> candles
3 --> chandelier
4 --> classroom
5 --> garage
6 --> handles
7 --> kitchen
8 --> light
9 --> paintings_1
10 --> paintings_2
11 --> pc_screens
12 --> pillows
13 --> poof
14 --> pool
15 --> seats_1
16 --> seats_2
17 --> shoes
18 --> students
19 --> towels
20 --> water
21 --> windows

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
For more information, please refer to the following article:

Ktistakis, E., Skaramagkas, V., Manousos, D., Tachos, N. S., Tripoliti, E., Fotiadis, D. I., & Tsiknakis, M. (2022). Colet: A dataset for cognitive workload estimation based on eye-tracking. Computer Methods and Programs in Biomedicine, 106989. https://doi.org/10.1016/j.cmpb.2022.106989

Last Update: 2022/06/07