const cds = require('@sap/cds');
const SequenceHelper = require("./lib/SequenceHelper");

module.exports = cds.service.impl(async (service) => {
	const db = await cds.connect.to("db");
	const { Order } = service.entities;

	service.before("CREATE", Order, async (context) => {
		const REQUESTNUM = new SequenceHelper({
			db: db,
			sequence: "PRODUCT_ID",
			table: "ORDER_DB_ZORDER",
			field: "REQUESTNUM"
		});

		context.data.REQUESTNUM = await REQUESTNUM.getNextNumber();
	});
});


// module.exports = cds.service.impl(async function() {
//   const { Order } = this.entities;

//   this.before('CREATE', Order, (req,res) => {
//     console.log("Aa gya" + req.data.Site + OrderList);
//     //Read data from DB
//     req.data.RequestNum = '1000000004';
//   });

//   this.on('INSERT_DummyData', async (req) => {
//     const tx = cds.transaction(req);
//     const dummyData = [
//         {
//             ID: '02BD2137-0890-1EEA-A6C2-BB55C198E8DB',
//             RequestNum: 1000000001,
//             Site: 'AD01' 
//       }
//       // ... add more dummy records as needed
//     ];

//     try {
//       await tx.create(MyEntities).entries(dummyData);
//       return 'Dummy data inserted successfully';
//     } catch (error) {
//       req.error(500, `Error inserting dummy data: ${error.message}`);
//     }
//   });
// });
