import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { AnalistaTI, CoordinadorHelpdesk, Solicitante } from '../../models/requerimiento.model';
import { Observable } from 'rxjs/internal/Observable';
import { map } from 'rxjs/internal/operators/map';
import { debounceTime } from 'rxjs/internal/operators/debounceTime';
import { distinctUntilChanged } from 'rxjs/internal/operators/distinctUntilChanged';
import { switchMap } from 'rxjs/internal/operators/switchMap';
import { RequerimientoService } from '../services/RequerimientoService';
import { of } from 'rxjs/internal/observable/of';

@Component({
  selector: 'app-registro-requerimiento',
  templateUrl: './registro-requerimiento.component.html',
  styleUrl: './registro-requerimiento.component.css'
})
export class RegistroRequerimientoComponent {

  requerimientoForm: FormGroup;
  nombreSolicitante: string = "";
  nombreCoordinador: string = "";
  nombreAnalista: string = "";
  isUpdate: boolean = false;
  idRequerimiento?: number = -1;

  constructor(
    private fb: FormBuilder,
    private requerimientoService: RequerimientoService
  ) {

    this.requerimientoForm = this.fb.group({
      nombreSolicitud: ['', Validators.required],
      descripcionSolicitud: ['', Validators.required],
      anexo: ['', Validators.required],
      fechaSolicitud: ['', Validators.required],
      solicitante: this.fb.group({
        idSolicitante: [null, Validators.required],
        nombres: ['', Validators.required],
        apellidos: ['', Validators.required],
        area: ['', Validators.required]
      }),
      coordinador: this.fb.group({
        idCoordinador: [null, Validators.required],
        nombre: ['', Validators.required]
      }),
      analista: this.fb.group({
        idAnalista: [null],
        nombre: [''],
        sistemaEspecialidad: ['']
      })
    });

    this.requerimientoService.getRequerimiento().subscribe(requerimiento => {
      if (requerimiento) {
        this.idRequerimiento = requerimiento.idRequerimiento;
        this.requerimientoForm.patchValue(requerimiento);
        const solicitanteControl = this.requerimientoForm.get('solicitante');
        if (solicitanteControl && requerimiento.solicitante) {
          this.nombreSolicitante = `${requerimiento.solicitante.nombres} ${requerimiento.solicitante.apellidos}`;
        }

        const coordinadorControl = this.requerimientoForm.get('coordinador');
        if(coordinadorControl && requerimiento.coordinador){
          this.nombreCoordinador = `${requerimiento.coordinador.nombre}`;

        }

        const analistaControl = this.requerimientoForm.get('analista');
        if(analistaControl && requerimiento.analista){
            this.nombreAnalista = `${requerimiento.analista.nombre}`;
        }

        this.isUpdate = true;
        console.log(this.requerimientoForm);
      }
    })

  }

  ngOnInit(): void {

  }

  // Autocompletado de Solicitantes
  searchSolicitantes = (text$: Observable<string>) =>
    text$.pipe(
      debounceTime(300),
      distinctUntilChanged(),
      switchMap(term =>
        this.requerimientoService.searchSolicitantes(term).pipe(
          map(response => response.slice(0, 10))
        )
      )
    );

  formatterSolicitante = (result: Solicitante) => `${result.nombres} ${result.apellidos}`;

  // Autocompletado de Coordinadores
  searchCoordinadores = (text$: Observable<string>) =>
    text$.pipe(
      debounceTime(300),
      distinctUntilChanged(),
      switchMap(term =>
        this.requerimientoService.searchCoordinadores(term).pipe(
          map(response => response.slice(0, 10))
        )
      )
    );

  formatterCoordinador = (result: CoordinadorHelpdesk) => result.nombre;

  // Autocompletado de Analistas
  searchAnalistas = (text$: Observable<string>) =>
    text$.pipe(
      debounceTime(300),
      distinctUntilChanged(),
      switchMap(term =>
        this.fetchAnalistas(term)
      )
    );


  fetchAnalistas(term: string): Observable<any[]> {
    if (term === '') {
      this.requerimientoForm.patchValue({ analista: {
        idAnalista: null,
        nombre: null,
        sistemaEspecialidad: null
      } });
      return of([]); // Retorna un array vacío si no hay términos de búsqueda
    }
    return this.requerimientoService.searchAnalistas(term).pipe(
      map(response => response.slice(0, 10))
    );
  }

  formatterAnalista = (result: AnalistaTI) => result.nombre;

  // Cuando un Solicitante es seleccionado
  selectSolicitante(event: any): void {
    this.requerimientoForm.patchValue({ solicitante: event.item });
  }

  // Cuando un Coordinador es seleccionado
  selectCoordinador(event: any): void {
    this.requerimientoForm.patchValue({ coordinador: event.item });
  }

  // Cuando un Analista es seleccionado
  selectAnalista(event: any): void {
    this.requerimientoForm.patchValue({ analista: event.item });
  }

  onSubmit(): void {
    if (this.requerimientoForm.valid) {

      const formValue = this.requerimientoForm.value;

      if (!formValue.analista.idAnalista) {
        formValue.analista = null;
      }

      if(this.isUpdate){

        const requerimientoUpdate = {idRequerimiento: this.idRequerimiento, ...this.requerimientoForm.value}
        this.requerimientoService.update(this.idRequerimiento!,requerimientoUpdate).subscribe(
          resp => {
            console.log(resp);
          }
        );

      }else{
        this.requerimientoService.create(this.requerimientoForm.value).subscribe(
          resp => {
            console.log(resp);
          }
        );
      }

      console.log('Form Submitted!', this.requerimientoForm.value);
    } else {
      console.log('Form Not Valid');
    }
  }

}
