function out = proximal_2x2_RGB(img, STEP = 0.1)
    % ==============================================================================================
    % Aplica Interpolare Proximala pe imaginea 2 x 2 definita img cu puncte intermediare echidistante.
    % img este o imagine colorata RGB -Red, Green, Blue.
    % =============================================================================================

    % TODO: Extrage canalul rosu al imaginii.
    red = img(:,:,1);
    green = img(:,:,2);
    blue = img(:,:,3);
    % TODO: Extrage canalul verde al imaginii.

    % TODO: Extrage canalul albastru al imaginii.

    % TODO: Aplic? functia proximal pe cele 3 canale ale imaginii.
    redOut = proximal_2x2(red,STEP);
    greenOut = proximal_2x2(green,STEP);
    blueOut = proximal_2x2(blue,STEP);
    % TODO: Formeaza imaginea finala concaten�nd cele 3 canale de culori.
    out(:,:,1) = redOut;
    out(:,:,2) = greenOut;
    out(:,:,3) = blueOut;
 endfunction
