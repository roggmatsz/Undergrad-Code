with globalTypes; use globalTypes;

package patient is
   type patientType is private;
   function newPatient(id:idtype; age:globaltypes.ageType) return patientType;
   function ageOf(P:patientType) return globaltypes.ageType;
   function newPatient(id: globaltypes.idType; age: globaltypes.ageType;
                       spec: globaltypes.specialType; emerg: boolean) return patientType;
   function idof(patient:patientType) return idType;
   function specialtyOf(patient:patientType) return globaltypes.specialType;
   function emergencyOf(patient:patientType) return boolean;

private
   type patientType is record
      ID: idType;
      Age: ageType;
      specialty: specialType;
      emergency: boolean;
   end record;
end patient;
