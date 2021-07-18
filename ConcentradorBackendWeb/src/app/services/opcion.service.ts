import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from '../../environments/environment';
import { Opcion } from '../models/opcion';

@Injectable({
  providedIn: 'root'
})
export class OpcionService {

  endpoint = `${environment.BASE_ENDPOINT}/opcion`;
  constructor(protected http: HttpClient) { }

  listar() {
    return this.http.get<Opcion[]>(this.endpoint);
  }
}
