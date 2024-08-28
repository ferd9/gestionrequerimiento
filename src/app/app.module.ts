import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { MenuComponent } from './components/menu/menu.component';
import { RequerimientosComponent } from './components/requerimientos/requerimientos.component';
import { AyudaComponent } from './components/ayuda/ayuda.component';
import { HttpClientModule } from '@angular/common/http';
import { RegistroRequerimientoComponent } from './components/registro-requerimiento/registro-requerimiento.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { ComboPadreComponent } from './components/combo-padre/combo-padre.component';
import { ComboHijoComponent } from './components/combo-hijo/combo-hijo.component';

@NgModule({
  declarations: [
    AppComponent,
    MenuComponent,
    RequerimientosComponent,
    AyudaComponent,
    RegistroRequerimientoComponent,
    ComboPadreComponent,
    ComboHijoComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    NgbModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
