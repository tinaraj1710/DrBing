# import the necessary packages
from imutils.video import VideoStream
from imutils import face_utils
import datetime
import argparse
import imutils
import time
import dlib
import cv2

FACIAL_LANDMARKS_IDXS = OrderedDict([
	("mouth", (48, 68)),
	("right_eye", (36, 42)),
	("left_eye", (42, 48)),
	("nose", (27, 35)),
])
# construct the argument parse and parse the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-p", "--shape-predictor", required=True,
	help="path to facial landmark predictor")
ap.add_argument("-r", "--picamera", type=int, default=-1,
	help="whether or not the Raspberry Pi camera should be used")
args = vars(ap.parse_args())
# initialize dlib's face detector (HOG-based) and then create
# the facial landmark predictor
print("[INFO] loading facial landmark predictor...")
detector = dlib.get_frontal_face_detector()
predictor = dlib.shape_predictor(args["shape_predictor"])
# initialize the video stream and allow the cammera sensor to warmup
print("[INFO] camera sensor warming up...")
vs = VideoStream(usePiCamera=args["picamera"] > 0).start()
time.sleep(2.0)
# loop over the frames from the video stream
while True:
	# grab the frame from the threaded video stream, resize it to
	# have a maximum width of 400 pixels, and convert it to
	# grayscale
	frame = vs.read()
	frame = imutils.resize(frame, width=400)
	gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
	# detect faces in the grayscale frame
	rects = detector(gray, 1)
		# loop over the face detections
	# for rect in rects:
	# 	# determine the facial landmarks for the face region, then
	# 	# convert the facial landmark (x, y)-coordinates to a NumPy
	# 	# array
	# 	shape = predictor(gray, rect)
	# 	shape = face_utils.shape_to_np(shape)
	# 	# loop over the (x, y)-coordinates for the facial landmarks
	# 	# and draw them on the image
	# 	for (x, y) in shape:
	# 		cv2.circle(frame, (x, y), 1, (0, 0, 255), -1)
	for (i, rect) in enumerate(rects):
		# determine the facial landmarks for the face region, then
		# convert the landmark (x, y)-coordinates to a NumPy array
		shape = predictor(gray, rect)
		shape = face_utils.shape_to_np(shape)
		# loop over the face parts individually
		for (name, (i, j)) in FACIAL_LANDMARKS_IDXS.items():
			# clone the original image so we can draw on it, then
			# display the name of the face part on the image
			clone = frame.copy()
			cv2.putText(clone, name, (10, 30), cv2.FONT_HERSHEY_SIMPLEX,
				0.7, (0, 0, 255), 2)
			# loop over the subset of facial landmarks, drawing the
			# specific face part
			for (x, y) in shape[i:j]:
				cv2.circle(clone, (x, y), 1, (0, 0, 255), -1)
			# extract the ROI of the face region as a separate image
			(x, y, w, h) = cv2.boundingRect(np.array([shape[i:j]]))
			roi = frame[y:y + h, x:x + w]
			roi = imutils.resize(roi, width=250, inter=cv2.INTER_CUBIC)
			# show the particular face part
			cv2.imshow("ROI", roi)
			cv2.imshow("Image", clone)
			cv2.waitKey(0)
		# visualize all facial landmarks with a transparent overlay
		output = face_utils.visualize_facial_landmarks(frame, shape)
		cv2.imshow("Frame", output)
		cv2.waitKey(0)
	# show the frame
	cv2.imshow("Frame", frame)
	key = cv2.waitKey(1) & 0xFF
 
	# if the `q` key was pressed, break from the loop
	if key == ord("q"):
		break
# do a bit of cleanup
cv2.destroyAllWindows()
vs.stop()