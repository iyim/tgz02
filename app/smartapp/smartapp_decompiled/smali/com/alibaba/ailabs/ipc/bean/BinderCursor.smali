.class public Lcom/alibaba/ailabs/ipc/bean/BinderCursor;
.super Landroid/database/MatrixCursor;
.source "BinderCursor.java"


# static fields
.field public static final DEFAULT_COLUMNS:[Ljava/lang/String;

.field public static final KEY_BINDER:Ljava/lang/String; = "binder"

.field public static final KEY_RESIDENCY_SERVER:Ljava/lang/String; = "is_residency_server"


# instance fields
.field private mExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "col"

    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/ipc/bean/BinderCursor;->DEFAULT_COLUMNS:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 16
    sget-object v0, Lcom/alibaba/ailabs/ipc/bean/BinderCursor;->DEFAULT_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/BinderCursor;->mExtras:Landroid/os/Bundle;

    .line 17
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/ipc/bean/BinderCursor;->setBinder(Landroid/os/IBinder;)V

    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/ipc/bean/BinderCursor;->setResidencyServer(Z)V

    return-void
.end method

.method public static getBinder(Landroid/database/Cursor;)Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 40
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 42
    const-class v1, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "binder"

    .line 43
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;->getBinder()Landroid/os/IBinder;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static getResidencyServer(Landroid/database/Cursor;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 57
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 59
    const-class v1, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "is_residency_server"

    .line 60
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/BinderCursor;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public setBinder(Landroid/os/IBinder;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/BinderCursor;->mExtras:Landroid/os/Bundle;

    new-instance v1, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;

    invoke-direct {v1, p1}, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    const-string p1, "binder"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public setResidencyServer(Z)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/BinderCursor;->mExtras:Landroid/os/Bundle;

    const-string v1, "is_residency_server"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
