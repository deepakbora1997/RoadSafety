function code2()

clear all; close all; clc; imaqreset;
hCamera = webcam;
hShow = imshow(zeros(480,640,3));
ref_vid_img = snapshot(hCamera);
frames = 2000;
for i=1:frames
    vid_img = snapshot(hCamera);
    object = code(ref_vid_img,vid_img);
    set(hShow,'CData',object);
    drawnow;
end
end