import { Injectable } from '@angular/core';
import { environment } from "../../../environments/environment";
import { HttpClient } from '@angular/common/http';
import { HighestQualification } from '../models/highestqualification.model';

@Injectable({ providedIn: 'root' })
export class HighestQualificationService {
  constructor(private http: HttpClient) { }
  getAll() {
    return this.http.get<HighestQualification[]>(`${environment.url}/api/HighestQualification/highestqualification`);
  }
}
