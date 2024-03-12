function [binary] = audioToBinary(wav,l)
    while mod(length(wav),l) ~=0
        wav(length(wav)+1) = 0;
    end
    characters = dec2bin(wav);
    char_reshaped = reshape(characters', l,[]);
    binary = bin2dec(char_reshaped');
end