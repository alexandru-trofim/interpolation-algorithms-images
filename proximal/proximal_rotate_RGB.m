function out = proximal_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica Interpolarea Proximala pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================

   % TODO: Extrage canalul rosu al imaginii.
    red = img(:,:,1);
    green = img(:,:,2);
    blue = img(:,:,3);
    % TODO: Extrage canalul verde al imaginii.

    % TODO: Extrage canalul albastru al imaginii.

    % TODO: Aplic? functia proximal pe cele 3 canale ale imaginii.
    redOut = proximal_rotate(red,rotation_angle);
    greenOut = proximal_rotate(green,rotation_angle);
    blueOut = proximal_rotate(blue,rotation_angle);
    % TODO: Formeaza imaginea finala concaten�nd cele 3 canale de culori.
    out(:,:,1) = redOut;
    out(:,:,2) = greenOut;
    out(:,:,3) = blueOut;

endfunction
