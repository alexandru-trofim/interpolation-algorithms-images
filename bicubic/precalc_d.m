function [Ix, Iy, Ixy] = precalc_d(I)
    % =========================================================================
    % Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale
    % imaginii I pentru fiecare pixel al acesteia.
    % =========================================================================

    % Obtinem dimensiunea imaginii.
    [m n nr_colors] = size(I);

    % TODO: Tranforma matricea I in double.
      Img = double(I);
      Ix = zeros(m,n);
      Iy = zeros(m,n);
      Ixy = zeros(m,n);
    % TODO: Calculeaza matricea cu derivate fata de x Ix.
    for y = 1 : m
      for x = 1 : n
        if x>1 && x<n
          Ix(y,x) = fx(Img, x, y);
        endif
        if y>1 && y<m
          Iy(y,x) = fy(Img, x, y);
        endif
        if y>1 && y<m && x>1 && x<n
          Ixy(y,x) = fxy(Img, x, y);
        endif
      endfor
    endfor


    % TODO: Calculeaza matricea cu derivate fata de y Iy.

    % TODO: Calculeaza matricea cu derivate fata de xy Ixy.

endfunction
