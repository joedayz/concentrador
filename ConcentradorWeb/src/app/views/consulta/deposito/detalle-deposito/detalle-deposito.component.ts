import { Component, OnInit } from '@angular/core';
import { ProductoFinanciero } from '../../../../models/producto-financiero';
import { ActivatedRoute, Router, Params } from '@angular/router';
import { ProductoServicioService } from '../../../../services/producto-servicio.service';

@Component({
  selector: 'app-detalle-deposito',
  templateUrl: './detalle-deposito.component.html',
  styleUrls: ['./detalle-deposito.component.css']
})
export class DetalleDepositoComponent implements OnInit {

  id: number;
  producto: any;

  constructor(private readonly route: ActivatedRoute, private readonly router: Router,
              private  readonly productoService: ProductoServicioService) { }

  ngOnInit(): void {
    this.producto = new ProductoFinanciero();
    this.capturarRuta();
  }

  capturarRuta(): void {
    this.route.params.subscribe((data: Params) => {
      this.id = data.id;
      this.initForm();
    })
  }

  initForm(){
    this.productoService.obtenerPorId(this.id).subscribe(data => {
      this.producto = data;
    });
  }

}
