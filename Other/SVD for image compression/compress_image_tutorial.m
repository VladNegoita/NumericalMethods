function [] = compress_image_tutorial(name)
  % 
  I = imread(name);

  normalSize = prod(size(I));

  R = double(I(:, :, 1));
  G = double(I(:, :, 2));
  B = double(I(:, :, 3));

  [Ur, Sr, Vr] = svd(R, "econ");
  [Ug, Sg, Vg] = svd(G, "econ");
  [Ub, Sb, Vb] = svd(B, "econ");

  for i = 1:50:500
    
    newR = Ur(:, 1:i) * Sr(1:i, 1:i) * Vr(:, 1:i)';
    newG = Ug(:, 1:i) * Sg(1:i, 1:i) * Vg(:, 1:i)';
    newB = Ub(:, 1:i) * Sb(1:i, 1:i) * Vb(:, 1:i)';
    
    compressedSize = 3 * (prod(size(Ur(:, 1:i))) + prod(size(Sr(1:i, 1:i))) + prod(size(Vr(:, 1:i))));
    compressionRate = normalSize / compressedSize;
    
    newI = cat(3, uint8(newR), uint8(newG), uint8(newB));
    
    imshow(newI);
    title(compressionRate);
    pause(1.25);
    
  endfor
  
endfunction