import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from '../../environments/environment';
import { ProductoFinanciero } from '../models/producto-financiero';
import { ConsultaFiltro } from '../models/consultaFiltro';
import { Subject } from 'rxjs';
import { httpHeaders } from '../utils/constantes';


@Injectable({
  providedIn: 'root'
})
export class ProductoServicioService {

  listaCambios = new Subject<ProductoFinanciero[]>();
  endpointBase = `${environment.BASE_ENDPOINT}/consulta`;
  endpointLista = `${this.endpointBase}/producto-financiero/pagina/1`;
  constructor(protected http: HttpClient) {}

  listar(filtro: ConsultaFiltro) {
    return this.http.post<ProductoFinanciero[]>(this.endpointLista, JSON.stringify(filtro), httpHeaders);
  }

  obtenerPorId(id: number) {
    return this.http.get<any>(`${this.endpointBase}/${id}`);
  }
}
