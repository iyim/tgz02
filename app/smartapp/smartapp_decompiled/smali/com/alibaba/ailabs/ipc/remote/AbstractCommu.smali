.class public Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;
.super Ljava/lang/Object;
.source "AbstractCommu.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;
    }
.end annotation


# static fields
.field public static final KEY_BINDER:Ljava/lang/String; = "b"

.field public static final KEY_CLIENT:Ljava/lang/String; = "c"

.field public static final KEY_DATA:Ljava/lang/String; = "d"

.field public static final KEY_EXTRA:Ljava/lang/String; = "e"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_RET:Ljava/lang/String; = "r"

.field public static final KEY_TYPE:Ljava/lang/String; = "t"

.field private static final TAG:Ljava/lang/String; = "AbstractCommu"

.field public static final VERSION_DEFAULT:I = 0x7f8e9daa

.field private static mClientId:I

.field private static sHandler:Landroid/os/Handler;


# instance fields
.field protected mBinder:Landroid/os/IBinder;

.field protected mContext:Landroid/content/Context;

.field protected mDeathListener:Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;

.field protected mVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f8e9daa

    .line 37
    iput v0, p0, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->mVersion:I

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static final generateClientId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 55
    const-class v0, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;

    monitor-enter v0

    .line 56
    :try_start_0
    sget v1, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->mClientId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->mClientId:I

    .line 57
    sget v1, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->mClientId:I

    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 58
    sput v1, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->mClientId:I

    .line 60
    :cond_0
    sget v1, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->mClientId:I

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "#"

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 61
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getBinder(Landroid/os/Bundle;)Landroid/os/IBinder;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "b"

    .line 228
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBoolean(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v1, "r"

    .line 257
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static getBundle(Landroid/os/Parcelable;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-static {p0, v0, v0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 2

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "d"

    .line 165
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "e"

    .line 169
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "b"

    .line 173
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_2
    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    .line 205
    invoke-static {v0, p0, v0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getBundle(Z)Landroid/os/Bundle;
    .locals 2

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "r"

    .line 184
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .locals 3

    .line 268
    sget-object v0, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 269
    const-class v0, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;

    monitor-enter v0

    .line 270
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 271
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->sHandler:Landroid/os/Handler;

    .line 273
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 275
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getObject(Landroid/os/Bundle;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "d"

    .line 245
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "e"

    .line 215
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->onDied()V

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBinderDeathListener()Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0, p0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;->onDied(Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;)V

    :cond_0
    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getBinderDeathListener()Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->mDeathListener:Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getVersion()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->mVersion:I

    return v0
.end method

.method public isValid()Z
    .locals 2

    const/4 v0, 0x0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 118
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public linkToDeath()V
    .locals 3

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 128
    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 130
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkToDeath: binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractCommu"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDied()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setBinder(Landroid/os/IBinder;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public setBinderDeathListener(Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->mDeathListener:Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;

    return-void
.end method

.method public unlinkToDeath()V
    .locals 3

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 141
    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 143
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlinkToDeath: binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractCommu"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
