# Ansible
dockerを使ったテスト時にはMakefile内の`IS_TEST=false`を`IS_TEST=true`に変更する。

## 接続確認
pingを使った接続確認ができる。

```
$ make ping
```

## Test
dockerを使ってテストができるようにしている。


### テスト対象のdocker imageのビルド
```
$ make docker-build
```

### テスト対象のdocker imageの開始
```
$ make docker-run
```
