# address-api

連絡先管理

## Memo

sqlite-simple についてはしばらくはダウンロード対応

```zsh
cp ~/Downloads/SQLite-Simple-main/lib/SQLite/Simple.pm ~/github/address-api/lib/SQLite
```

### Environment

初動時の環境構築に関するメモ

ignore

```zsh
echo '.DS_Store' > .gitignore
echo 'local' >> .gitignore
echo 'db' >> .gitignore
```

Perl

```zsh
echo '5.32.1' > .perl-version
echo "requires 'DBD::SQLite', '==1.70';" >> cpanfile
echo "requires 'Test::Trap';" >> cpanfile
echo "requires 'Text::CSV', '2.02';" >> cpanfile
echo "requires 'Mojolicious', '9.28';" >> cpanfile
```

Module

```zsh
curl -L https://cpanmin.us/ -o cpanm
chmod +x cpanm
./cpanm -l ./local --installdeps .
```

dir

```zsh

```
