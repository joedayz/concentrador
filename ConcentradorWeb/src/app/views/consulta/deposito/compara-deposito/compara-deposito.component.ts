import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Router } from '@angular/router';
import { ConsultaFiltro } from '../../../../models/consultaFiltro';
import { DepartamentoService } from '../../../../services/departamento.service';
import { CODIGO_DEPOSITO } from '../../../../utils/constantes';


@Component({
  selector: 'app-compara-deposito',
  templateUrl: './compara-deposito.component.html',
  styleUrls: ['./compara-deposito.component.css']
})
export class ComparaDepositoComponent implements OnInit {


  @Output()
  emisor = new EventEmitter();

  @Output()
  ocultar = new EventEmitter();

  form: FormGroup;
  departamentos: { label: string, value: any }[];

  constructor(private readonly departamentoService: DepartamentoService, private readonly fb: FormBuilder,
    private readonly router: Router) { }

  ngOnInit(): void {
    this.createForm();
    this.cargarFormulario();
    this.cargarDepartamento();
  }

  createForm() {
    this.form = this.fb.group({
      valorDeposito: [],
      plazo: [],
      tipoMoneda: [],
      banco: [],
      departamento: []
    });
  }

  cargarFormulario() {
    this.form.setValue({
      valorDeposito: 1000,
      plazo: 30,
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

  activateAnimation() {
  }

  filtrar(){
    const filtro = new ConsultaFiltro();
    filtro.setFiltroDeposito(CODIGO_DEPOSITO,this.form.value.tipoMoneda, this.form.value.valorDeposito,
    this.form.value.plazo, this.form.value.departamento, this.form.value.banco);
    this.emisor.emit(filtro);
    this.ocultar.emit(true);
  }

}
