SELECT COUNT(reservation.carID)AS 'COUNT',reservation.carID,car.brand,car.model,car.typelabel FROM `reservation` 
    INNER JOIN car ON reservation.carID=car.carID
    GROUP BY carID