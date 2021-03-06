function [Off1,Off2]=CrossOver_Fcn(Par1,Par2)
% purpose : CrossOver function for genetic algorithm
%mehran ghandehary 2010

CrossPoint=round(numel(Par1)/2);
R=randperm(numel(Par1));
%divide parents inti tow parts
Par11=Par1(1:CrossPoint);
Par12=Par1(CrossPoint+1:end);
 
Par21=Par2(1:CrossPoint);
Par22=Par2(CrossPoint+1:end);

Off1=[Par11 Par22];
Off2=[Par21 Par12];

for ii=CrossPoint+1:numel(Off1)
    ismember(Off1(ii), Off1(1:ii-1)) ;
    for jj=1:20
        if ~ismember(R(jj),Off1(1:ii));
            Off1(ii)=R(jj);
        end
    end
end
    
for ii=CrossPoint+1:numel(Off1)
    ismember(Off2(ii), Off2(1:ii-1)) ;
    for jj=1:20
        if ~ismember(R(jj),Off2(1:ii));
            Off2(ii)=R(jj);
        end
    end
end