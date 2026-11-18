.class public Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "AccountInfo.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/account/IAccountBindUI;
.implements Lcom/alibaba/ailabs/geniesdk/account/IAccountBind;


# static fields
.field private static final onBind:I = 0x1

.field private static final onBindUI:I


# instance fields
.field private clientId:Ljava/lang/String;

.field private clientKey:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientKey()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->clientKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public onBind(Lcom/alibaba/ailabs/geniesdk/account/AccountRequest;)Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;
    .locals 7

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    iget-object v1, p1, Lcom/alibaba/ailabs/geniesdk/account/AccountRequest;->clientId:Ljava/lang/String;

    const-string v2, "cid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p1, Lcom/alibaba/ailabs/geniesdk/account/AccountRequest;->deviceId:Ljava/lang/String;

    const-string v2, "did"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-wide v1, p1, Lcom/alibaba/ailabs/geniesdk/account/AccountRequest;->timestamp:J

    const-string v3, "ts"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 71
    iget-object v1, p1, Lcom/alibaba/ailabs/geniesdk/account/AccountRequest;->signature:Ljava/lang/String;

    const-string v2, "s"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object p1, p1, Lcom/alibaba/ailabs/geniesdk/account/AccountRequest;->userId:Ljava/lang/String;

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 77
    new-instance v2, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;

    invoke-direct {v2}, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;-><init>()V

    const-string v3, "at"

    .line 79
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;->accessToken:Ljava/lang/String;

    const-string v3, "rt"

    .line 80
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;->refreshToken:Ljava/lang/String;

    const-wide/16 v3, 0x0

    const-string v5, "att"

    .line 82
    invoke-virtual {p1, v5, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;->accessExpiresTime:J

    const-string v5, "rtt"

    .line 83
    invoke-virtual {p1, v5, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;->refreshExpiresTime:J

    const-string v3, "uuid"

    .line 85
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;->uuid:Ljava/lang/String;

    .line 86
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;->userOpenId:Ljava/lang/String;

    const-string v1, "e"

    .line 87
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;->extension:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 93
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind result, ret = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",this = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccountSvr"

    .line 93
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public onBindUI()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->callAsynMethod(ILandroid/os/Bundle;)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind ui, info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountSvr"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setClientKey(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->clientKey:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountInfo{clientId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", clientKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->clientKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
