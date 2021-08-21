import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from "../../../environments/environment";
import { Designation } from '../models/designation.models';
@Injectable({ providedIn: 'root' })
export class DesignationsService {
  constructor(private http: HttpClient) { }
  getAll() {
    return this.http.get<Designation[]>(`${environment.url}/api/designations`);
  }

}
