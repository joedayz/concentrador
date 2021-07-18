import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import { HttpClientModule } from '@angular/common/http';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { PrimeNgModule } from './prime/prime-ng/prime-ng.module';
import { HomeComponent } from './views/home/home.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { RegistroEntidadComponent } from './views/afiliaciones/registro-entidad/registro-entidad.component';
import { RegistroProductosComponent } from './views/afiliaciones/registro-productos/registro-productos.component';
import { ComparaDepositoComponent } from './views/consulta/deposito/compara-deposito/compara-deposito.component';
import { ComparaPrestamoComponent } from './views/consulta/prestamo/compara-prestamo/compara-prestamo.component';
import { FiltroPrestamoComponent } from './views/consulta/prestamo/filtro-prestamo/filtro-prestamo.component';
import { FiltroDepositoComponent } from './views/consulta/deposito/filtro-deposito/filtro-deposito.component';
import { DetallePrestamoComponent } from './views/consulta/prestamo/detalle-prestamo/detalle-prestamo.component';
import { SolicitudPrestamoComponent } from './views/consulta/prestamo/solicitud-prestamo/solicitud-prestamo.component';
import { DetalleDepositoComponent } from './views/consulta/deposito/detalle-deposito/detalle-deposito.component';
import { SolicitudDepositoComponent } from './views/consulta/deposito/solicitud-deposito/solicitud-deposito.component';


@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    RegistroEntidadComponent,
    RegistroProductosComponent,
    SolicitudPrestamoComponent,
    ComparaDepositoComponent,
    ComparaPrestamoComponent,
    FiltroPrestamoComponent,
    FiltroDepositoComponent,
    DetallePrestamoComponent,
    DetalleDepositoComponent,
    SolicitudDepositoComponent,
  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    AppRoutingModule,
    PrimeNgModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
