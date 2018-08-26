function [Piece, id]=findPointsinPiece(X_Pieces,Y_Pieces,Xdata,Ydata)
    [~,Xclm]=size(Xdata);
    cnt=1;
    [~,Xpc]=size(X_Pieces);
    [~,Ypc]=size(Y_Pieces);
    
    for Xpc_count=1:Xpc
        for Ypc_count=1:Ypc
                for count=1:Xclm
                    if (X_Pieces(Xpc_count)<=Xdata(count)) && (Xdata(count)<=X_Pieces(Xpc_count+1)) && (Y_Pieces(Ypc_count)<=Ydata(count)) && (Ydata(count)<=Y_Pieces(Ypc_count+1))
                        Piece{Xpc_count,Ypc_count}(cnt)=count;
                        cnt=cnt+1;
                    end
                end
             cnt=1;
        end
    end
    
    Piece=reshape(Piece,1,[]);
    [~,id] = sort( cellfun( @length, Piece));
    
    
    
end