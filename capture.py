 
import pyscreenshot
image = pyscreenshot.grab(bbox=(120, 240, 600, 600))
image.save("images/save.jpg")