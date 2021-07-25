import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { HigherAuthority } from '../models/higherAuthority.models';

@Injectable({ providedIn: 'root' })
export class HigherAuthorityService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<HigherAuthority[]>(`http://localhost:64156/api/higherauthorites`);
    }
}
