clear all
clc
%%
%This part will import data from TXT file, create 2 array name Xdata, Ydata
%in Double datatypes.
txtData=importdata('mousePos.txt');
[rw,clm]=size(txtData);
Xdata(rw)=0;
Ydata(rw)=0;
Time(rw)=0;
for count=1:rw
    Data=char(txtData(count));
    Xdata(count)=str2double (Data(( (strfind(Data,'x:'))+2 : strfind(Data,'y:')-1 ) ) ) ;
    Ydata(count)=str2double (Data(( (strfind(Data,'y:'))+2 :  strfind(Data,'screen:')-1 )  ) );
    %Time(count)=str2double (Data(( (strfind(Data,'Timestamp:'))+10 :  strfind(Data,', Mouse')-1 )  ) ); 
end
%%
%Read and show image
 Img=imread('Desktop.png');
 H=imshow(Img);
 hold on
%%
%Task Heatmap
%Idea:
%(1) It will divide, Whole picture into require Pieces.
%(2) It will create Color specs according to Pieces
%(3) It will rearrange whole Pieces by Size
%(4) Max size will get Bright color and min size will get dark.
X_range=3;% It will create Column
Y_range=3;% It will create Row.
[X_pieces,Y_pieces]= makePieces(X_range,Y_range,H.XData(2),H.YData(2));
[Pieces,id]=findPointsinPiece(X_pieces,Y_pieces,Xdata,Ydata);
Colorspecs=crtColorspecs((X_range*Y_range));
colorcnt=1;
for count=(X_range*Y_range):-1:1
    markArray(Xdata,Ydata,Pieces(id(count)),Colorspecs(colorcnt),colorcnt);
    colorcnt=colorcnt+1;
end
