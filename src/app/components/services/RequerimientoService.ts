import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject, Observable } from 'rxjs';
import { AnalistaTI, CoordinadorHelpdesk, Requerimiento, Solicitante } from '../../models/requerimiento.model';


@Injectable({
  providedIn: 'root'
})
export class RequerimientoService {
  private apiUrl = 'http://localhost:8080/api';

  private requerimientoSubject = new BehaviorSubject<Requerimiento | null>(null);

  constructor(private http: HttpClient) { }

  public getAll(): Observable<Requerimiento[]> {
    return this.http.get<Requerimiento[]>(`${this.apiUrl}/requerimientos`);
  }

  public getAllByName(nombre: string): Observable<Requerimiento[]> {
    return this.http.get<Requerimiento[]>(`${this.apiUrl}/requerimientos/buscar?b=${nombre}`);
  }

  get(id: number): Observable<Requerimiento> {
    return this.http.get<Requerimiento>(`${this.apiUrl}/requerimientos/${id}`);
  }

  create(requerimiento: Requerimiento): Observable<any> {
    return this.http.post(`${this.apiUrl}/requerimientos`, requerimiento);
  }

  update(id: number, requerimiento: Requerimiento): Observable<any> {
    return this.http.put(`${this.apiUrl}/requerimientos/${id}`, requerimiento);
  }

  delete(id: number): Observable<any> {
    return this.http.delete(`${this.apiUrl}/requerimientos/${id}`);
  }

  searchSolicitantes(term: string): Observable<Solicitante[]> {
    return this.http.get<Solicitante[]>(`${this.apiUrl}/solicitantes/nombres?buscar=${term}`);
  }

  searchCoordinadores(term: string): Observable<CoordinadorHelpdesk[]> {
    return this.http.get<CoordinadorHelpdesk[]>(`${this.apiUrl}/coordinador/nombres?buscar=${term}`);
  }

  searchAnalistas(term: string): Observable<AnalistaTI[]> {
    return this.http.get<AnalistaTI[]>(`${this.apiUrl}/analistas/nombres?buscar=${term}`);
  }

  setRequerimiento(requerimiento: Requerimiento | null): void {
    this.requerimientoSubject.next(requerimiento);
  }

  getRequerimiento(): Observable<Requerimiento | null> {
    return this.requerimientoSubject.asObservable();
  }

}
