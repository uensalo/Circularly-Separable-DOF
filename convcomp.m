function out = convcomp(img, kernel_re, kernel_im, kernel_w)
kernel = kernel_re + 1j * kernel_im;
img_out = convrgb(img, kernel, 'same');
img_out = convrgb(img_out, transpose(kernel), 'same');
out = kernel_w(1) * real(img_out) + kernel_w(2) * imag(img_out);