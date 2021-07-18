import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Router } from '@angular/router';
import { SelectItem } from 'primeng/api';
import { Prospecto } from '../../../../models/prospecto';
import { ProspectoService } from '../../../../services/prospecto.service';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-solicitud-deposito',
  templateUrl: './solicitud-deposito.component.html',
  styleUrls: ['./solicitud-deposito.component.css']
})
export class SolicitudDepositoComponent implements OnInit {

  form: FormGroup;
  id: number;

  constructor(private readonly prospectoService: ProspectoService, private readonly fb: FormBuilder,
    private readonly router: Router) { }

  departamento: SelectItem[];
  tipoDocumewnto: SelectItem[];

  ngOnInit(): void {
    this.createForm();
    this.loadDepartamento();
    this.loadDocumento();
  }

  createForm() {
    this.form = this.fb.group({
      nombre: [''],
      apellido: [''],
      idTipoDocumento: [],
      numeroDocumento: [''],
      email: [''],
      celular: [''],
      DepartamentoId: []
    });
  }


  guardar() {
    const data = new Prospecto();
    data.nombres = this.form.value.nombre;
    data.apellidos = this.form.value.apellido;
    data.idTipoDocumento = this.form.value.idTipoDocumento;
    data.DepartamentoId = this.form.value.DepartamentoId;
    data.email = this.form.value.email;
    data.numeroDocumento = this.form.value.numeroDocumento;
    data.numeroCelular = this.form.value.celular;
    this.prospectoService.save(data).subscribe(() => {
      Swal.fire({
        position: 'center',
        icon: 'success',
        title: 'Su informacion fue enviada',
        text: 'Por favor espere a que le contactemos, gracias.',
        showConfirmButton: true
      }).then((result) => {
        this.router.navigate(['/home']);
      });
    });
  }

  loadDocumento() {
    this.tipoDocumewnto = [
      { label: 'Seleccione..', value: null },
      { label: 'DNI', value: 1 },
      { label: 'Carnet Extranjeria', value: 2 }
    ];
  }

  loadDepartamento() {
    this.departamento = [
      { label: 'Seleccione..', value: null },
      { label: 'Amazonas', value: 1 },
      { label: 'Áncash', value: 2 },
      { label: 'Apurímac', value: 3 },
      { label: 'Arequipa', value: 4 },
      { label: 'Ayacucho', value: 5 },
      { label: 'Cajamarca', value: 6 },
      { label: 'Cusco', value: 7 },
      { label: 'Huancavelica', value: 8 },
      { label: 'Huánuco', value: 9 },
      { label: 'Ica', value: 10 },
      { label: 'Junín', value: 11 },
      { label: 'La Libertad', value: 12 },
      { label: 'Lambayeque', value: 13 },
      { label: 'Lima', value: 14 },
      { label: 'Loreto', value: 15 },
      { label: 'Pasco', value: 16 },
      { label: 'Piura', value: 17 },
      { label: 'Tacna', value: 18 }
    ];
  }

}
