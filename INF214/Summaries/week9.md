# Week 9

## Data Analysis

Is required because:

- Managers track daily transactions to evaluate performance.
- Strategies should be developed to meet origanisational goals using operational databases.
- Data Analysis provides valuable information about short-term evaluations and strategies.


## Business Intelligence

We look at business intelligence as two seperate things;

### Comprehensive, Cohesive, Integrated Tools And Processes

- Capture, collect, integrate, store and analyze data.
- Generate information to support business decision making.

### Framework That Allows Businesses To Transform

- Data into information
- Information into knowledge
- Knowledge into wisdom


## Business Intelligence Architecture

Is Composed of data, people, processes, technology and management of components.

It focuses on the strategic and tactical use of information.

Key Performance Indicatiors (KPI) are measurements that assess company's effectiveness or success in reaching goals.

It is worth noting that multiple tools from different vendors can be integrated into a single BI framework.

## Decision Supporting Data

- BI effectiveness depends on quality of data gathered at operational level.
- Operational data seldom well-suited for decision support tasks.
- Need reformat data in order to be useful for business intelligence.

## Operational Data

- Mostly stored in relational database.
- Optomised to support transactions representing daily operations.

## Comparison Of The two

Decision support differs from operational data because of it's time span, granularity and dimensionality.


## Database Requirements

- Specialised DBMS tailored to provide fast answers to complex queries.

Four main rquirements namely;
- Database schema.
- Data extraction and loading.
- End-user analytical interface.
- Database size.

Database schemas are complex data representations of aggregated and summarized data. Queries extract multidimensional time slices.

Data extraction and filtering supports different data sources namely:
- Flat Files.
- Hierarchical, network and related databases.
- Multiple vendors.
This process should also check for inconsistent data.

The end-user analytical interface is one of the most critical DSS DBMS components that permits the user to navigate data as well as simplify and accelerate decision-making process.

DMBS must support very large databases. Wal-mart had 260 TB of data in one of its data warehouses.


## The Data warehouses

- Integrated, subject-orientated, time-varient and non volatile collection of data which provides support for decision making.

- Usually read-only. Optomised for analysis as well as queries.

- Requires time, money and managerial effort to create.

## Data Mart

- Small, single-subject data warehouse subset.
- More manageable data set than data warehouse.
- Provides decision support to small groups of people.
- Lower cost and lower implementation than data warehouses.

## Extract, Transform, Load (ETL) Process

Data is processed and viewed as part of multidimensional structure.

The process is augmented by the following:

- Advanced data representation functions
- Advanced data aggregation, consolidation and classification of functions.
- Advanced computational functions.
- Advanced data modeling functions.


## Client/Server Architecture

Provides a framework for design, development and implementation of new systems.

- Enables OLAP system to be divided into several components that define its Architecture.
- OLAP is designed to meet ease-of-use as well as flexibility requirements.


## OLAP Architecture

The operational characteristics is divided into three main modules:

- GUI
- Analytical Processing Logic
- Data-processing logic

It is designed to use both operational and data warehouse data. Usually OLAP and data warehouses are interrelated and complementary.

OLAP systems merge data warehouse and data mart approaches.

# ROLAP (Relational OLAP)

Provides extensions to OLAP namely:

- Multidimensional data schema support within RDBMS.
- Data access language and query performance optomised for multidimensional data.
- Support for very large databases (VLDBs)

# MOLAP (Multidimensional OLAP)

Extends functionality of OLAP to multidimensional database management systems ( MDBMSs)

They can:

- MBDBMS end users visualize stored data as a 3D cube.
- Data cubes can grow to be n dimensions, becoming hypercubes.
- To speec access, data cubes are held in memory in a cube cache.
