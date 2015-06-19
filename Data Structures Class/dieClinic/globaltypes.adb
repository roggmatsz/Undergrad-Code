package GlobalTypes is

   subtype IDType is String(1..9);
   subtype RoomNumberType is Integer range 1..100;
   subtype AgeType is Integer range 1..125;
   type SpecialtyType is (PED, GEN, INT, CAR, SUR, OBS, PSY, NEU, ORT, DER, OPT, ENT);

end GlobalTypes;
