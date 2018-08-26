function [Colorspecs]=crtColorspecs(ttlPieces)
    Red=2/ttlPieces;
    Yello=2/ttlPieces;
    
    for count=1:ttlPieces
        if count<=((ttlPieces/2)+1)
            Colorspecs(count)={[ (1-(Red*(count-1))) 0 0]};
        else
            Colorspecs(count)={[ 1 (1-(Yello*(count-(ttlPieces/2)-1))) 0]};
        end
    end
end