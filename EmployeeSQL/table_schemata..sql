CREATE TABLE "department" (
    "dept_no" varchar   NOT NULL,
    "dept_name" varchar   NOT NULL,
    CONSTRAINT "pk_department" PRIMARY KEY (
        "dept_no"
     )
);

select * from department

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dep_no" varchar   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no","dep_no"
     )
);

select * from dept_emp

CREATE TABLE "dept_manager" (
    "dept_no" varchar   NOT NULL,
    "emp_no" int   NOT NULL
);

select * from dept_manager

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title" VarChar   NOT NULL,
    "birth_date" Date   NOT NULL,
    "first_name" VarChar   NOT NULL,
    "last_name" VarChar   NOT NULL,
    "sex" VarChar   NOT NULL,
    "hire_date" Date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

select * from employees

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

select * from salaries

CREATE TABLE "title" (
    "title_id" varchar   NOT NULL,
    "title" varchar   NOT NULL,
    CONSTRAINT "pk_title" PRIMARY KEY (
        "title_id"
     )
);

select * from title

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");
ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dep_no" FOREIGN KEY("dep_no")
REFERENCES "department" ("dept_no");
ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "department" ("dept_no");
ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");
ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title" FOREIGN KEY("emp_title")
REFERENCES "title" ("title_id");
ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");


