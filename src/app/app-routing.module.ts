import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { RequerimientosComponent } from './components/requerimientos/requerimientos.component';
import { AyudaComponent } from './components/ayuda/ayuda.component';
import { RegistroRequerimientoComponent } from './components/registro-requerimiento/registro-requerimiento.component';

const routes: Routes = [
  { path: 'requerimientos', component: RequerimientosComponent },
  { path: 'ayuda', component: AyudaComponent },
  { path: 'registrar', component: RegistroRequerimientoComponent },
  { path: '', redirectTo: '/requerimientos', pathMatch: 'full' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
