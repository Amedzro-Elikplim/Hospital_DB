CREATE TABLE patients (
    id INT PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    date_of_birth DATE
);

CREATE TABLE history_treatment_id (
  medical_history_id INT PRIMARY KEY,
  treatment_id INT PRIMARY KEY
);

CREATE TABLE medical_histories (
    id INT PRIMARY KEY,
    FOREIGN KEY (id) REFERENCES history_treatment_id(medical_history_id),
    admitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    patient_id INT,
    FOREIGN KEY (patient_id) REFERENCES patients(id)
);

CREATE TABLE invoices (
    id INT PRIMARY KEY,
    generated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    medical_history_id INT,
    FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id)
);

CREATE TABLE treatment (
    id INT PRIMARY KEY,
    FOREIGN KEY (id) REFERENCES history_treatment_id(treatment_id),
    type VARCHAR(250),
    name VARCHAR(250)
);

CREATE TABLE invoice_items (
    id INT PRIMARY KEY,
    unit_price DECIMAL(6,2),
    quantity INT NOT NULL,
    total_price DECIMAL(6,2),
    invoice_id INT,
    FOREIGN KEY (invoice_id) REFERENCES invoices(id),
    treatment_id INT,
    FOREIGN KEY (treatment_id) REFERENCES treatment(id)
);



