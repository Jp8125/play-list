import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FilterVideosComponent } from './filter-videos.component';

describe('FilterVideosComponent', () => {
  let component: FilterVideosComponent;
  let fixture: ComponentFixture<FilterVideosComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ FilterVideosComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(FilterVideosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
