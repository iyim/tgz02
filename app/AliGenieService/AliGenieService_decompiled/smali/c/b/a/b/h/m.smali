.class public Lc/b/a/b/h/m;
.super Lc/b/a/b/h/k;
.source ""


# instance fields
.field public c:Lc/b/a/b/g/c$a;


# direct methods
.method public constructor <init>(Lc/b/a/b/h/i$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/b/a/b/h/k;-><init>(Lc/b/a/b/h/i$a;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 34

    move-object/from16 v1, p0

    const-class v2, Lc/b/a/b/h/m;

    const-string v0, "start collect localaddr info"

    invoke-static {v0, v2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lc/b/a/b/g/c;->a()Lc/b/a/b/g/c;

    move-result-object v12

    .line 1
    const-class v13, Lc/b/a/b/g/c;

    iget-object v0, v12, Lc/b/a/b/g/c;->a:Lc/b/a/b/g/c$a;

    const-string v14, "areaId"

    const-string v15, "area"

    const-string v10, "ispId"

    const-string v11, "isp"

    const-string v9, "countyId"

    const-string v8, "county"

    const-string v7, "cityId"

    const-string v6, "city"

    const-string v5, "regionId"

    const-string v4, "region"

    const-string v3, "countryId"

    move-object/from16 v16, v10

    const-string v10, "country"

    move-object/from16 v17, v10

    const-string v10, "ip"

    if-nez v0, :cond_6

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v18, "com.yunos.tv.base.client.service.area.getIpInfo"

    const-string v19, "1.0"

    invoke-static {}, Lc/b/a/b/o/d;->b()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v3

    :try_start_0
    const-string v3, "http://api.m.taobao.com/rest/api3.do?"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v22, v10

    .line 3
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v23, Lc/b/a/b/g/c;->f:Ljava/lang/String;

    sget-object v24, Lc/b/a/b/g/c;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v25, -0x1

    move-object/from16 v27, v21

    move-object v3, v12

    move-object/from16 v28, v4

    move-object/from16 v4, v18

    move-object/from16 v29, v5

    move-object/from16 v5, v19

    move-object/from16 v30, v6

    move-object/from16 v6, v20

    move-object/from16 v31, v7

    move-object/from16 v7, v23

    move-object/from16 v32, v8

    move-object/from16 v8, v24

    move-object/from16 v18, v2

    move-object v2, v9

    move-object v9, v0

    move-object v0, v10

    move-object/from16 v19, v15

    move-object/from16 v1, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v12

    move-object v12, v11

    move-object/from16 v33, v17

    move-object/from16 v17, v14

    move-object/from16 v14, v33

    move-wide/from16 v10, v25

    :try_start_2
    invoke-virtual/range {v3 .. v11}, Lc/b/a/b/g/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Lc/b/a/b/o/i;->b(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v3, 0x1388

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    const-string v3, "access mtop fail"

    invoke-static {v3, v13}, Lc/b/a/b/o/i;->c(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 4
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "obj:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lc/b/a/b/o/i;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "ret"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SUCCESS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "data"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_5

    :cond_2
    const-string v0, "get response message has fail"

    goto :goto_1

    :cond_3
    const-string v0, "get response message is null"

    :goto_1
    invoke-static {v0, v13}, Lc/b/a/b/o/i;->c(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object v2, v9

    move-object/from16 v19, v15

    move-object/from16 v1, v16

    move-object/from16 v27, v21

    move-object/from16 v15, v22

    :goto_2
    move-object/from16 v16, v12

    move-object v12, v11

    move-object/from16 v33, v17

    move-object/from16 v17, v14

    move-object/from16 v14, v33

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object v2, v9

    move-object/from16 v19, v15

    move-object/from16 v1, v16

    move-object/from16 v27, v21

    move-object v15, v10

    goto :goto_2

    :goto_3
    const-string v3, "request JSONObject error"

    invoke-static {v3, v13, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    :goto_4
    const/4 v0, 0x0

    .line 6
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "objectResult:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    if-eqz v0, :cond_4

    goto :goto_6

    :cond_4
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_5

    move-object/from16 v11, v17

    move-object/from16 v10, v19

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    move-object/from16 v9, v32

    goto/16 :goto_d

    .line 7
    :cond_5
    new-instance v3, Lc/b/a/b/g/c$a;

    invoke-direct {v3}, Lc/b/a/b/g/c$a;-><init>()V

    :try_start_3
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    iput-object v4, v3, Lc/b/a/b/g/c$a;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10
    iput-object v4, v3, Lc/b/a/b/g/c$a;->b:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    move-object/from16 v4, v27

    .line 11
    :try_start_4
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 12
    iput-object v5, v3, Lc/b/a/b/g/c$a;->c:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    move-object/from16 v5, v28

    .line 13
    :try_start_5
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 14
    iput-object v6, v3, Lc/b/a/b/g/c$a;->d:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    move-object/from16 v6, v29

    .line 15
    :try_start_6
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 16
    iput-object v7, v3, Lc/b/a/b/g/c$a;->e:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    move-object/from16 v7, v30

    .line 17
    :try_start_7
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 18
    iput-object v8, v3, Lc/b/a/b/g/c$a;->f:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-object/from16 v8, v31

    .line 19
    :try_start_8
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 20
    iput-object v9, v3, Lc/b/a/b/g/c$a;->g:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-object/from16 v9, v32

    .line 21
    :try_start_9
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 22
    iput-object v10, v3, Lc/b/a/b/g/c$a;->h:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 24
    iput-object v10, v3, Lc/b/a/b/g/c$a;->i:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 26
    iput-object v10, v3, Lc/b/a/b/g/c$a;->j:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 28
    iput-object v10, v3, Lc/b/a/b/g/c$a;->k:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    move-object/from16 v10, v19

    .line 29
    :try_start_a
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 30
    iput-object v11, v3, Lc/b/a/b/g/c$a;->l:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    move-object/from16 v11, v17

    .line 31
    :try_start_b
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    iput-object v0, v3, Lc/b/a/b/g/c$a;->m:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_e

    :catch_3
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    move-object/from16 v11, v17

    goto :goto_c

    :catch_5
    move-exception v0

    move-object/from16 v11, v17

    move-object/from16 v10, v19

    goto :goto_c

    :catch_6
    move-exception v0

    move-object/from16 v11, v17

    move-object/from16 v10, v19

    :goto_7
    move-object/from16 v9, v32

    goto :goto_c

    :catch_7
    move-exception v0

    move-object/from16 v11, v17

    move-object/from16 v10, v19

    :goto_8
    move-object/from16 v8, v31

    goto :goto_7

    :catch_8
    move-exception v0

    move-object/from16 v11, v17

    move-object/from16 v10, v19

    :goto_9
    move-object/from16 v7, v30

    goto :goto_8

    :catch_9
    move-exception v0

    move-object/from16 v11, v17

    move-object/from16 v10, v19

    goto :goto_b

    :catch_a
    move-exception v0

    move-object/from16 v11, v17

    move-object/from16 v10, v19

    goto :goto_a

    :catch_b
    move-exception v0

    move-object/from16 v11, v17

    move-object/from16 v10, v19

    move-object/from16 v4, v27

    :goto_a
    move-object/from16 v5, v28

    :goto_b
    move-object/from16 v6, v29

    goto :goto_9

    :goto_c
    const-string v3, "parse2LocalAddr error:"

    .line 33
    invoke-static {v3, v13, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    :goto_d
    const/4 v3, 0x0

    :goto_e
    move-object v0, v3

    move-object/from16 v3, v16

    .line 34
    iput-object v0, v3, Lc/b/a/b/g/c;->a:Lc/b/a/b/g/c$a;

    goto :goto_f

    :cond_6
    move-object/from16 v18, v2

    move-object v2, v9

    move-object/from16 v1, v16

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v12

    move-object v12, v11

    move-object v11, v14

    move-object/from16 v14, v17

    move-object/from16 v33, v15

    move-object v15, v10

    move-object/from16 v10, v33

    :goto_f
    iget-object v0, v3, Lc/b/a/b/g/c;->a:Lc/b/a/b/g/c$a;

    move-object/from16 v3, p0

    .line 35
    iput-object v0, v3, Lc/b/a/b/h/m;->c:Lc/b/a/b/g/c$a;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    iget-object v13, v3, Lc/b/a/b/h/m;->c:Lc/b/a/b/g/c$a;

    if-nez v13, :cond_7

    const-string v1, "get current local addr error,so give up collect!"

    move-object/from16 v13, v18

    invoke-static {v1, v13}, Lc/b/a/b/o/i;->c(Ljava/lang/String;Ljava/lang/Class;)V

    return v0

    :cond_7
    move-object/from16 v16, v2

    move-object/from16 v13, v18

    .line 36
    iget-object v2, v3, Lc/b/a/b/h/k;->b:Landroid/content/Context;

    move-object/from16 v32, v9

    const-string v9, "PrefsFile"

    invoke-virtual {v2, v9, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "local_addr_info"

    move-object/from16 v17, v9

    const/4 v9, 0x0

    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "currentLocalAddr:"

    .line 37
    invoke-static {v9}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v18, v2

    iget-object v2, v3, Lc/b/a/b/h/m;->c:Lc/b/a/b/g/c$a;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",lastLocalAddr:"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v2, v3, Lc/b/a/b/h/m;->c:Lc/b/a/b/g/c$a;

    invoke-virtual {v2}, Lc/b/a/b/g/c$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-object/from16 v19, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    new-instance v0, Lc/b/a/b/i/k;

    const-string v2, "localaddr_info"

    invoke-direct {v0, v9, v10, v2}, Lc/b/a/b/i/k;-><init>(JLjava/lang/String;)V

    const-string v9, "event_type"

    const-string v10, "system"

    invoke-virtual {v0, v9, v10}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    const-string v9, "event_name"

    invoke-virtual {v0, v9, v2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    iget-object v2, v3, Lc/b/a/b/h/m;->c:Lc/b/a/b/g/c$a;

    .line 39
    iget-object v2, v2, Lc/b/a/b/g/c$a;->a:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v15, v2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    iget-object v2, v3, Lc/b/a/b/h/m;->c:Lc/b/a/b/g/c$a;

    .line 41
    iget-object v2, v2, Lc/b/a/b/g/c$a;->b:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v14, v2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    iget-object v2, v3, Lc/b/a/b/h/m;->c:Lc/b/a/b/g/c$a;

    .line 43
    iget-object v2, v2, Lc/b/a/b/g/c$a;->c:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v4, v2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    iget-object v2, v3, Lc/b/a/b/h/m;->c:Lc/b/a/b/g/c$a;

    .line 45
    iget-object v2, v2, Lc/b/a/b/g/c$a;->d:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v5, v2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    iget-object v2, v3, Lc/b/a/b/h/m;->c:Lc/b/a/b/g/c$a;

    .line 47
    iget-object v2, v2, Lc/b/a/b/g/c$a;->e:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v6, v2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    iget-object v2, v3, Lc/b/a/b/h/m;->c:Lc/b/a/b/g/c$a;

    .line 49
    iget-object v2, v2, Lc/b/a/b/g/c$a;->f:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v7, v2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    iget-object v2, v3, Lc/b/a/b/h/m;->c:Lc/b/a/b/g/c$a;

    .line 51
    iget-object v2, v2, Lc/b/a/b/g/c$a;->g:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v8, v2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    iget-object v2, v3, Lc/b/a/b/h/m;->c:Lc/b/a/b/g/c$a;

    .line 53
    iget-object v2, v2, Lc/b/a/b/g/c$a;->j:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v12, v2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    iget-object v2, v3, Lc/b/a/b/h/m;->c:Lc/b/a/b/g/c$a;

    .line 55
    iget-object v2, v2, Lc/b/a/b/g/c$a;->k:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1, v2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    iget-object v1, v3, Lc/b/a/b/h/m;->c:Lc/b/a/b/g/c$a;

    .line 57
    iget-object v1, v1, Lc/b/a/b/g/c$a;->l:Ljava/lang/String;

    move-object/from16 v2, v19

    .line 58
    invoke-virtual {v0, v2, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    iget-object v1, v3, Lc/b/a/b/h/m;->c:Lc/b/a/b/g/c$a;

    .line 59
    iget-object v1, v1, Lc/b/a/b/g/c$a;->m:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v11, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    iget-object v1, v3, Lc/b/a/b/h/m;->c:Lc/b/a/b/g/c$a;

    .line 61
    iget-object v1, v1, Lc/b/a/b/g/c$a;->h:Ljava/lang/String;

    move-object/from16 v2, v32

    .line 62
    invoke-virtual {v0, v2, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    iget-object v1, v3, Lc/b/a/b/h/m;->c:Lc/b/a/b/g/c$a;

    .line 63
    iget-object v1, v1, Lc/b/a/b/g/c$a;->i:Ljava/lang/String;

    move-object/from16 v2, v16

    .line 64
    invoke-virtual {v0, v2, v1}, Lc/b/a/b/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    invoke-static {}, Lcom/aligenie/ags/analytics/jni/LogProducer;->getInstance()Lcom/aligenie/ags/analytics/jni/LogProducer;

    move-result-object v1

    iget-object v2, v3, Lc/b/a/b/h/m;->c:Lc/b/a/b/g/c$a;

    .line 65
    iget-object v2, v2, Lc/b/a/b/g/c$a;->a:Ljava/lang/String;

    const-string v4, "yes"

    .line 66
    invoke-virtual {v1, v2, v4}, Lcom/aligenie/ags/analytics/jni/LogProducer;->setNetInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v1, v3, Lc/b/a/b/h/i;->a:Lc/b/a/b/h/i$a;

    check-cast v1, Lc/b/a/b/d;

    .line 68
    iget-object v1, v1, Lc/b/a/b/d;->n:Lc/b/a/b/e;

    invoke-virtual {v1, v0}, Lc/b/a/b/e;->a(Lc/b/a/b/i/i;)V

    .line 69
    iget-object v0, v3, Lc/b/a/b/h/m;->c:Lc/b/a/b/g/c$a;

    invoke-virtual {v0}, Lc/b/a/b/g/c$a;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, v3, Lc/b/a/b/h/k;->b:Landroid/content/Context;

    const/4 v2, 0x0

    move-object/from16 v4, v17

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    return v0
.end method
