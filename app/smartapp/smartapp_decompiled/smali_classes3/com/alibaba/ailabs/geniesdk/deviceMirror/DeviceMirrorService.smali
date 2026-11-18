.class public Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "DeviceMirrorService.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/deviceMirror/IDeviceMirrorListener;


# static fields
.field private static final DeviceMirror_SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.deviceMirror"

.field private static final METHOD_GET:I = 0x2

.field private static final METHOD_GET_PRODUCT:I = 0x3

.field private static final METHOD_REFRESH:I = 0x4

.field private static final METHOD_SET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceMirrorService"

.field private static sDeviceMirrorImpl:Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;


# instance fields
.field private isInit:Z

.field private mAttribtueJson:Lorg/json/JSONObject;

.field private mContext:Landroid/content/Context;

.field private mProductJson:Lorg/json/JSONObject;

.field private mSettingJson:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mProductJson:Lorg/json/JSONObject;

    .line 29
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mSettingJson:Lorg/json/JSONObject;

    .line 30
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mAttribtueJson:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->isInit:Z

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mProductJson:Lorg/json/JSONObject;

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mSettingJson:Lorg/json/JSONObject;

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mAttribtueJson:Lorg/json/JSONObject;

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->isInit:Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;
    .locals 2

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->sDeviceMirrorImpl:Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->sDeviceMirrorImpl:Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->sDeviceMirrorImpl:Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 41
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->sDeviceMirrorImpl:Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;

    return-object p0
.end method

.method private getMirrorValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 178
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->isInit:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 180
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getMirrorValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v1

    .line 184
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p1

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mSettingJson:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "runtime_device_mirror"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "data"

    .line 190
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "str = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceMirrorService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mSettingJson:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mSettingJson:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "value"

    .line 200
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    .line 202
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method private getProductSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "value"

    .line 125
    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->isInit:Z

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 127
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getProductSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    :cond_0
    return-object v2

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mProductJson:Lorg/json/JSONObject;

    const-string v3, "str = "

    const-string v4, "DeviceMirrorService"

    const-string v5, "data"

    const/4 v6, 0x0

    if-nez v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mContext:Landroid/content/Context;

    const-string v7, "product_device_mirror"

    invoke-virtual {v1, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 137
    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mProductJson:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 142
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    :cond_2
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mProductJson:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 147
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 149
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 151
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    return-object v1

    .line 154
    :cond_3
    iget-object v7, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mAttribtueJson:Lorg/json/JSONObject;

    if-nez v7, :cond_4

    .line 155
    iget-object v7, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mContext:Landroid/content/Context;

    const-string v8, "product_attribute_mirror"

    invoke-virtual {v7, v8, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 156
    invoke-interface {v6, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mAttribtueJson:Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 161
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    :cond_4
    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mAttribtueJson:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 166
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 168
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-object v1
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.deviceMirror"

    return-object v0
.end method


# virtual methods
.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "v"

    const-string v3, "k"

    const-string v4, "DeviceMirrorService"

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    const-string v5, " value = "

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p1, "refersh the data"

    .line 98
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->refreshMirrorData()V

    goto/16 :goto_1

    .line 91
    :cond_1
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->getProductSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 84
    :cond_2
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->getMirrorValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "n"

    .line 62
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    const-string v2, "f"

    .line 63
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  value =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const-string v3, "kidMode"

    .line 66
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 68
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 70
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v3

    invoke-virtual {v3, p1, v1, p2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setMirrorValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 76
    :cond_4
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setMirrorValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    :cond_5
    :goto_0
    const-string p1, "r"

    .line 78
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    iput-boolean v2, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->isInit:Z

    :goto_1
    return-object v0
.end method

.method public onDataUpdate(Ljava/lang/String;)V
    .locals 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onDataUpdate key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceMirrorService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mContext:Landroid/content/Context;

    const-string v1, "runtime_device_mirror"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "data"

    const-string v2, ""

    .line 111
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "content://com.alibaba.ailabs.genie.assistant.provider/deviceMirror"

    .line 114
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 115
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 117
    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->mSettingJson:Lorg/json/JSONObject;

    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/deviceMirror/DeviceMirrorService;->isInit:Z

    :cond_0
    return-void
.end method
