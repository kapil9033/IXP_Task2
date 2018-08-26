function [X_pieces,Y_pieces]= makePieces(X_range,Y_range,XData,YData)

    X_pieces(X_range+1)=0;
    Y_pieces(Y_range+1)=0;
    
    X_pieces(1)=1;
    Y_pieces(1)=1;
    
    for count=1:X_range
        Xpiece=(XData/X_range);
        X_pieces(count+1)=Xpiece*count;
    end
    
    for count=1:Y_range
        Ypiece=(YData/Y_range);
        Y_pieces(count+1)=Ypiece*count;
    end
    
%     ttl_pieces=X_range*Y_range;

    
%     for xcount=1:(X_range)
%         for ycount=1:(Y_range)
%             pieces{xcount,ycount}=[X_pieces(xcount) X_pieces(xcount+1) Y_pieces(ycount) Y_pieces(ycount+1)];
%         end
%     end
    
    

end