const { Client } = require('@notionhq/client');
//トークンの環境変数化必須
const notion = new Client({ auth: "自分のベアラートークン" });

(async () => {
  const databaseId = '自分のデータベースID';
  const response = await notion.databases.query({
    database_id: databaseId,
    //サンプルのフィルター
    filter: {
      or: [
        {
          property: 'Is checked',
          checkbox: {
            equals: true,
          },
        },
        {
          property: 'Cost of next trip',
          number: {
            greater_than_or_equal_to: 2,
          },
        },
      ],
    },
    sorts: [
      {
        property: 'created_at',
        direction: 'descending',
      },
    ],
  });
  //コンソールログで吐き出すだけ
  console.log(response);
})();
