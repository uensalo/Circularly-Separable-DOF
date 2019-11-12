function out = convrgb(img, kernelP, cfg)
kernel = gpuArray(kernelP);
redChannel = gpuArray(img(:, :, 1));
greenChannel = gpuArray(img(:, :, 2));
blueChannel = gpuArray(img(:, :, 3));

r = conv2(double(redChannel), kernel, cfg);
g = conv2(double(greenChannel), kernel, cfg);
b = conv2(double(blueChannel), kernel, cfg);

out(:,:,1) = r;
out(:,:,2) = g;
out(:,:,3) = b;
