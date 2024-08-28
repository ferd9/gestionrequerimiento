import { Component } from '@angular/core';

@Component({
  selector: 'app-combo-padre',
  templateUrl: './combo-padre.component.html',
  styleUrl: './combo-padre.component.css'
})
export class ComboPadreComponent {

  tiposRequerimiento = [
    { id: 1, nombre: 'Proyecto' },
    { id: 2, nombre: 'Mejora' },
    { id: 3, nombre: 'Configuración' }
  ];


  tipoSeleccionado: number = 1;

  onTipoChange(event: Event) {
    const target = event.target as HTMLSelectElement;
    this.tipoSeleccionado = Number(target.value);
  }

}
