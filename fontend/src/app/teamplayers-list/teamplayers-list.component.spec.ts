import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TeamplayersListComponent } from './teamplayers-list.component';

describe('TeamplayersListComponent', () => {
  let component: TeamplayersListComponent;
  let fixture: ComponentFixture<TeamplayersListComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TeamplayersListComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TeamplayersListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
