with globalTypes; use globalTypes;

package body patient is
   type patientType is private;
   function newPatient(id:idtype; age:globaltypes.ageType) return patientType;
   function ageOf(P:patientType) return globaltypes.ageType;
   function newPatient(id: globaltypes.idType; age: globaltypes.ageType;
                       spec: globaltypes.specialType; emerg: boolean) return patientType is
   begin
     return (id, age, spec, emerg);
   end newPatient;

   function idof(patient:patientType) return idType is
   begin
      return patient.id;
   end idof;

   function specialtyOf(patient:patientType) return globaltypes.specialType is
   begin
      return patient.specialty;
   end specialtyOf;

   function emergencyOf(patient:patientType) return boolean is
   begin
      return patient.emergency;
   end emergencyOf;

end patient;
