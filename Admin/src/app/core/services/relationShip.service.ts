import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Relationship } from '../models/relationShip.models';

@Injectable({ providedIn: 'root' })
export class RelationshipService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<Relationship[]>(`http://localhost:64156/api/relationships`);
    }
}
