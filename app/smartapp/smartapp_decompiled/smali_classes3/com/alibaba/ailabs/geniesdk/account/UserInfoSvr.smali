.class public Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "UserInfoSvr.java"


# static fields
.field private static final METHOD_GETIDENTIFICIATIONID:I = 0x2

.field private static final METHOD_GETINFO:I = 0x0

.field private static final METHOD_UPDATEUSERINFO:I = 0x1

.field public static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.userinfo"

.field public static final TAG:Ljava/lang/String; = "UserInfoSvr"

.field private static sInstance:Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;
    .locals 2

    .line 30
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 37
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.userinfo"

    return-object v0
.end method


# virtual methods
.method public notifyDataChanger()V
    .locals 3

    const-string v0, "UserInfoSvr"

    const-string v1, " onUserInfoUpdate"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "content://com.alibaba.ailabs.genie.assistant.provider/userinfo"

    .line 94
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 95
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "v"

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "st"

    const-string v4, "USER_ID"

    .line 63
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "a"

    .line 64
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "at"

    const-string v6, "SKILL_ID"

    .line 65
    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v6

    .line 67
    invoke-static {p2}, Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;->getBinder(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object p2

    if-eqz v6, :cond_1

    .line 71
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v8, "applicationKey"

    .line 73
    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "applicationType"

    .line 74
    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sourceIDType"

    .line 75
    invoke-virtual {v7, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    .line 80
    :goto_0
    new-instance v4, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;

    invoke-direct {v4, p2}, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;-><init>(Landroid/os/IBinder;)V

    const-string p2, "AliGenie.Account"

    const-string v5, "GetIdentificationId"

    invoke-virtual {v6, p2, v5, p1, v4}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 v2, 0x1

    .line 85
    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 54
    :cond_2
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 57
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->updateAccountInfo()Z

    move-result v2

    .line 59
    :cond_3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 49
    :cond_4
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getinstace()Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/account/UserInfoSvr;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getUserData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method
