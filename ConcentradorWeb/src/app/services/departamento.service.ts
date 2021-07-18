import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from '../../environments/environment';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class DepartamentoService {

  endpoint = `${environment.BASE_ENDPOINT}/departamento`;

  constructor(protected http: HttpClient) { }

  listar(){
    return this.http.get(this.endpoint).pipe(
      map((resp: any) => {
        return resp.map( departamento => {
          return {
            label: departamento.nombre,
            value: departamento.DepartamentoId
          }
        })
      })
    );
  }
}
