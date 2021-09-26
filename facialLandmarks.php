<?php
shell_exec('python capture.py');
shell_exec('python detect.py --shape-predictor shape_predictor_68_face_landmarks.dat --image images/save.jpg');
 ?>