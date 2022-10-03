import { createDbWorker } from "sql.js-httpvfs";

const workerUrl = new URL(
  "sql.js-httpvfs/dist/sqlite.worker.js",
  import.meta.url
);
const wasmUrl = new URL("sql.js-httpvfs/dist/sql-wasm.wasm", import.meta.url);

async function load() {
  const worker = await createDbWorker(
    [
      {
        from: "inline",
        config: {
          serverMode: "full",
          url: "/books.sqlite3",
          requestChunkSize: 4096,
        },
      },
    ],
    workerUrl.toString(),
    wasmUrl.toString()
  );

  const result = await worker.db.query(`select * from books`);

  document.getElementById('content').textContent = JSON.stringify(result);
  
  if ((document.getElementById('content').textContent = JSON.stringify(result)) != null) {
	console.log((document.getElementById('content').textContent = JSON.stringify(result)).value);
  }
}

load();
