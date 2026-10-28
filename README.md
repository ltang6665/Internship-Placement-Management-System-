# Internship Placement Management System

A Java command-line application for managing internship placements between students, company representatives, and career center staff. The project was developed for NTU's SC2002 Object-Oriented Design and Programming course and uses CSV files for persistence.

## Features

- Students can browse and filter opportunities, submit applications, respond to offers, and request withdrawals.
- Company representatives can manage internship listings and review student applications.
- Career center staff can review company registrations, internship submissions, and withdrawal requests, and generate placement reports.
- User accounts, opportunities, applications, and requests are loaded from and saved to CSV files.

## Run the application

Requirements: JDK 17 or newer.

On Windows, run `run.bat` from a terminal or double-click it in File Explorer. The script compiles the Java sources into `bin/` and starts the CLI:

```bat
run.bat
```

The sample data is stored under `IPMS/`. The application writes changes back to those CSV files, so restore the sample files from Git if you want to reset the demo data.

## Demo accounts

These accounts are included in the sample CSV data:

| Role | Username | Password |
| --- | --- | --- |
| Student | `chong004` | `happy1234!` |
| Company representative | `ltang` | `happy1234!` |
| Career center staff | `sng001` | `happy1234!` |

## Architecture

The code is organized around the Boundary-Control-Entity (BCE) pattern. CLI pages provide the boundary, user management and system classes coordinate workflows, and model classes represent users, internships, applications, and withdrawal requests. CSV-backed data access keeps persistence within the original assignment constraints.

The diagrams are design references created during the project. They may not reflect every detail of the final implementation.

### Class diagram

![Class diagram](Diagrams/UML%20Diagrams/Class_Diagram_Final.drawio.png)

### Sequence diagram

![Sequence diagram](Diagrams/UML%20Diagrams/SequenceDiagram.drawio.png)

## Repository layout

```text
IPMS/       Java source and sample CSV data
Diagrams/   UML diagram source files and rendered images
run.bat     Windows compile-and-run script
```

## Project context

This is an educational OOP project. It demonstrates role-based workflows, object-oriented models, and flat-file persistence; it is not intended as a production placement platform.
