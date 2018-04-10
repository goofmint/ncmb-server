# ncmb-server

ニフティクラウド mobile backendのJavaScript SDKでクライアントキーを隠すためのサーバです。

こちらは古いので [https://github.com/NCMBMania/ncmb_server_v2](https://github.com/NCMBMania/ncmb_server_v2) をご利用ください。

## Heroku button

[NCMBの管理画面](https://console.mb.cloud.nifty.com/)にてアプリを作成、クライアントキーを取得してください。その後、以下のボタンからHerokuアプリを作成してください。

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## 使い方

```
<script>
var HEROKU_URL = "HEROKU_SERVER";
</script>
<script src="HEROKU_SERVER/ncmb.js"></script>
```
