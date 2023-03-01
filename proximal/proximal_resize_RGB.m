function out = proximal_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img astfel �nc�t aceasta save fie de dimensiune p x q.
    % Imaginea img este colorata.
    % =========================================================================

    % TODO: Extrage canalul rosu al imaginii.
   % TODO: Extrage canalul rosu al imaginii.
    red = img(:,:,1);
    green = img(:,:,2);
    blue = img(:,:,3);
    % TODO: Extrage canalul verde al imaginii.

    % TODO: Extrage canalul albastru al imaginii.

    % TODO: Aplic? functia proximal pe cele 3 canale ale imaginii.
    redOut = proximal_resize(red,p,q);
    greenOut = proximal_resize(green,p,q);
    blueOut = proximal_resize(blue,p,q);
    % TODO: Formeaza imaginea finala concaten�nd cele 3 canale de culori.
    out(:,:,1) = redOut;
    out(:,:,2) = greenOut;
    out(:,:,3) = blueOut;

endfunction
