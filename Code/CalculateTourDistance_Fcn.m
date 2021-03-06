function TourDistance = CalculateTourDistance_Fcn(Tour,CityDistanceMatrix,NCity)
%Purpose : compute the total distance for a tour
%mehran ghandehary 2010
Tour = [Tour Tour(1)];

TourDistance = 0;

for ii = 1:NCity
    CurrentCity = Tour(ii);
    NextCity = Tour(ii+1);
    if ii+1==NCity+1
        NextCity = Tour(1);
    end
    TourDistance = TourDistance + CityDistanceMatrix(CurrentCity,NextCity);
end
