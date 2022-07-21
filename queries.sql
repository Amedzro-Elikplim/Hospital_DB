--Index patient id
CREATE INDEX patient_id_asc ON medical_histories (patient_id);

--Index medical history foreign key
CREATE INDEX medical_history_asc ON invoices(medical_history_id ASC);

--Index invoice_id foreign key
CREATE INDEX invoice_id_asc ON invoice_items(invoice_id ASC);

--Index treatment_id foreign key
CREATE INDEX treatment_id_asc ON invoice_items(treatment_id ASC);

--Index treatment_fk 
CREATE INDEX treatment_fk_asc ON history_treatment_id(treatment_id ASC);

--Index medical_history_fk
CREATE INDEX medical_history_fk_asc ON history_treatment_id(medical_history_id ASC);

