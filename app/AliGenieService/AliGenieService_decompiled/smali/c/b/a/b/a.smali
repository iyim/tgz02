.class public Lc/b/a/b/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/b/a$a;
    }
.end annotation


# static fields
.field public static a:Z = false


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1
    new-instance v0, Lc/b/a/b/o/e$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lc/b/a/b/k/c;)V
    .locals 13

    .line 1
    const-class v0, Lc/b/a/b/o/d;

    sget-object v1, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v2, Lc/b/a/b/o/d;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, ""

    if-eqz v3, :cond_5

    const-string v3, "com.aliwork.dm.rom.version"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "ro.dingtalk.build.version"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v1, "aliwork"

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v1, "dingding"

    :goto_0
    sput-object v1, Lc/b/a/b/o/d;->c:Ljava/lang/String;

    goto :goto_4

    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    :try_start_0
    const-string v1, "content://com.alibaba.ailabs.genie.assistant.provider/user_data"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "userid_key"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v4

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usrid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v2, Lc/b/a/b/o/d;->c:Ljava/lang/String;

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v4, v1

    :goto_3
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1

    :cond_5
    :goto_4
    sget-object v11, Lc/b/a/b/o/d;->c:Ljava/lang/String;

    .line 3
    invoke-static {}, Lc/b/a/b/o/d;->b()Ljava/lang/String;

    move-result-object v10

    .line 4
    sget-object v1, Lc/b/a/b/o/d;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "ro.product.submodel"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :cond_6
    sput-object v1, Lc/b/a/b/o/d;->d:Ljava/lang/String;

    const-string v2, "submodel name ="

    invoke-static {v2}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc/b/a/b/o/d;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_7
    move-object v9, v1

    .line 5
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v8, v0, v1

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    sget-boolean v0, Lc/b/a/b/a;->a:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/aligenie/ags/analytics/jni/LogProducer;->getInstance()Lcom/aligenie/ags/analytics/jni/LogProducer;

    move-result-object v6

    .line 7
    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 8
    invoke-virtual/range {v6 .. v12}, Lcom/aligenie/ags/analytics/jni/LogProducer;->setDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v1, Lc/b/a/b/a;->a:Z

    goto :goto_6

    :cond_9
    :goto_5
    invoke-static {}, Lcom/aligenie/ags/analytics/jni/LogProducer;->getInstance()Lcom/aligenie/ags/analytics/jni/LogProducer;

    move-result-object v6

    .line 9
    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 10
    invoke-virtual/range {v6 .. v12}, Lcom/aligenie/ags/analytics/jni/LogProducer;->setDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_6
    if-eqz p1, :cond_b

    .line 11
    :goto_7
    iget-object v0, p1, Lc/b/a/b/k/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_b

    .line 12
    invoke-virtual {p1, v3}, Lc/b/a/b/k/c;->a(I)Lc/b/a/b/k/b;

    move-result-object v0

    .line 13
    iget-object v0, v0, Lc/b/a/b/k/b;->a:Lorg/json/JSONObject;

    const-string v2, "event_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p1, v3}, Lc/b/a/b/k/c;->a(I)Lc/b/a/b/k/b;

    move-result-object v4

    .line 15
    iget-object v4, v4, Lc/b/a/b/k/b;->a:Lorg/json/JSONObject;

    const-string v6, "event_type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {p1, v3}, Lc/b/a/b/k/c;->a(I)Lc/b/a/b/k/b;

    move-result-object v7

    invoke-virtual {v7, v2}, Lc/b/a/b/k/b;->a(Ljava/lang/String;)Lc/b/a/b/k/b;

    invoke-virtual {p1, v3}, Lc/b/a/b/k/c;->a(I)Lc/b/a/b/k/b;

    move-result-object v2

    invoke-virtual {v2, v6}, Lc/b/a/b/k/b;->a(Ljava/lang/String;)Lc/b/a/b/k/b;

    .line 17
    sget v2, Lc/b/a/b/o/b;->a:I

    add-int/2addr v2, v1

    sput v2, Lc/b/a/b/o/b;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/b/a/b/o/d;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc/b/a/b/o/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lc/b/a/b/o/b;->a:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_3
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lc/b/a/b/o/b;->a([B)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    :catch_2
    move-exception v2

    const-class v6, Lc/b/a/b/o/b;

    const-string v7, "generate guuid(sha-256) error"

    invoke-static {v7, v6, v2}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    move-object v2, v5

    .line 18
    :goto_8
    invoke-virtual {p1, v3}, Lc/b/a/b/k/c;->a(I)Lc/b/a/b/k/b;

    move-result-object v6

    invoke-virtual {v6}, Lc/b/a/b/k/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/aligenie/ags/analytics/jni/LogProducer;->getInstance()Lcom/aligenie/ags/analytics/jni/LogProducer;

    move-result-object v7

    invoke-virtual {v7, v4, v0, v2, v6}, Lcom/aligenie/ags/analytics/jni/LogProducer;->sendTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    return-void
.end method
