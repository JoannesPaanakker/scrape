xml.instruct!
xml.properties do
  @properties.each do |property|
    xml.property do
      xml.clientName current_user.comp_name
      xml.clientContact current_user.first_name + current_user.last_name
      xml.clientContactEmail current_user.email
      xml.clientTelephone current_user.phone_number
      xml.propertyid property.id
      xml.lastUpdateDate "2018-03-01"
      xml.category "Residential For Sale"
      xml.Address do
        xml.number ""
        xml.street ""
        xml.postcode ""
        xml.location ""
        xml.subRegion ""
        xml.region ""
        xml.country ""
      end
      xml.Price do
        xml.prefix ""
        xml.price property.price
        xml.currency ""
        xml.frequency ""
        xml.RentalBond ""
        xml.RentalAdminFee ""
        xml.availableDate ""
        xml.status "Available"
      end
      xml.Description do
        xml.propertyType "Apartment"
        xml.Tenure ""
        xml.tenanted "No"
        xml.bedrooms "1"
        xml.bedroomRange "0"
        xml.sleeps "0"
        xml.fullBathrooms "1"
        xml.halfBathrooms "0"
        xml.ensuites "0"
        xml.receptionRooms "1"
        xml.furnishings "furnished"
        xml.title "1 Bedroom Apartment For Sale"
        xml.shortDescription property.description
        xml.newBuild ""
        xml.yearBuilt "2005"
        xml.numberOfFloors "2"
        xml.floorNumber "3"
        xml.condition "good"
        xml.heating ""
        xml.elevator "No"
        xml.fittedKitchen "Yes"
        xml.assistedLiving ""
        xml.wheelchairFriendly "No"
        xml.balcony "Yes"
        xml.terrace ""
        xml.swimmingPool "No"
        xml.orientation ""
        xml.garages ""
        xml.offRoadParking ""
        xml.carports ""
        xml.openhouses
        xml.openhouse
        xml.openhouse_start "2018-06-17 15:45:00"
        xml.openhouse_end "2018-06-17 18:45:00"
        xml.auctionTime ""
        xml.auctionPlace ""
        xml.FloorSize
        xml.floorSize "59"
        xml.floorSizeUnits "sq meters"
        xml.FloorSize ""
        xml.PlotSize ""
        xml.plotSize "59"
        xml.plotSizeUnit "sq meters"
        xml.Features ""
        xml.features
        xml.Feature1 "Swimming Pool"
        xml.Feature2 "Storeroom"
        xml.Feature3 "Garden"
        xml.Feature4 "Garage"
        xml.Feature5 "Part furnished"
        xml.Feature6 "Close to public transport"
        xml.Feature7 ""
        xml.Feature8 ""
        xml.Feature9 ""
        xml.Feature10 ""
        xml.Description
      end
      xml.images do
        xml.image("number" => "1") do
          xml.image property.photo
        end
        xml.link do
          xml.dataSource ""
        end
      end
      xml.ListingContact do
        xml.companyName "Real Estate Agent"
        xml.companyOffice "England"
        xml.companyBuildingNameNumber ""
        xml.companyStreet ""
        xml.companyTownCity "London"
        xml.companyRegion "South west"
        xml.companyPostcode ""
        xml.companyCountry "United Kingdom"
        xml.companyWebsite "www.realestateagent.co.uk"
        xml.companyLogo ""
        xml.agent1FirstName "Jim"
        xml.agent1LastName "Smith"
        xml.agent1Phone "00440207612000"
        xml.agent1Mobile ""
        xml.agent1Fax ""
        xml.agent1Email "j.smith@realestateagent.co.uk"
        xml.agent1Photo ""
        xml.agent2FirstName ""
        xml.agent2LastName ""
        xml.agent2Phone ""
        xml.agent2Mobile ""
        xml.agent2Fax ""
        xml.agent2Email ""
        xml.agent2Photo ""
        xml.ListingContact
      end
      xml.property do
        xml.Propertyid "102"
        xml.lastUpdateDate "2018-03-17"
        xml.category "Residential For Rent"
      end
      xml.Address do
        xml.number ""
        xml.street ""
        xml.postcode ""
        xml.location ""
        xml.subRegion ""
        xml.region ""
        xml.country ""
      end
      xml.Price do
        xml.prefix ""
        xml.price property.price
        xml.currency ""
        xml.frequency ""
        xml.RentalBond ""
        xml.RentalAdminFee ""
        xml.availableDate ""
        xml.status "Available"
      end
      xml.Description do
        xml.propertyType "Apartment"
        xml.Tenure ""
        xml.tenanted "No"
        xml.bedrooms "1"
        xml.bedroomRange "0"
        xml.sleeps "0"
        xml.fullBathrooms "1"
        xml.halfBathrooms "0"
        xml.ensuites "0"
        xml.receptionRooms "1"
        xml.furnishings "furnished"
        xml.title "1 Bedroom Apartment For Sale"
        xml.shortDescription property.description
        xml.newBuild ""
        xml.yearBuilt "2005"
        xml.numberOfFloors "2"
        xml.floorNumber "3"
        xml.condition "good"
        xml.heating ""
        xml.elevator "No"
        xml.fittedKitchen "Yes"
        xml.assistedLiving ""
        xml.wheelchairFriendly "No"
        xml.balcony "Yes"
        xml.terrace ""
        xml.swimmingPool "No"
        xml.orientation ""
        xml.garages ""
        xml.offRoadParking ""
        xml.carports ""
        xml.openhouses
        xml.openhouse
        xml.openhouse_start "2018-06-17 15:45:00"
        xml.openhouse_end "2018-06-17 18:45:00"
        xml.auctionTime ""
        xml.auctionPlace ""
        xml.FloorSize
        xml.floorSize "59"
        xml.floorSizeUnits "sq meters"
        xml.FloorSize ""
        xml.PlotSize ""
        xml.plotSize "59"
        xml.plotSizeUnit "sq meters"
        xml.Features ""
        xml.features
        xml.Feature1 "Swimming Pool"
        xml.Feature2 "Storeroom"
        xml.Feature3 "Garden"
        xml.Feature4 "Garage"
        xml.Feature5 "Part furnished"
        xml.Feature6 "Close to public transport"
        xml.Feature7 ""
        xml.Feature8 ""
        xml.Feature9 ""
        xml.Feature10 ""
        xml.Description
      end
      xml.images do
        xml.image("number" => "1") do
          xml.image property.photo
        end
        xml.link do
          xml.dataSource ""
        end
      end
    end
  end

end
