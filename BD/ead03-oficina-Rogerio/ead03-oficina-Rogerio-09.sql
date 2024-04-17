/* Mostrar Todos os Clientes, Carros, defeitos e quanto sera cobrado 
*/
SELECT `clientes`.`nome`, `carros`.`marca`,`carros`.`modelo`, `ordem`.`defeito`, `ordem`.`valor`, `ordem`.`desconto`,(`ordem`.`valor` - `ordem`.`desconto`) AS valorFinal
FROM `carros`
INNER JOIN `clientes`
		ON `carros`.`clientes_idclientes` = `clientes`.`idclientes`
INNER JOIN `ordem`
		ON `ordem`.`carros_idcarros` = `carros`.`idcarros`
INNER JOIN `mecanicos`
		ON `mecanicos`.`idmecanicos` = `ordem`.`mecanicos_idmecanicos`
ORDER BY `clientes`.`idclientes`