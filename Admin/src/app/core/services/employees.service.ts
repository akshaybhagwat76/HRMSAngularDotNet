import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { Employees } from '../models/employees.models';

@Injectable({
  providedIn: 'root'
})
export class EmployeesService {

  constructor(private http : HttpClient) { }

  getAll() {
    // 
    return this.http.get<Employees>(`${environment.url}/api/types`);
}
}
