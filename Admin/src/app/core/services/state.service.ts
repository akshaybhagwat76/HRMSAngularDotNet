import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { State } from '../models/state.models';

@Injectable({ providedIn: 'root' })
export class StateService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<State[]>(`http://localhost:64156/api/states`);
    }
}
