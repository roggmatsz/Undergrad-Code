with patient; use patient;
with bounded_queue_adt;
package waitingArea is
   type waitingAreaType is limited private;
   function canAcceptPatient(patient: patientType;
                             waitingArea: waitingAreaType) return boolean;
   procedure assignPatient(patient: in patientType;
                           waitingArea: in out waitingAreaType);
   procedure retrieveNextPatient(waitingArea: in out waitingAreaType;
                                 patient: out patientType);
private
   package patientQueue is new bounded_Queue_Adt(PatientType);
   use patientQueue;
   type waitingAreaType is record
      EmergencyQueue: queue_type(10);
      regularQueue: queue_type(10);
   end record;

end waitingarea;
