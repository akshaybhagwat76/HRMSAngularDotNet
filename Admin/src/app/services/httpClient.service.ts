import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { environment } from '../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class HttpClientService {

  constructor(private _http: HttpClient) { }

  //domainURL = environment.apiBaseUrl;
  domainURL;


  // Http Options
  httpOptions = {
    headers: new HttpHeaders({
      'Content-Type': 'application/json'
    })
  };


  get(endpoint, schema) {
    this.domainURL = environment[schema];
    console.log("DomainUrl", this.domainURL);
    return this._http.get(this.domainURL + "/" + endpoint);
  }

  post(endpoint, bodyParams, schema) {

    console.log(bodyParams);
    this.domainURL = environment[schema];
    return this._http.post(this.domainURL + "/" + endpoint, bodyParams);
  }
 

  put(endpoint, bodyParams, schema) {
    console.log(bodyParams + "in put : " + this.domainURL + endpoint)
    this.domainURL = environment[schema];
    return this._http.put(this.domainURL + "/" + endpoint, bodyParams,this.httpOptions);
  }

  delete(endpoint, schema) {
    this.domainURL = environment[schema];
    return this._http.delete(this.domainURL + "/" + endpoint);
  }

}
