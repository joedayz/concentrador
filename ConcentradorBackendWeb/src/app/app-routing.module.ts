import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './views/home/home.component';
import { RegistroEntidadComponent } from './views/afiliaciones/registro-entidad/registro-entidad.component';
import { RegistroProductosComponent } from './views/afiliaciones/registro-productos/registro-productos.component';
import { FiltroPrestamoComponent } from './views/consulta/prestamo/filtro-prestamo/filtro-prestamo.component';
import { DetallePrestamoComponent } from './views/consulta/prestamo/detalle-prestamo/detalle-prestamo.component';
import { SolicitudPrestamoComponent } from './views/consulta/prestamo/solicitud-prestamo/solicitud-prestamo.component';
import { FiltroDepositoComponent } from './views/consulta/deposito/filtro-deposito/filtro-deposito.component';
import { DetalleDepositoComponent } from './views/consulta/deposito/detalle-deposito/detalle-deposito.component';
import { SolicitudDepositoComponent } from './views/consulta/deposito/solicitud-deposito/solicitud-deposito.component';


const routes: Routes = [
  { path: '', redirectTo: '/home', pathMatch: 'full' },
  { path: 'home', component: HomeComponent },
  { path: 'afiliaciones/registro-entidad', component: RegistroEntidadComponent },
  { path: 'afiliaciones/registro-productos', component: RegistroProductosComponent },
  { path: 'prestamo/result', component: FiltroPrestamoComponent,
    children: [{
        path: 'detalle/:id', component: DetallePrestamoComponent
    }]
  },
  { path: 'prestamo/solicitud', component: SolicitudPrestamoComponent },
  { path: 'deposito/solicitud', component: SolicitudDepositoComponent },
  { path: 'deposito-plazo/result', component: FiltroDepositoComponent,
    children: [{
        path: 'detalle-deposito/:id', component: DetalleDepositoComponent
    }]
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
