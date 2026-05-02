/*

Una transacción en una base de datos es una unidad de trabajo lógica que comprende una o 
varias operaciones SQL (como insertar, actualizar o borrar datos). Lo que hace especial a
 una transacción es que se trata como un paquete "todo o nada": o se ejecutan todas las 
 operaciones con éxito, o no se ejecuta ninguna.

Imagina que estás transfiriendo dinero de una cuenta bancaria a otra. Si el sistema resta 
el dinero de tu cuenta pero falla antes de sumarlo a la otra, el dinero desaparecería. 
Una transacción asegura que, si algo falla a mitad de camino, los cambios se deshagan 
automáticamente.Las Propiedades ACID

Para garantizar que los datos sean confiables, las transacciones siguen el modelo ACID:

    Atomicidad (Atomicity): La transacción es indivisible. Si un solo paso falla, todo el
     proceso se cancela (Rollback) y la base de datos vuelve a su estado original.

    Consistencia (Consistency): Una transacción lleva a la base de datos de un estado válido
     a otro estado válido, respetando todas las reglas y restricciones (como llaves foráneas
      o tipos de datos).

    Aislamiento (Isolation): Las operaciones de una transacción son invisibles para otras 
    transacciones que ocurren al mismo tiempo hasta que la primera finalice.

    Durabilidad (Durability): Una vez que la transacción se completa con éxito (Commit), 
    los cambios son permanentes, incluso si hay un fallo de energía o el sistema se reinicia.
*/
START TRANSACTION
COMMIT
ROLLBACK