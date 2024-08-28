import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RegistroRequerimientoComponent } from './registro-requerimiento.component';

describe('RegistroRequerimientoComponent', () => {
  let component: RegistroRequerimientoComponent;
  let fixture: ComponentFixture<RegistroRequerimientoComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [RegistroRequerimientoComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(RegistroRequerimientoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
