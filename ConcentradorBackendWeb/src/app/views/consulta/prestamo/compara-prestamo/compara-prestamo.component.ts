import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Router } from '@angular/router';
import { ConsultaFiltro } from '../../../../models/consultaFiltro';
import { DepartamentoService } from '../../../../services/departamento.service';
import { CODIGO_PRESTAMO } from '../../../../utils/constantes';

@Component({
  selector: 'app-compara-prestamo',
  templateUrl: './compara-prestamo.component.html',
  styleUrls: ['./compara-prestamo.component.css']
})
export class ComparaPrestamoComponent implements OnInit {

  @Output()
  emisor = new EventEmitter();
  @Output()
  ocultar = new EventEmitter();

  form: FormGroup;
  departamentos: { label: string, value: any }[];

  constructor(private readonly departamentoService: DepartamentoService, private  readonly fb: FormBuilder,
    private readonly router: Router) { }

  ngOnInit(): void {
    this.createForm();
    this.cargarFormulario();
    this.cargarDepartamento();
  }

  createForm() {
    this.form = this.fb.group({
      monto: [],
      plazo: [],
      ingreso: [],
      tipoMoneda: [],
      banco: [],
      departamento: []
    });
  }

  cargarFormulario() {
    this.form.setValue({
      monto: 1000,
      plazo: 6,
      ingreso: 500,
      tipoMoneda: '5',
      banco: '8',
      departamento: 1
    });
  }

  cargarDepartamento() {
    this.departamentoService.listar().subscribe(data => {
      this.departamentos = data;
    });
  }

  filtrar(){
    const filtro = new ConsultaFiltro();
    filtro.setFiltroPrestamo(CODIGO_PRESTAMO,this.form.value.tipoMoneda, this.form.value.monto,
    this.form.value.plazo , this.form.value.departamento, this.form.value.banco, this.form.value.ingreso);
    this.emisor.emit(filtro);
    this.ocultar.emit(true);
  }

  activateAnimation(){ }

}
