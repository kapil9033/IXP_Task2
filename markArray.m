function markArray(Xdata,Ydata,Array, Color,cnt)

    [~,clm]=size(Array{1});
    for count=1:clm
        if count~=1
                text( Xdata(Array{1}(count)), Ydata(Array{1}(count)),'o','FontSize',10,'Color',[Color{1}(1) Color{1}(2) Color{1}(3)]);
        else
                text( Xdata(Array{1}(count)), Ydata(Array{1}(count)),num2str(cnt),'FontSize',40);
        end
    end
    
    hold on
end