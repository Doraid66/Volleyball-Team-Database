# Volleyball Team Database Project

## About This Project

This project was developed as part of a **group project** for the course **COMP 353 (Database Systems)** at **Concordia University**.  
The goal was to design and implement a relational database system, applying best practices in database modeling, normalization, and SQL scripting.

The database models a club management system, supporting members, families, locations, payments, teams, and training formations.

---

## Project Structure

- **Tables**:

  - `Location`
  - `club_member`
  - `family_member`
  - `secondary_family_member`
  - `club_member_location`
  - `family_location`
  - `formation`
  - `formation_assignment`
  - `notification_log`
  - `payments`
  - `personnel`
  - `teams`
  - `working_at`

- **Features**:
  - Normalized relational schema with appropriate foreign keys and constraints
  - Example `CHECK` constraints (e.g., location type must be 'Head' or 'Branch')
  - Sample `INSERT` data for testing
  - Use of cascading deletes and referential integrity
  - Example sample queries and simple transaction logic (optional if you add queries.sql)

---

## How to Set Up

1. Create a new database in your MySQL server.
2. Run `vollyball_Team.sql` to create the necessary tables and constraints.
3. (Optional) Populate the database with additional sample data or modify it for your needs.
4. (Optional) Explore or add custom queries based on the relational structure.
