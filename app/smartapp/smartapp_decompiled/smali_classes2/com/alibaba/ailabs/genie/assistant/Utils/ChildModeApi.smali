.class public Lcom/alibaba/ailabs/genie/assistant/Utils/ChildModeApi;
.super Ljava/lang/Object;
.source "ChildModeApi.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.alibaba.ailabs.childmode.provider"

.field private static final CHILD_MODE_SETTING_URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/childModeSettingPage"

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final ENABLE_CHILD_MODE_URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/childmode?type="

.field private static final EYEYIELD_MODE_SETTING_URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/eyeyieldModeSettingPage"

.field private static final LISTEN_MODE_SETTING_URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/listenModeSettingPage"

.field private static final MEHTOD_enableEyeYieldMode:I = 0x3

.field private static final MEHTOD_getAvailableTime:I = 0x4

.field private static final MEHTOD_isChildMode:I = 0x1

.field private static final MEHTOD_isEyeYieldMode:I = 0x2

.field private static final METHOD:Ljava/lang/String; = "method"

.field private static final METHOD_enableListenMode:I = 0x8

.field private static final METHOD_isListenMode:I = 0x7

.field private static final PARAM:Ljava/lang/String; = "param"

.field private static final RET:Ljava/lang/String; = "ret"

.field private static final TABLE_NAME:Ljava/lang/String; = "childMode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static enableChildMode(Landroid/content/Context;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "genie://com.alibaba.ailabs.genie.datacenter/childmode?type=open"

    goto :goto_0

    :cond_0
    const-string p1, "genie://com.alibaba.ailabs.genie.datacenter/childmode?type=exit"

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 147
    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/ChildModeApi;->openURI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static enableChildMode(Landroid/content/Context;ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    const-string p2, "genieApp"

    :goto_0
    if-eqz p1, :cond_1

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "genie://com.alibaba.ailabs.genie.datacenter/childmode?type=open&from="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 164
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "genie://com.alibaba.ailabs.genie.datacenter/childmode?type=exit&from="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 166
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/ChildModeApi;->openURI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static enableEyeYieldMode(Landroid/content/Context;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 208
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.alibaba.ailabs.childmode.provider/childMode"

    .line 209
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 210
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 212
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "param"

    .line 213
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "method"

    const/4 v2, 0x3

    .line 215
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 218
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    :goto_0
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw p0
.end method

.method public static enableGestureMode(Landroid/content/Context;Z)V
    .locals 4

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableListenMode"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 292
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/gesturerecognize"

    .line 293
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 294
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 296
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "isopen"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 297
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    invoke-virtual {p0, v1, v2, v0, v0}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p0, v0

    goto :goto_3

    :catch_1
    move-exception p1

    .line 300
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 302
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    :goto_2
    return-void

    :goto_3
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw p1
.end method

.method public static enableListenMode(Landroid/content/Context;ZZ)V
    .locals 3

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  parentMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableListenMode"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 264
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.alibaba.ailabs.childmode.provider/childMode"

    .line 265
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 266
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 268
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "param"

    .line 269
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "data"

    .line 270
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "method"

    const/16 p2, 0x8

    .line 271
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 274
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :goto_0
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw p0
.end method

.method public static getAvailableTime(Landroid/content/Context;)I
    .locals 8

    const/4 v0, 0x0

    .line 317
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.alibaba.ailabs.childmode.provider/childMode"

    .line 318
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 319
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "method"

    const/4 v4, 0x4

    .line 323
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v4, 0x0

    .line 326
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 325
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 327
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 331
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 332
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object p0, v0

    .line 329
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 331
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 332
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    const/4 p0, 0x0

    return p0

    :catchall_1
    move-exception v1

    .line 331
    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 332
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static isChildMode(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.alibaba.ailabs.childmode.provider/childMode"

    .line 112
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 113
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "method"

    const/4 v4, 0x1

    .line 118
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v4, 0x0

    .line 121
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 120
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 127
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object p0, v0

    .line 124
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 127
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    const/4 p0, 0x0

    return p0

    :catchall_1
    move-exception v1

    .line 126
    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 127
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static isEyeYieldMode(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    .line 178
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.alibaba.ailabs.childmode.provider/childMode"

    .line 179
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 180
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "method"

    const/4 v4, 0x2

    .line 185
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v4, 0x0

    .line 188
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 187
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 193
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 194
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object p0, v0

    .line 191
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 193
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 194
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    const/4 p0, 0x0

    return p0

    :catchall_1
    move-exception v1

    .line 193
    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 194
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static isListenMode(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    .line 233
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.alibaba.ailabs.childmode.provider/childMode"

    .line 234
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 235
    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "method"

    const/4 v4, 0x7

    .line 238
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v4, 0x0

    .line 241
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 240
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 242
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 246
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 247
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object p0, v0

    .line 244
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 246
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 247
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    const/4 p0, 0x0

    return p0

    :catchall_1
    move-exception v1

    .line 246
    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 247
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v1
.end method

.method public static openChildModeSettingPage(Landroid/content/Context;)V
    .locals 3

    const-string v0, "genie://com.alibaba.ailabs.genie.datacenter/childModeSettingPage"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 80
    invoke-static {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/ChildModeApi;->openURI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static openEyeyieldModeSettingPage(Landroid/content/Context;)V
    .locals 3

    const-string v0, "genie://com.alibaba.ailabs.genie.datacenter/eyeyieldModeSettingPage"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 89
    invoke-static {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/ChildModeApi;->openURI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static openListenModeSettingPage(Landroid/content/Context;)V
    .locals 3

    const-string v0, "genie://com.alibaba.ailabs.genie.datacenter/listenModeSettingPage"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 98
    invoke-static {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/ChildModeApi;->openURI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static openURI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 56
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 60
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    const/high16 p1, 0x10000000

    .line 66
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 57
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
