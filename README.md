1)In this project I wanted to demonstrate the solution of retriving data from a packetof string and store them at the desired place of database. 

2)To run this project you just have to do the git clone inside your xampp/htdocs repository. command,"git clone https://github.com/SahariarIslm/Aq-task-recruitment.git"

3)Next, go to the project directory, open the command prompt and type "php artisan migrate"

4)Then you mught want to see the data tables first! 

5)I've created two different datatables with pagination for 2 tasks 

6)Task-1.Aq-task: Packet Data Show: "http://localhost/Aq-task-recruitment/public/process-packet-data-show"

7)Task-2.Aq-task: Multi-phase Packet Data Show: "http://localhost/Aq-task-recruitment/public/process-multiphase-packet-data-show"

8)But to insert packets in this datatables you need to install postman 

9)Task-1.Aq-task: Packet Data insert: "http://localhost/Aq-task-recruitment/public/api/process-packet-data/1122|20230313902025|1|1686646969.531|30|101-152-1.13|102-152-90.9|103-152-94.8|104-152-93.6|105-152-99.9|106-152-95.9|107-152-99.9|108-152-89.1|109-152-88.4|110-152-93.9|111-152-90.5|112-152-97.4|113-152-98.1|114-152-97.6|115-152-99.9|116-152-99.9|117-152-0|118-152-99.9|119-152-0|120-152-0|121-152-97.7|122-152-99.9|123-152-99.8|124-152-0|125-152-94.2|126-152-95.7|127-152-97.6|128-152-0|129-152-99.9|130-152-0"

10)Task-2.1.Aq-task: Three-phase Packet Data insert: "http://localhost/Aq-task-recruitment/public/api/process-multiphase-packet-data/1122|20230313902025|1|1677999172|1|100|1|3|12|V1_99-V2_98-V3_97|A1_99-A2_98-A3_97|W1_99-W2_98-W3_97|E1_99-E2_98-E3_97"

11)Task-2.2.Aq-task: Single-phase Packet Data insert: "http://localhost/Aq-task-recruitment/public/api/process-multiphase-packet-data/1122|20230313902025|1|1677999172|1|100|1|1|12|V1_97|A1_91|W1_9.7|E1_25.6"