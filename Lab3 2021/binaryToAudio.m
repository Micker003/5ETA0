function wav = binaryToAudio(pr)
    pr = dec2bin(pr);
    temp = reshape(pr', 1,[])';
    temp = reshape(temp, 8, []);
    temp = num2str(temp');
    wav = bin2dec(temp);
    wav = uint8(wav);
end