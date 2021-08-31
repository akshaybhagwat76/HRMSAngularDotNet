import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Branches } from '../models/branches.models';
import { environment } from "../../../environments/environment";

@Injectable({ providedIn: 'root' })
export class BranchesService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<Branches[]>(`${environment.url}/api/branches`);
    }
}
