import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router, Params } from '@angular/router';
import { ProductoFinanciero } from '../../../../models/producto-financiero';
import { ProductoServicioService } from '../../../../services/producto-servicio.service';

@Component({
  selector: 'app-detalle-prestamo',
  templateUrl: './detalle-prestamo.component.html',
  styleUrls: ['./detalle-prestamo.component.css']
})
export class DetallePrestamoComponent implements OnInit {

  id: number;
  producto: any;

  constructor(private readonly route: ActivatedRoute, private readonly router: Router,
              private readonly productoService: ProductoServicioService) { }

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
      console.log('deta', data)
      this.producto = data;
    });
  }

}
