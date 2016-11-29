# URL utils zsh script
It coutains methods to encode/decode/parse an url string.

## Install
You need to install [nkf](https://ja.osdn.net/projects/nkf/) beforehand.  
If you are using oh-my-zsh, just put the file into `~/.oh-my-zsh/custom/` directory.

## How the methods work
```
$ encode-url http://example.com?query1=ほげ&query2=fuga

http%3A%2F%2Fexample%2Ecom%3Fquery1%3D%E3%81%BB%E3%81%92%26query2%3Dfuga
```

```
$ decode-url http%3A%2F%2Fexample%2Ecom%3Fquery1%3D%E3%81%BB%E3%81%92%26query2%3Dfuga

http://example.com?query1=ほげ&query2=fuga
```

```
$ parse-query http://example.com\?query1\=ほげ\&query2\=fuga

http://example.com
?query1parse-query http://example.com\?query1\=ほげ\&query2\=fuga

http://example.com
?query1=ほげ
&query2=fuga=ほげ
&query2=fuga
```

```
$ parse-and-decode-url http://example.com\?query1%3D%E3%81%BB%E3%81%92\&query2%3Dfuga


http://example.com
?query1=ほげ
&query2=fuga
```
