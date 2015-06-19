with patient; use patient;
package body waitingArea is
   procedure assignPatient(patient: in patientType;
                           waitingArea: in out waitingAreaType) is
   begin
      if emergencyOf(patient) then
         enqueue(patient, waitingArea.EmergencyQueue);
      else
         enqueue(patient, waitingArea.regularQueue);
   end assignPatient;
   function canAcceptPatient(patient: patientType;
                             waitingArea: waitingAreaType) return boolean is
   begin
      if emergencyOf(patient) and not is_full(waitingArea.EmergencyQueue) then
         return not is_full(waitingArea.EmergencyQueue);
      else
         return not is_full(waitingArea.RegularQueue);
      end if;
   end canAcceptPatient;
   procedure retrieveNextPatient(waitingArea: in out waitingAreaType;
                                 patient: out patientType) is
   begin
      if not is_empty(waitingArea.EmergencyQueue) then
         patient := front_of(waitingArea.EmergencyQueue);
         dequeue(waitingArea.EmergencyQueue);
      else
         patient := front_of(waitingArea.regularQueue);
         dequeue(waitingArea.regularQueue);
      end if;
   end retrieveNextPatient;

end waitingArea;
