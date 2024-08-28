import { Component, Input, OnChanges } from '@angular/core';

@Component({
  selector: 'app-combo-hijo',
  templateUrl: './combo-hijo.component.html',
  styleUrl: './combo-hijo.component.css'
})
export class ComboHijoComponent implements OnChanges{

  @Input() tipoSeleccionado?: number;

  descripcion: string = '';

  ngOnChanges() {
    this.actualizarDescripcion();
  }

  actualizarDescripcion() {
    switch (this.tipoSeleccionado) {
      case 1:
        this.descripcion = 'Este tipo de requerimiento dura más de 100 horas.';
        break;
      case 2:
        this.descripcion = 'Este tipo de requerimiento dura de 5 a 99 horas.';
        break;
      case 3:
        this.descripcion = 'Este tipo de requerimiento dura a lo más 4 horas.';
        break;
      default:
        this.descripcion = 'Seleccione un tipo de requerimiento.';
    }
  }
}
