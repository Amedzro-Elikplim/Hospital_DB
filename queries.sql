--Index medical history foreign key
CREATE INDEX medical_history_asc ON invoices(medical_history_id ASC);

--Index invoice_id foreign key
CREATE INDEX invoice_id_asc ON invoice_items(invoice_id ASC);

--Index treatment_id forein key
CREATE INDEX treatment_id_asc ON invoice_items(treatment_id ASC);
