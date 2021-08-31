import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class EmployeeMasterService {

  constructor(private http: HttpClient) { }

  post(data) {
    return this.http.post<any>(`${environment.url}/api/EmployeeMaster/AddOrUpdateEmployeeMaster`, data);
  }
  search(data){
    return this.http.post<any>(`${environment.url}/api/EmployeeMaster/SearchEmployee`, data);
  }
}
