import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Cast } from '../models/cast.models';

@Injectable({ providedIn: 'root' })
export class CastService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<Cast[]>(`http://localhost:64156/api/casts`);
    }
}
