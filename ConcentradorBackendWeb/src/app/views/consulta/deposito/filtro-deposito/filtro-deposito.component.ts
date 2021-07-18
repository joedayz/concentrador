import { Component, OnInit } from '@angular/core';
import { ProductoFinanciero } from '../../../../models/producto-financiero';
import { ProductoServicioService } from '../../../../services/producto-servicio.service';
import { ConsultaFiltro } from '../../../../models/consultaFiltro';
import { FormGroup, FormBuilder } from '@angular/forms';
import { DepartamentoService } from '../../../../services/departamento.service';
import { ActivatedRoute } from '@angular/router';
import { CODIGO_DEPOSITO } from '../../../../utils/constantes';

@Component({
  selector: 'app-filtro-deposito',
  templateUrl: './filtro-deposito.component.html',
  styleUrls: ['./filtro-deposito.component.css']
})
export class FiltroDepositoComponent implements OnInit {

  departamentos: { label: string, value: any }[];
  filtro: ConsultaFiltro;
  form: FormGroup;
  dataProducto: ProductoFinanciero[];
  estado = false;

  constructor(private readonly servicioProducto: ProductoServicioService,
    private readonly departamentoService: DepartamentoService, private readonly fb: FormBuilder,
    public readonly route: ActivatedRoute) {
      this.createForm();
      this.cargarFormulario();
    }

  ngOnInit(): void {
    this.servicioProducto.listaCambios.subscribe(data => {
      console.log('dat 1', data)
      this.dataProducto = data;
    });
    this.listar();
    this.cargarDepartamento();
  }

  listar() {
    console.log('filtro', this.filtro);

    if(this.filtro != null){
      this.servicioProducto.listar(this.filtro).subscribe(data => {
        console.log('dat 2', data[0])
        this.dataProducto = data;
      });
      this.filtro.ConsultaFiltro(CODIGO_DEPOSITO);
    }

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

  cargarDepartamento() {
    this.departamentoService.listar().subscribe(data => {
      this.departamentos = data;
    });
  }

  cargarFormulario() {
    if(this.filtro != null){
      this.form.setValue({
        valorDeposito: this.filtro.MontoMaximoDeposito,
        plazo: this.filtro.PlazoMaximoDia,
        tipoMoneda: this.filtro.TipoMonedaId,
        banco: this.filtro.TipoInstitucionId,
        departamento: this.filtro.DepartamentoId
      });
    }else {
      this.form.setValue({
        valorDeposito: 1000,
        plazo: 30,
        tipoMoneda: '5',
        banco: '8',
        departamento: 1
      });
    }
  }

  activateAnimation() { }

  filtrar(){
    const filtro = new ConsultaFiltro();
    filtro.setFiltroDeposito(CODIGO_DEPOSITO,this.form.value.tipoMoneda, this.form.value.valorDeposito,
    this.form.value.plazo, this.form.value.departamento, this.form.value.banco);
    this.servicioProducto.listar(filtro).subscribe(data => {
      this.servicioProducto.listaCambios.next(data);
    });
  }

  cargarData(event: any){
    this.filtro = event;
    this.cargarFormulario();
    this.listar();
  }

  ocultar(event: any){
    this.estado = event;
  }

}
