.class public Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "AccountSvr.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;
.implements Lcom/alibaba/ailabs/geniesdk/account/IAccountBindUI;
.implements Lcom/alibaba/ailabs/geniesdk/account/IAccountBind;


# static fields
.field private static final METHOD_BIND:I = 0x2

.field private static final METHOD_REGISTER:I = 0x0

.field private static final METHOD_UNBIND:I = 0x3

.field private static final METHOD_UNREGISTER:I = 0x1

.field public static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.account"

.field public static final TAG:Ljava/lang/String; = "AccountSvr"

.field private static sInstance:Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;


# instance fields
.field private mAccountInfo:Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;
    .locals 2

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;

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
    sget-object p0, Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.account"

    return-object v0
.end method


# virtual methods
.method public onBind(Lcom/alibaba/ailabs/geniesdk/account/AccountRequest;)Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;->mAccountInfo:Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->onBind(Lcom/alibaba/ailabs/geniesdk/account/AccountRequest;)Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 160
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request bind ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    .line 161
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/account/AccountResponse;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountSvr"

    .line 160
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public onBindUI()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;->mAccountInfo:Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;

    const-string v1, "AccountSvr"

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->onBindUI()V

    const-string v0, "request bind ui"

    .line 146
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "no request bind ui"

    .line 148
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected declared-synchronized onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "e"

    .line 50
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountSvr"

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", clientId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 55
    monitor-exit p0

    return-object v2

    .line 57
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;->mAccountInfo:Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;

    if-eqz p1, :cond_8

    const/4 v3, 0x1

    if-eq p1, v3, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto/16 :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 116
    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 117
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->setUserId(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 120
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->logoutUser()V

    :cond_2
    const-string p1, "AccountSvr"

    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " unbind clientId =  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const-string p1, "AccountSvr"

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no exist clientId =  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string p1, "u"

    .line 96
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_6

    .line 98
    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->getClientId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 99
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->setUserId(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 103
    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getAccountDispatch()Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;

    move-result-object v1

    .line 104
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;->setUserId(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->bindUser()V

    :cond_5
    const-string p2, "AccountSvr"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " request bind clientId =  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",userId = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string p2, "AccountSvr"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no exist clientId =  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",userId = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    if-eqz v1, :cond_b

    .line 86
    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "AccountSvr"

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clear client info =  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-object v2, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;->mAccountInfo:Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getAccountDispatch()Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;

    move-result-object p1

    .line 90
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;->setAccountBind(Lcom/alibaba/ailabs/geniesdk/account/IAccountBind;)V

    .line 91
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;->setAccountBindUI(Lcom/alibaba/ailabs/geniesdk/account/IAccountBindUI;)V

    goto :goto_0

    :cond_8
    const-string p1, "b"

    .line 61
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 63
    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    .line 68
    :cond_9
    new-instance v3, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1, p0}, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    .line 69
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->setClientId(Ljava/lang/String;)V

    const-string p1, "ck"

    const-string v0, ""

    .line 70
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-virtual {v3, p1}, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->setClientKey(Ljava/lang/String;)V

    if-eqz v1, :cond_a

    const-string p1, "AccountSvr"

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prev client info =  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_a
    iput-object v3, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;->mAccountInfo:Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getAccountDispatch()Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;

    move-result-object p1

    .line 80
    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;->setAccountBind(Lcom/alibaba/ailabs/geniesdk/account/IAccountBind;)V

    .line 81
    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/geniesdk/account/AccountDispatch;->setAccountBindUI(Lcom/alibaba/ailabs/geniesdk/account/IAccountBindUI;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :cond_b
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_c
    :goto_1
    :try_start_2
    const-string p2, "AccountSvr"

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account client binder is null or alive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDied(Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;)V
    .locals 2

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;->mAccountInfo:Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;->mAccountInfo:Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;

    if-eqz p1, :cond_0

    const-string p1, "AccountSvr"

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "died =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;->mAccountInfo:Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 137
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/account/AccountSvr;->mAccountInfo:Lcom/alibaba/ailabs/geniesdk/account/AccountInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
