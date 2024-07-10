

Query: `
    {
      "operationName": null,
      "variables": {},
      "query": "{posts{id,userId,title,user{id,name,email}}}"
    }
    `

| Server         | Requests/sec | Latency (ms) | Relative |
| -------------- | ------------ | ------------ | -------- |
| Netflix DGS    | `71,312.43`  | `0.00`       | `50.08x` |
| Apollo GraphQL | `70,775.62`  | `0.00`       | `49.70x` |
| Tailcall       | `57,526.46`  | `1.73`       | `40.40x` |
| async-graphql  | `17,932.61`  | `5.57`       | `12.59x` |
| Gqlgen         | `16,185.41`  | `6.17`       | `11.37x` |
| Caliban        | `10,472.85`  | `13.14`      | `7.35x`  |
| GraphQL JIT    | `1,724.65`   | `58.10`      | `1.21x`  |
| Hasura         | `1,423.94`   | `70.35`      | `1.00x`  |

Query: `
    {
      "operationName": null,
      "variables": {},
      "query": "{posts{title}}"
    }
    `

| Server         | Requests/sec | Latency (ms) | Relative |
| -------------- | ------------ | ------------ | -------- |
| Apollo GraphQL | `70,948.76`  | `0.00`       | `39.68x` |
| Netflix DGS    | `70,602.32`  | `0.00`       | `39.48x` |
| Tailcall       | `66,194.77`  | `1.51`       | `37.02x` |
| async-graphql  | `19,611.92`  | `5.09`       | `10.97x` |
| Gqlgen         | `16,327.35`  | `6.12`       | `9.13x`  |
| Caliban        | `15,782.50`  | `6.33`       | `8.83x`  |
| Hasura         | `2,251.90`   | `44.41`      | `1.26x`  |
| GraphQL JIT    | `1,788.08`   | `55.96`      | `1.00x`  |

Query: `
    {
      "operationName": null,
      "variables": {},
      "query": "{greet}"
    }
    `

| Server         | Requests/sec | Latency (ms) | Relative |
| -------------- | ------------ | ------------ | -------- |
| Netflix DGS    | `70,943.75`  | `0.00`       | `28.65x` |
| Apollo GraphQL | `70,675.95`  | `0.00`       | `28.54x` |
| Tailcall       | `63,745.94`  | `1.56`       | `25.74x` |
| async-graphql  | `52,495.53`  | `1.90`       | `21.20x` |
| Caliban        | `49,883.89`  | `2.00`       | `20.15x` |
| Gqlgen         | `44,851.02`  | `2.22`       | `18.11x` |
| GraphQL JIT    | `5,273.72`   | `18.95`      | `2.13x`  |
| Hasura         | `2,476.12`   | `40.53`      | `1.00x`  |
