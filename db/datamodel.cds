namespace order.db;
using { cuid, temporal, managed } from '@sap/cds/common';
// context master {
    entity Zorder {
        key REQUESTNUM : Integer;
        SITE : String(5);
    }
    // entity zrequest_item : managed {
    //     key REQUESTNUM : Association to zorder;
    //     key ITEM_NO : Integer;
    //     MATERIAL : String(10);
    //     MATERIALDESC : String(40);
    // }

// @cds.persistence.skip
//     entity ZSITE : cuid{
//         SITE : String(5);
//         USERID : common.Email;
//     }
    
// @cds.persistence.skip
//     entity ZMATERIAL{
//         key Material : String(10);
//         MaterialDesc: String(40);
//         Price:Decimal(10, 2);
//         Currency: String(3);
//     }
// }