.class public Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;
.super Ljava/lang/Object;
.source "AccountDispatch.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/account/IAccountRequest;


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountDispatch"


# instance fields
.field private mAccountBind:Lcom/alibaba/ailabs/geniesdk/account/IAccountBind;

.field private mAccountBindUI:Lcom/alibaba/ailabs/geniesdk/account/IAccountBindUI;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private onBind(Lcom/alibaba/ailabs/geniesdk/account/AccountRequest;)Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;->mAccountBind:Lcom/alibaba/ailabs/geniesdk/account/IAccountBind;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/geniesdk/account/IAccountBind;->onBind(Lcom/alibaba/ailabs/geniesdk/account/AccountRequest;)Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private onBindUI()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;->mAccountBindUI:Lcom/alibaba/ailabs/geniesdk/account/IAccountBindUI;

    const-string v1, "AccountDispatch"

    if-eqz v0, :cond_0

    .line 103
    :try_start_0
    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/account/IAccountBindUI;->onBindUI()V

    const-string v2, "request bind ui"

    .line 104
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 108
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request bind ui fail, accountBindUI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onAccountRequest(ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "userId"

    const-string v1, "state"

    const-string v2, "message"

    const-string v3, "response = "

    const-string v4, "AccountDispatch"

    const/4 v5, 0x0

    const/16 v6, 0x100

    if-ne p1, v6, :cond_0

    .line 18
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;->onBindUI()V

    goto/16 :goto_2

    :cond_0
    const/16 v6, 0x200

    if-ne p1, v6, :cond_4

    .line 21
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance p2, Lcom/alibaba/ailabs/geniesdk/account/AccountRequest;

    invoke-direct {p2}, Lcom/alibaba/ailabs/geniesdk/account/AccountRequest;-><init>()V

    const-string v6, "client_id"

    .line 24
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/alibaba/ailabs/geniesdk/account/AccountRequest;->clientId:Ljava/lang/String;

    const-string v6, "timestamp"

    .line 25
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p2, Lcom/alibaba/ailabs/geniesdk/account/AccountRequest;->timestamp:J

    const-string v6, "device_signature"

    .line 27
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/alibaba/ailabs/geniesdk/account/AccountRequest;->signature:Ljava/lang/String;

    const-string v6, "device_id"

    .line 28
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/ailabs/geniesdk/account/AccountRequest;->deviceId:Ljava/lang/String;

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request = "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/account/AccountRequest;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;->onBind(Lcom/alibaba/ailabs/geniesdk/account/AccountRequest;)Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;

    move-result-object p1

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string v6, ""

    :goto_0
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;->isValid()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 38
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "code"

    const/16 v7, 0xc8

    .line 39
    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    invoke-virtual {p2, v2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "access_token"

    .line 44
    iget-object v7, p1, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;->accessToken:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "access_expires_in"

    .line 45
    iget-wide v7, p1, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;->accessExpiresTime:J

    invoke-virtual {v2, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "refresh_token"

    .line 46
    iget-object v7, p1, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;->refreshToken:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "refresh_expires_in"

    .line 47
    iget-wide v7, p1, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;->refreshExpiresTime:J

    invoke-virtual {v2, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 48
    invoke-virtual {v2, v1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "auth_result"

    .line 49
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "user_open_id"

    .line 53
    iget-object v6, p1, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;->userOpenId:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uuid"

    .line 54
    iget-object v6, p1, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "register_result"

    .line 55
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 59
    iget-object v2, p1, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;->extension:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_2

    .line 61
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;->extension:Ljava/lang/String;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception p1

    .line 63
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    :cond_2
    :goto_1
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 68
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string p1, "extension"

    .line 71
    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-object v5
.end method

.method public setAccountBind(Lcom/alibaba/ailabs/geniesdk/account/IAccountBind;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;->mAccountBind:Lcom/alibaba/ailabs/geniesdk/account/IAccountBind;

    return-void
.end method

.method public setAccountBindUI(Lcom/alibaba/ailabs/geniesdk/account/IAccountBindUI;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;->mAccountBindUI:Lcom/alibaba/ailabs/geniesdk/account/IAccountBindUI;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;->mUserId:Ljava/lang/String;

    return-void
.end method
