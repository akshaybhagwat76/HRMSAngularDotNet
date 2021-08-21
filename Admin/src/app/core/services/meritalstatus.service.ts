import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from "../../../environments/environment";
import { MeritalStatus } from '../models/meritalstatus';

@Injectable({
  providedIn: 'root'
})
export class MeritalstatusService {

  constructor(private http: HttpClient) { }
  getAll() {
    return this.http.get<MeritalStatus[]>(`${environment.url}/api/maritalStatus`);
  }
}
