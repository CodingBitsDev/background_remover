# Background Remove
Removes Background rom Webcam image for any cam service.

# Requirements
For the script to work you need to create a loopback camera first.

```
sudo apt install v4l2loopback-dkms

sudo modprobe -r v4l2loopback
sudo modprobe v4l2loopback devices=1 video_nr=20 card_label="v4l2loopback" exclusive_caps=1
```

The script itself depends on
`cv2` , `mediapipe`, `numpy` and `pyfakewebcam`.

