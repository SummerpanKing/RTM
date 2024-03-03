import cv2
from skimage import io



img = io.imread(r"/media/xiapanwang/新加卷/xiapanwang/Workspace/IMG_1148.JPG")
img = cv2.resize(img, [300, 450], interpolation=cv2.INTER_AREA)
io.imsave(r"/media/xiapanwang/新加卷/xiapanwang/Workspace/xpw.JPG", img)

print("OK")
