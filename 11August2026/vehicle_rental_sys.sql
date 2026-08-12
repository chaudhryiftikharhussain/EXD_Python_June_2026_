-- Display appointment dates, patient names, and prescription notes.

SELECT appointment.appointment_date, patient.name, prescription.notes
FROM appointment
JOIN patient ON appointment.patient_id = patient.id
JOIN prescription ON prescription.appointment_id = appointment.id