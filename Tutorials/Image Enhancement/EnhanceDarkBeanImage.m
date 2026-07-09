darkbean = imread("darkbean.jpg");
darkbean_imadjust = imadjust(darkbean);
darkbean_histeq = histeq(darkbean);
darkbean_adapthisteq = adapthisteq(darkbean);

montage({darkbean,darkbean_imadjust,darkbean_histeq,darkbean_adapthisteq},"Size",[1 4])
title("Original Image and Enhanced Images using imadjust, histeq, and adapthisteq")


