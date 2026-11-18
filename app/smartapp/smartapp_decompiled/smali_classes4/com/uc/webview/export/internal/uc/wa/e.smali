.class final Lcom/uc/webview/export/internal/uc/wa/e;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/uc/wa/a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/uc/wa/a;)V
    .locals 0

    .line 1229
    iput-object p1, p0, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    .line 1233
    :try_start_0
    iget-object v0, v1, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;)V

    .line 1234
    iget-object v2, v1, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 1235
    :try_start_1
    iget-object v0, v1, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/wa/a;->b(Lcom/uc/webview/export/internal/uc/wa/a;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "UC_WA_STAT"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1236
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->d()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1237
    sget-boolean v3, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v3, :cond_0

    const-string v3, "SDKWaStat"

    .line 1238
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "==handlUpload==last upload time:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    :cond_0
    sget v3, Lcom/uc/webview/export/internal/uc/wa/a;->c:I

    if-lez v3, :cond_1

    sget v3, Lcom/uc/webview/export/internal/uc/wa/a;->c:I

    goto :goto_0

    :cond_1
    const v3, 0x2932e00

    .line 1242
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v10, v6, v4

    if-eqz v10, :cond_6

    sub-long v10, v8, v6

    int-to-long v12, v3

    cmp-long v3, v10, v12

    if-gez v3, :cond_6

    .line 1245
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1246
    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v10, 0xb

    .line 1247
    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 1248
    invoke-virtual {v3, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1249
    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v10, 0xc

    if-ltz v11, :cond_2

    if-ge v11, v10, :cond_2

    if-ge v3, v10, :cond_3

    :cond_2
    if-lt v11, v10, :cond_4

    if-ltz v3, :cond_4

    if-ge v3, v10, :cond_4

    .line 1252
    :cond_3
    sget-boolean v3, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v3, :cond_6

    const-string v3, "SDKWaStat"

    const-string v10, "\u8de80\u70b9\u621612\u70b9"

    .line 1253
    invoke-static {v3, v10}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1256
    :cond_4
    sget-boolean v0, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v0, :cond_5

    const-string v0, "SDKWaStat"

    const-string v3, "\u65f6\u95f4\u95f4\u9694\u5c0f\u4e8e12\u5c0f\u65f6,\u4e0d\u4e0a\u4f20"

    .line 1257
    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    :cond_5
    monitor-exit v2

    return-void

    :cond_6
    :goto_1
    const/4 v3, 0x0

    .line 1265
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    cmp-long v11, v6, v4

    if-eqz v11, :cond_10

    .line 1267
    iget-object v11, v1, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v11, v0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v11

    .line 1268
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->l:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    .line 1270
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/wa/a;->b(Lcom/uc/webview/export/internal/uc/wa/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v13, "com.taobao.taobao"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1271
    :cond_7
    iget-object v0, v1, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;[Ljava/lang/String;)[B

    move-result-object v13

    if-nez v13, :cond_8

    .line 1273
    monitor-exit v2

    return-void

    .line 1276
    :cond_8
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->m:Landroid/webkit/ValueCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_9

    .line 1278
    :try_start_2
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->m:Landroid/webkit/ValueCallback;

    new-instance v14, Ljava/lang/String;

    const-string v15, "UTF-8"

    invoke-direct {v14, v13, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v0, v14}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    const-string v14, "SDKWaStat"

    const-string v15, "byte \u8f6c String\u5f02\u5e38!"

    .line 1280
    invoke-static {v14, v15, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1284
    :cond_9
    :goto_2
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/f;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1285
    invoke-static {v13}, Lcom/uc/webview/export/internal/uc/wa/f;->b([B)[B

    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1291
    :cond_a
    :try_start_4
    invoke-static {v13}, Lcom/uc/webview/export/internal/uc/wa/f;->a([B)[B

    move-result-object v13
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1293
    :try_start_5
    sget-boolean v0, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v0, :cond_b

    const-string v0, "SDKWaStat"

    .line 1294
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "getUploadData encrypt:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v15, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_b
    const/4 v12, 0x1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v14, v13

    const/4 v13, 0x1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v14, v13

    const/4 v13, 0x0

    :goto_3
    :try_start_6
    const-string v15, "SDKWaStat"

    const-string v12, "data encrypt error:"

    .line 1297
    invoke-static {v15, v12, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v12, v13

    move-object v13, v14

    .line 1301
    :goto_4
    invoke-static {v11, v12}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1302
    sget-boolean v11, Lcom/uc/webview/export/internal/uc/wa/a;->b:Z

    if-eqz v11, :cond_c

    const-string v11, "SDKWaStat"

    .line 1303
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "request url:"

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/4 v11, 0x3

    :goto_5
    add-int/lit8 v12, v11, -0x1

    if-lez v11, :cond_e

    .line 1310
    invoke-static {v0, v13}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;[B)Z

    move-result v11

    if-eqz v11, :cond_d

    const/4 v11, 0x1

    goto :goto_6

    :cond_d
    move v11, v12

    goto :goto_5

    :cond_e
    const/4 v11, 0x0

    .line 1316
    :goto_6
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->l:Landroid/webkit/ValueCallback;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_f

    .line 1318
    :try_start_7
    iget-object v0, v1, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/wa/a;->d(Lcom/uc/webview/export/internal/uc/wa/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v12, "SDKWaStat"

    .line 1320
    invoke-static {v12, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    sget-object v12, Lcom/uc/webview/export/internal/SDKFactory;->l:Landroid/webkit/ValueCallback;

    invoke-interface {v12, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/16 v16, 0x1

    goto :goto_7

    :catch_3
    move-exception v0

    :try_start_8
    const-string v12, "SDKWaStat"

    const-string v13, "\u7b2c\u4e09\u65b9\u4e0a\u4f20\u6570\u636e\u51fa\u9519!"

    .line 1325
    invoke-static {v12, v13, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    move/from16 v16, v11

    goto :goto_7

    :cond_10
    const/16 v16, 0x0

    :goto_7
    if-eqz v16, :cond_11

    .line 1332
    new-instance v0, Ljava/io/File;

    iget-object v11, v1, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v11}, Lcom/uc/webview/export/internal/uc/wa/a;->e(Lcom/uc/webview/export/internal/uc/wa/a;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->e()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1334
    iget-object v0, v1, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    aget-object v11, v3, v10

    invoke-static {v0, v8, v9, v11}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;JLjava/lang/String;)V

    :cond_11
    cmp-long v0, v6, v4

    if-nez v0, :cond_12

    const-string v0, "SDKWaStat"

    const-string v4, "\u9996\u6b21\u4e0d\u4e0a\u4f20\u6570\u636e"

    .line 1338
    invoke-static {v0, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    iget-object v0, v1, Lcom/uc/webview/export/internal/uc/wa/e;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    aget-object v3, v3, v10

    invoke-static {v0, v8, v9, v3}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;JLjava/lang/String;)V

    .line 1341
    :cond_12
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    move-exception v0

    const-string v2, "SDKWaStat"

    const-string v3, "handlUpload"

    .line 1343
    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
