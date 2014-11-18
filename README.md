# Crunch-Starter

This is a starter project for [Crunch](https://github.com/jondot/crunch), the Go based ETL toolkit for Hadoop.

## Quick Start

Clone or download this project

```
$ git clone --depth 1 https://github.com/jondot/crunch-starter
$ rm -rf .git
```

Hack on `main.go` (or use a different starting point from `/samples`)

```go
row := crunch.NewRow()
row.FieldWithDefault("ip", "", makeQuery("x-forwarded-for"), transform.AsIs)
row.FieldWithDefault("ev_ts", "", makeQuery("head.timestamp"), transform.AsIs)
row.FieldWithDefault("ev_json", "", makeQuery("action"), transform.AsJson)
:
:
etc.
```

Build and generate stubs

```
$ make
built "process"
$ make stubs
built "process".
2014/11/19 00:04:22 Generated: crunch.pig
2014/11/19 00:04:22 Generated: crunch.hql
```

If you want to tweak the default templates, their in `/templates`


