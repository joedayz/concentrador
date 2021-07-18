import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { RegistroEntidadComponent } from './registro-entidad.component';

describe('RegistroEntidadComponent', () => {
  let component: RegistroEntidadComponent;
  let fixture: ComponentFixture<RegistroEntidadComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ RegistroEntidadComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(RegistroEntidadComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
