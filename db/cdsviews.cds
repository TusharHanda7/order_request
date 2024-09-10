//namespace order.cds;
// using { zorder } from './datamodel';

// context cdsviews {
//     define view![Order] as 
//     select from zorder{
//         ID as![ID],
//         REQUESTNUM as![RequestNum],
//         // createdAt as![CreatedAt],
//         // createdBy as![CreatedBy],
//         SITE as![Site],
//     };
    // define view![RequestItem] as 
    // select from master.zrequest_item{
    //     REQUESTNUM as![ID],
    //     ITEM_NO as![ItemNo],
    //     MATERIAL as![Material],
    //     MATERIALDESC as![MaterialDesc],
    //     GROSS_AMOUNT as![GrossAmount],
    //     CURRENCY as![Currency],
    //     TAX_AMOUNT as![TaxAmount],
    //     NET_AMOUNT as![NetAmount],
    // }
    // define view![Site] as 
    // select from master.ZSITE{
    //     ID,
    //     SITE as![Site],
    //     USERID as![UserID],
    // }

    // define view![Material] as 
    // select from master.ZMATERIAL{
    //     Material,
    //     MaterialDesc,
    //     Price,
    //     Currency
    // }
// }