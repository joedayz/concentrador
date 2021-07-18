import { Component, OnInit } from '@angular/core';
import { OpcionService } from '../../services/opcion.service';
import { Opcion } from '../../models/opcion';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  opcion: Opcion[];
  constructor(private readonly opcionService: OpcionService) { }

  ngOnInit(): void {
    this.listar();
  }

  listar() {
    this.opcionService.listar().subscribe(data => {
      this.opcion = data;
    });
  }

}
