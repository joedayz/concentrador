import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from '../../environments/environment';
import { Prospecto } from '../models/prospecto';
import { httpHeaders } from '../utils/constantes';

@Injectable({
  providedIn: 'root'
})
export class ProspectoService {

  endpoint = `${environment.BASE_ENDPOINT}/prospecto`;
  constructor(protected http: HttpClient) { }

  save(entidad: Prospecto){
    return this.http.post(`${this.endpoint}`, JSON.stringify(entidad), httpHeaders);
  }

}
