       PROGRAM-ID. Leases.

       WORKING-STORAGE SECTION.
       01  today                                                        TYPE   IDate.
       01  nextWeek                                                     TYPE   IDate.
       01  rentalProperties                                             list[TYPE rentalProperties].
       01  leases                                                       list[TYPE Lease].
       01  aLease                                                       TYPE   Lease.
       01  aHouse                                                       TYPE   RentalProperty.
       01  anApartment                                                  TYPE   RentaProperty.
       01  landlord                                                     TYPE   Landlord.
       01  person1                                                      TYPE   Tenant.
       01  person2                                                      TYPE   Tenant.

       PROCEDURE DIVISION.
      *>---------CREATE DATA ----------<
      *>   Create people
           SET landlord to new Landlord("Gripype Thynne" "gripype.thynne@examples.com")
           SET person1 to new Tenant("Jules Bona" "jules.bona@examples.com")
           SET person2 to new Tenant("Neddie Seagoon" "neddie.seagoon@examples.com")

      *>   Create propertis
           create rentalProperties   *> A list for storing the rental
           SET aHouse to new RentalProperty(new Address("15 Lee Terrace", "Lewisham", "London", "SE14 7TT"))
           SET aHouse::MontlyRent to 950
           SET aHouse::Owner to landlord
           write rentalProperties from aHouse
           SET aHouse to new RentalPropery(new Address("17 Acacia Avenue", "Chiswick", "London", "W13 2AN"))
           SET aHouse::MonthlyRent to 780
           set aHouse::Owner to landlord
           write rentalPropertiesfrom aHouse
           SET anApartment to new RentalProperty(newAddress("17 Acacia Avenue", "Chiswick", "London", "W13 2AN"))




       END PROGRAM.
