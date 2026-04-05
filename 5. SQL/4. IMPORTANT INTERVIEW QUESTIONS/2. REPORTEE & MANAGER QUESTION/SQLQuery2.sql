select * from ReportingStructure

select b.employeename [Reportee],A.employeename [Manager]
from
ReportingStructure A inner join reportingstructure B
on a.employeeid = b.managerid

union all

select employeename,null [Manager] from reportingstructure
where managerid is null