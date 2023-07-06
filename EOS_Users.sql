create database EOS_Users

create table Users(
	UserName nvarchar(100) primary key,
	Password nvarchar(100) not null,
	RollNumber nvarchar(100) not null,
	FullName nvarchar(100) not null
)

create table Subjects(
	SubjectID varchar(30) primary key,
	SubjectName varchar(1000)
)

create table ExamCode(
	ExamCode varchar(100) primary key,
	SubjectID varchar(30) not null foreign key references Subjects(SubjectID),
	Duration time not null,
	NumOfQues int
)

create table CEA201(
	ID int primary key,
	SubjectID varchar(30) not null foreign key references Subjects(SubjectID),
	Question nvarchar(1000) not null,
	OptionA nvarchar(1000),
	OptionB nvarchar(1000),
	OptionC nvarchar(1000),
	OptionD nvarchar(1000),
	Answer nvarchar(1000) not null
)

create table IOT102(
	ID int primary key,
	SubjectID varchar(30) not null foreign key references Subjects(SubjectID),
	Question nvarchar(1000) not null,
	OptionA nvarchar(1000),
	OptionB nvarchar(1000),
	OptionC nvarchar(1000),
	OptionD nvarchar(1000),
	Answer nvarchar(1000) not null
)

create table OSG202(
	ID int primary key,
	SubjectID varchar(30) not null foreign key references Subjects(SubjectID),
	Question nvarchar(1000) not null,
	OptionA nvarchar(1000),
	OptionB nvarchar(1000),
	OptionC nvarchar(1000),
	OptionD nvarchar(1000),
	Answer nvarchar(1000) not null
)

insert into Users(UserName, Password, RollNumber, FullName)
values
('VuNAHE160453','123','HE160453','Nguyễn Anh Vũ'),
('QuangLVHE160545','456','HE160545','Lê Văn Quang'),
('NamNHHE160781','789','HE160781','Nguyễn Hoàng Nam'),
('NghiaDMHE160858','dfgf','HE160858','Đỗ Minh Nghĩa'),
('TuanTAHE161117','g434esr','HE161117','Trần Anh Tuấn'),
('SonTTHE161148','g4ew3','HE161148','Trương Tuấn Sơn'),
('NhatNHHE161207','sdf47','HE161207','Nguyễn Hoàng Nhật'),
('VuNHHE161239','jyt64','HE161239','Nguyễn Huy Vũ'),
('AnhTTHE161427','iut443','HE161427','Thạch Tuấn Anh'),
('AnhNTHE161474','grw23','HE161474','Nguyễn Tuấn Anh'),
('ManhTTHE161599','bctr5','HE161599','Trần Tiến Mạnh'),
('HungNVHE161607','h645','HE161607','Ngô Văn Hùng'),
('QuangPNHE163157','htr34','HE163157','Phạm Ngọc Quang'),
('DangHHHE163301','hr53','HE163301','Hoa Hải Đăng'),
('KhanhVDDHE163454','rt543','HE163454','Văn Đình Duy Khánh'),
('PhuocDTHE163486','hytr53','HE163486','Dương Thiện Phước'),
('HieuNHMHE163650','gi93','HE163650','Nguyễn Hoàng Minh Hiếu'),
('LamTTHE163687','onvur83','HE163687','Trần Thanh Lâm'),
('HungTMHE163748','nb53','HE163748','Trần Mạnh Hùng'),
('AnhNTHE163764','bne34','HE163764','Nguyễn Tuấn Anh')

insert into Subjects(SubjectID, SubjectName)
values
('IOT102', 'Internet of Things'),
('MAS291', 'Statistics and Probability'),
('JPD123', 'Elementary Japanese 1-A1.2'),
('DBI202', 'Introduction to Databases'),
('CSI104', 'Introduction to Computer Science'),
('CEA201', 'Computer Organization and Architecture'),
('SSG104', 'Communication and In-Group Working Skills'),
('OSG202', 'Operating Systems')

insert into ExamCode(ExamCode, SubjectID, Duration, NumOfQues)
values
('IOT102_C2_FE_SP23','IOT102','01:00:00', '50'),
('OSG202_FE_FA22','OSG202','01:00:00', '50'),
('CSI104_FE_SU22','CSI104','00:30:00', '20'),
('JPD123_SP2023_ME','JPD123','00:30:00', '20'),
('IOT102_C1_FE_SP22','IOT102','01:00:00', '50'),
('CEA201_FE_SU22','CEA201','00:30:00', '20')

insert into CEA201(ID, SubjectID, Question, OptionA, OptionB, OptionC, OptionD, Answer)
values
(1, 'CEA201', 'Architectural attributes include __________ .', 'I/O mechanisms', 'control signals', 'memory technology used','interfaces', 'I/O mechanisms'),
(2, 'CEA201', 'The __________ moves data between the computer and its external environment.', 'data transport', 'I/O', 'register','CPU interconnection', 'I/O'),
(3, 'CEA201', 'A common example of system interconnection is by means of a __________.', 'register', 'system bus', 'data transport','control device', 'system bus'),
(4, 'CEA201', '_________ provide storage internal to the CPU.', 'system interconnection', 'CPU interconnection', 'memory technology used','processor', 'system interconnection'),
(5, 'CEA201', 'The __________ performs the computer data processing', 'Registers', 'CPU interconnection', 'ALU','system bus', 'ALU'),
(6, 'CEA201', 'The _________ was the world first general-purpose electronic digital computer.', 'UNIVAC', 'MARK IV', 'ENIAC','Hollerith Counting Machine', 'ENIAC'),
(7, 'CEA201', 'The Electronic Numerical Integrator and Computer project was a response to U.S. needs during _________.', ' the Civil War', 'the French-American War', 'World War I','World War II', 'World War II'),
(8, 'CEA201', 'The ENIAC used __________.', 'vacuum tubes', 'control signals', 'IAS','integrated circuits', 'vacuum tubes'),
(9, 'CEA201', 'The ENIAC is an example of a _________ generation computer.', 'first', 'second', 'fourth','third', 'first'),
(10, 'CEA201', 'The __________ interprets the instructions in memory and causes them to be executed.', 'main memory', 'control unit', 'I/O','arithmetic and logic unit', 'control unit'),
(11, 'CEA201', 'The memory of the IAS consists of 1000 storage locations called __________.', 'opcodes', ' wafers', 'VLSIs','words', 'words'),
(12, 'CEA201', 'The __________ contains the 8-bit opcode instruction being executed.', 'memory buffer register', '. instruction buffer register', ' instruction register','memory address register', ' instruction register'),
(13, 'CEA201', 'Second generation computers used __________.', 'Transistors', 'integrated circuit', 'Vacuum tubes','large-scale integration', ' Transistors'),
(14, 'CEA201', 'During the _________ the opcode of the next instruction is loaded into the IR and the address portion is loaded into the MAR.', ' fetch cycle', ' instruction cycle', 'clock cycle','execute cycle', ' fetch cycle'),
(15, 'CEA201', 'The use of multiple processors on the same chip is referred to as __________ and provides the potential to increase performance without increasing the clock rate.', ' multicore', 'GPU', 'data channels','MPC', ' multicore'),
(16, 'CEA201', 'The __________ are used to designate the source or destination of the data on the data bus.', 'system lines', 'data lines', 'control lines','address lines', 'address lines'),
(17, 'CEA201', 'The von Neumann architecture is based on which concept?', 'data and instructions are stored in a single read-write memory', 'the contents of this memory are addressable by location', 'execution occurs in a sequential fashion','all of the above', 'all of the above'),
(18, 'CEA201', 'The TL supports which of the following address spaces?', 'memory', 'I/O', 'message','all of the above', 'all of the above'),
(19, 'CEA201', 'The data lines provide a path for moving data among system modules and are collectively called the', 'control bus', 'address bus', 'data bus','system bus', 'data bus'),
(20, 'CEA201', 'The processing required for a single instruction is called a(n) __________ cycle.', 'The processing required for a single instruction is called a(n) __________ cycle.', 'fetch', 'instruction','packet', 'instruction')

insert into IOT102(ID, SubjectID, Question, OptionA, OptionB, OptionC, OptionD, Answer)
values
(1, 'IOT102', 'When you have a potential IoT idea you want to develop properly, what must you first define?', '.Its Unique Value Proposition', 'Problem it sets out to solve', 'Route to market','How it will work', 'Problem it sets out to solve'),
(2, 'IOT102', 'What is Fog computing?', 'It is a type of computing that enhances P2P applications', 'It is a type of computing that sends controller data to a sensor.', 'It is a type of computing that disperses servers and services globally in distributed data centers.','It is a type of computing where services are hosted where they are used, such as at the network edge or with end devices.', 'It is a type of computing where services are hosted where they are used, such as at the network edge or with end devices.'),
(3, 'IOT102', 'What is an example of cloud computing?', 'A continuous interaction between people, processes, data, and things.', 'A service that offers on-demand access to shared resources.', 'A network infrastructure that spans a large geographic area.','An architectural style of the World Wide Web.', 'A service that offers on-demand access to shared resources.'),
(4, 'IOT102', 'What is used to uniquely identify devices connected to the Internet?', 'gateway address', 'IP address', 'device name','URL', 'IP address'),
(5,'IOT102','Which category finds an increase in applications targeting health and fitness?','Personal IoT','Group IoT','Community IoT','Industrial IoT','Personal IoT'),
(6, 'IOT102', 'Which word or phrase most accurately sums up the main benefit of IoT technology?', 'Accuracy', 'Efficiencies', 'Energy use','Response time', 'Efficiencies'),
(7, 'IOT102', 'Which of the following disruptions - caused by vehicles becoming fully autonomous - were the people surveyed most worried about?', 'Reduced private ownership of cars.', 'Less traffic lights on roads.', 'Reduced number of driving jobs.','Less space needed for parking.', 'Reduced number of driving jobs.'),
(8, 'IOT102', 'Which of the following functions does NOT apply to a typical data centre services?', 'Data storage', '.Data management', 'Data security','Data generation', 'Data generation'),
(9, 'IOT102', 'Which terminology deals with the excitation or stimulus applied to a system from an external source, for the generation of an output?', 'Input signal', 'Output signal', 'Error signal','nalogue sign', 'Input signal'),
(10, 'IOT102', 'Which challenge comes under securing the information?', 'Signaling', 'Security', 'Presence detection','Power consumption', 'Security'),
(11, 'IOT102', 'Which challenge comes under IoT devices, reliable bidirectional signaling.', 'Signaling', 'Security', 'Presence detection','Power consumption', 'Signaling'),
(12, 'IOT102', 'Which challenge comes when we use many devices on the same network?', 'Signaling', 'Security', 'Presence detection','Power consumption', 'Power consumption'),
(13, 'IOT102', 'Which of the following issues are considered in IoT?', 'Security Issue', 'Reliablity Issue', 'Standard Issue','All issues', 'All issues'),
(14, 'IOT102', 'IoT stands for __________', 'Industrial Internet of Things', 'Internet Internet of Things', 'Intelligence Internet of Things','Internal Internet of Things', 'Industrial Internet of Things'),
(15, 'IOT102', 'Which possibility ensures load balancing and peak levelling of energy consumption?', 'Transportation and logistics', 'Energy and utilities', 'Automotive','Connected supply chain', 'Automotive'),
(16, 'IOT102', 'Which possibility connects the production line to suppliers?', 'Transportation and logistics', 'Energy and utilities', 'Automotive','Connected supply chain', 'Connected supply chain'),
(17, 'IOT102', 'Which possibility is highest contributor to cost overhead for manufacturing facilities?', 'Transportation and logistics', 'Energy and utilities', 'Plant control flow operation','Energy management and resource optimization', 'Energy management and resource optimization'),
(18, 'IOT102', '_________ will enable the humans to access, control and manage the operation.', '.IoT', 'Bigdata', 'Network','Communication', '.IoT'),
(19, 'IOT102', 'In _________ the embedded devices and objects working under IoT are resource constrained.', 'Health', '.Industry', 'Home','Information system', 'Information system'),
(20, 'IOT102', 'Managing of resources can be done by implementing ________', 'Protocols', 'Algorithms', 'Networks','Protocols and algorithms', 'Protocols and algorithms')


insert into OSG202(ID, SubjectID, Question, OptionA, OptionB, OptionC, OptionD, Answer)
values
(1, 'OSG202', 'Random Access memory:', 'Is typically faster than cache memory', ' Is volatile', 'Can only be read sequentially','Stores all the files on the computer', ' Is volatile'),
(2, 'OSG202', 'The four main structural elements of a computer system are:', 'Processor, Registers, I/O Modules, Main Memory', 'Processor, Registers, Main Memory, System Bus', 'Processor, Main Memory, I/O Modules, System Bus','None of the above', 'Processor, Main Memory, I/O Modules, System Bus'),
(3, 'OSG202', 'What is the main characteristic of embedded operating system?', 'Multiple CPU', 'Time-sharing', 'Many I/O devices','Restriction of memory size, speed of CPU, screen size, powers', 'Restriction of memory size, speed of CPU, screen size, powers'),
(4, 'OSG202', 'Which is the difference between personal computers and mainframe computers?', 'Personal computers are always interactive', 'Mainframe computers are mostly batch systems with many users', 'Protection is much more important on mainframe computers','All of the above', 'All of the above'),
(5, 'OSG202', 'What is not correct about system calls?', 'A system call allows a user process to assess and execute operating system functions inside the kernel.', ' User programs use system calls to invoke operating system services', 'In terms of performance, using system calls is better than using procedure calls','Every system call involves overhead due to context switch', 'In terms of performance, using system calls is better than using procedure calls'),
(6, 'OSG202', 'The general role of an operating system is to:', 'Act as an interface between various computers', 'Provide a set of services to system users', 'Manage files for application programs','None of the above', 'None of the above'),
(7, 'OSG202', 'A Control/Status register that contains the address of the next instruction to be fetched is called the:', 'Program Counter (PC)', 'Program Status Word (PSW)', 'All of the above','Instruction Register (IR)', 'Program Counter (PC)'),
(8, 'OSG202', ' What is not a main function of an operating system?', 'Provide the users with an extended (virtual) machine', 'Manage the I/O devices', 'Provide user interfaces','Support virtual memory', 'Provide user interfaces'),
(9, 'OSG202', 'Which of the following instructions should be allowed in user mode?', 'Disable all interrupts', 'Read the time-of-day clock', 'Set the time-of-day clock','Change the memory map', 'Read the time-of-day clock'),
(10, 'OSG202', 'MS-DOS is a example of ....', ' Monolithic system', 'Layered System', 'Virtual Machine','Client-server model', ' Monolithic system'),
(11, 'OSG202', 'Which of the following statements is correct about Shortest Job First', ' Avoid Starvation', 'Minimize average waiting time', 'Both a and b','None of the above', 'Minimize average waiting time'),
(12, 'OSG202', 'Which of the following process state transitions are legal?', 'waiting -> running', 'running -> ready', 'ready -> terminated','waiting -> terminated', 'running -> ready'),
(13, 'OSG202', 'What is Software proposal in the solution of Mutual exclusion with Busy waiting', 'Lock Variables', 'Strict Alternation', 'All of the above','Peterson Solution', 'Lock Variables'),
(14, 'OSG202', 'Which of the following is a preemptive scheduling algorithm', 'FCFS', 'Shortest Job First', 'Round Robin','None of the above', 'Round Robin'),
(15, 'OSG202', 'Which of the following cannot be shared among different threads of a process?', 'Process code', 'File handles', 'Process data','Stack', 'Stack'),
(16, 'OSG202', 'Which is not a goal of a scheduling algorithm for batch systems ?', 'irness', 'Throughput', 'Turnaround time','Response time', 'Response time'),
(17, 'OSG202', 'Which of the following synchronization mechanisms does not rely on busy-waiting ?', 'Lock variables', 'Strict alternation', 'Strict alternation','Semaphores', 'Semaphores'),
(18, 'OSG202', 'A page fault means that we referenced a page', ' that was outside the memory boundaries', ' with an incorrect I/O request', 'that was not in secondary storage','that was not in main memory', 'that was not in main memory'),
(19, 'OSG202', 'Which of the following is appropriate to release page table and pages?', 'Process creation', 'Process execution', 'Page fault time','Process termination time', 'Process termination time'),
(20,'OSG202','The page table for each process maintains:','The frame location for each page of the process','The page location for each frame of the process','The physical memory location of the process','None of the above','The frame location for each page of the process')
