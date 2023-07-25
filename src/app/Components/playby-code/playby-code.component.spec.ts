import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PlaybyCodeComponent } from './playby-code.component';

describe('PlaybyCodeComponent', () => {
  let component: PlaybyCodeComponent;
  let fixture: ComponentFixture<PlaybyCodeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PlaybyCodeComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(PlaybyCodeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
