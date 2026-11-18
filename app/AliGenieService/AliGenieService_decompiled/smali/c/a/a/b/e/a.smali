.class public Lc/a/a/b/e/a;
.super Landroid/database/MatrixCursor;
.source ""


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "col"

    filled-new-array {v0}, [Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-class v1, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "binder"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/ipc/bean/BinderWrapper;->e()Landroid/os/IBinder;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method
