using { order.db as db } from '../db/datamodel';
//using { zorder } from '../db/cdsviews';
using { API_BUSINESS_PARTNER1 as external } from './external/API_BUSINESS_PARTNER1';

service OrderService @(path:'OrderService') {

    entity Order as projection on db.Zorder;
    entity BusinessPartner as projection on external.A_BusinessPartner;
    //function INSERT_DummyData() returns String; 
}