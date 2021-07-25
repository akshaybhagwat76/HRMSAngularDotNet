import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Branches } from '../models/branches.models';

@Injectable({ providedIn: 'root' })
export class BranchesService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<Branches[]>(`http://localhost:64156/api/branches`);
    }
}
