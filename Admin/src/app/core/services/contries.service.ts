import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Contries } from '../models/contries.models';

@Injectable({ providedIn: 'root' })
export class ContriesService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<Contries[]>(`http://localhost:64156/api/countries`);
    }
}
