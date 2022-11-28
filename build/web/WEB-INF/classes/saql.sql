select factura, poder, identificacion, situacion, curp, estadoDoc, tenencia, baja, tarjeta, polizaDoc, comprobante,
idRegistro, numSiniestro, poliza, marca, modelo, numSerie,estado, fechaCarga, estacionProceso,estatusCliente
from documentosaprobados, infosiniestro, infoauto, estadoproceso,fechasseguimiento as fs where fs.fkidRegistro=idRegistro
and idRegistro=infoauto.fkidRegistro and idRegistro=fkIdRegistroEstadoProceso and fkIdRegistroDocsAprobados=idRegistro
and (datediff(CURDATE(), fechaSeguimiento)>=0 and datediff(CURDATE(), fechaSeguimiento)<3);
select factura, poder, identificacion, situacion, curp, estadoDoc, tenencia,
baja, tarjeta, polizaDoc, comprobante, idRegistro, numSiniestro, poliza, marca, tipo, modelo, numSerie, estado,fechaCarga, estacionProceso, 
estatusSeguimientoSin, subEstatusProceso from documentosaprobados, fechasseguimiento as fs,  estadoproceso as ep, infosiniestro as iSin, infoauto as ia
where idRegistro = ia.fkIdRegistro and idRegistro=fs.fkidRegistro and idRegistro = ep.fkIdRegistroEstadoProceso
and idRegistro=fkIdRegistroDocsAprobados and estacionProceso like '%%' and estatusoperativo like '%%' and subEstatusProceso like '%%'
and fechaSeguimiento between '2022-09-10'  and curdate() and fechaCarga between '2022-10-10' and curdate() 
and region like '%%' and estado like '%%' and  cobertura like '%%';

insert into estadoproceso(fkIdRegistroEstadoProceso,estacionProceso,estatusOperativo)values(1321,'Nuevo','Nuevo');

select factura, poder, identificacion, situacion, curp, estadoDoc, tenencia,
baja, tarjeta, polizaDoc, comprobante, idRegistro, numSiniestro, poliza, marca, tipo, modelo, numSerie, estado, iSin.fechaCarga as fechaCarga, estacionProceso, 
estatusSeguimientoSin, subEstatusProceso from infosiniestro as iSin, infoauto, estadoproceso, documentosaprobados where iSin.idRegistro = infoauto.fkIdRegistro and 
iSin.idRegistro = estadoproceso.fkIdRegistroEstadoProceso and iSin.idRegistro=fkIdRegistroDocsAprobados and idRegistro like '%%';

update infosiniestro set usuarioAsignadoSin="Juanito",fechaAsignacion=now() where idRegistro = 845;

select numSiniestro, poliza, afectado, tipoDeCaso, cobertura, fechaSiniestro, estado, ciudad, region, 
ubicacionTaller, regimenFiscal, estatusCliente,fechaCarga, usuarioCarga, 
estatusSeguimientoSin, usuarioAsignadoSin, fechaAsignacion, fechaSeguimiento, siClienteOtro, fechaPago, noindicaFaltantes, 
comentarios, detalles, marca, tipo, modelo, numSerie, valorIndemnizacion, valorComercial, 
placas, telefonoPrincipal, telefonosecundario, contacto, correo, asegurado, correoContacto, telContacto 
from infosiniestro as isin, fechasseguimiento as fs, infoauto as ia, infocliente as ic where idRegistro = fs.fkidRegistro 
and idRegistro=ia.fkIdRegistro and idRegistro=ic.fkIdRegistro;

select numSiniestro, poliza, afectado, tipoDeCaso, cobertura, fechaSiniestro, estado, ciudad, region, 
ubicacionTaller, regimenFiscal, estatusCliente, comentariosCliente, fechaCarga, usuarioCarga, 
estatusSeguimientoSin, usuarioAsignadoSin, fechaAsignacion, fechaSeguimiento,
comentarios, detalles, marca, tipo, modelo, numSerie, valorIndemnizacion, valorComercial, 
placas, telefonoPrincipal, telefonosecundario, contacto, correo, asegurado, correoContacto, telContacto 
from infosiniestro as isin, fechasseguimiento as fs, infoauto as ia, infocliente as ic where idRegistro = fs.fkidRegistro 
and idRegistro=ia.fkIdRegistro and idRegistro=ic.fkIdRegistro;

SELECT WEEKDAY(NOW()) AS  Week;
/*dia de la semana*/
SELECT WEEKDAY (now()) AS WeekDay_Value;
select curdate() - interval 1 day;
SELECT WEEKOFYEAR(NOW()) AS Current_Week;
select count(usuario) as dia from seguimientoprincipal where usuario='Teresa Medina' and week(fechaseguimiento)=WEEKOFYEAR(NOW());
select count(usuario) as dia from seguimientoprincipal where usuario='Teresa Medina' and fechaseguimiento=curdate() - interval 0 day;
select day(curdate());





