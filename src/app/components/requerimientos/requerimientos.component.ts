import { Component, OnDestroy, OnInit } from '@angular/core';
import { Requerimiento } from '../../models/requerimiento.model';
import { RequerimientoService } from '../services/RequerimientoService';
import { Router } from '@angular/router';
import { debounceTime } from 'rxjs/internal/operators/debounceTime';
import { Subject } from 'rxjs/internal/Subject';

@Component({
  selector: 'app-requerimientos',
  templateUrl: './requerimientos.component.html',
  styleUrl: './requerimientos.component.css'
})
export class RequerimientosComponent implements OnInit, OnDestroy {

  requerimientos: Requerimiento[] = [];
  requerimientoParaBorrar: Requerimiento | null = null;
  buscar: string = "";


  private buscarRequerimientoSubject = new Subject<string>();
  private readonly debounceTimeMs = 300;

  constructor(private requerimientoService: RequerimientoService,
              private router: Router
  ) { }

  ngOnInit(): void {
    this.requerimientoService.setRequerimiento(null);
    this.loadRequerimientos();
    this.buscarRequerimientoSubject.pipe(debounceTime(this.debounceTimeMs)).subscribe((buscarValor) => {
      this.realizarBusqueda(buscarValor);
    });
  }

  ngOnDestroy() {
    this.buscarRequerimientoSubject.complete();
  }

  loadRequerimientos(): void {
    this.requerimientoService.getAll().subscribe(
      data => {
        this.requerimientos = data;
      },
      error => {
        console.log(error);
      });
  }

  deleteRequerimiento(id: number): void {
    this.requerimientoService.delete(id).subscribe(
      response => {
        this.loadRequerimientos();
      },
      error => {
        console.log(error);
      });
  }

  openDeleteModal(requerimiento: Requerimiento) {
    this.requerimientoParaBorrar = requerimiento;
  }

  editarRequerimiento(requerimiento: Requerimiento){
    this.requerimientoService.setRequerimiento(requerimiento);
    this.router.navigate(['/', 'registrar']);
  }

  irCrearRequerimiento(){
    this.router.navigate(['/', 'registrar']);
  }

  onBuscarRequerimientos(){
    this.buscarRequerimientoSubject.next(this.buscar);
  }

  realizarBusqueda(nombre: string) {
    this.requerimientoService.getAllByName(nombre).subscribe(
      response => {
        this.requerimientos = response;
      },
      error => {
        console.log(error);
      }

    );
    console.log('Performing search for:', nombre);
  }

  confirmDelete() {
    if (this.requerimientoParaBorrar) {
      this.deleteRequerimiento(this.requerimientoParaBorrar.idRequerimiento!);
      this.requerimientos = this.requerimientos.filter(e => e.idRequerimiento !== this.requerimientoParaBorrar?.idRequerimiento);
      this.requerimientoParaBorrar = null;
    }
  }
}
