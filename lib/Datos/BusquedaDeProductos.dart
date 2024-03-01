import 'dart:js_interop';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:puntodeventa/Datos/Bdproductos.dart';
import 'package:puntodeventa/Pantallas/Productos.dart';

var open = Hive.openBox("productos");

class BusquedaDeProductos {
  var boxproductos = Hive.box("productos").values.toList();
  var productos = Hive.box("productos");
  busqueda(indbuscar) {
        
        for (var i = 0; i < boxproductos.length; i++) {
              Bdproductos producto = boxproductos[i];
                if (producto.codigo == indbuscar||producto.nombre ==indbuscar) {
                  return producto;
                }
              
        }
      
    
  }
}
