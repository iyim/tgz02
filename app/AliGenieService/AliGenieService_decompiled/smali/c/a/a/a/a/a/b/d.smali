.class public Lc/a/a/a/a/a/b/d;
.super Lc/a/a/b/i/b;
.source ""


# static fields
.field public static e:Lc/a/a/a/a/a/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/a/a/b/i/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lc/a/a/a/a/a/b/d;
    .locals 2

    sget-object v0, Lc/a/a/a/a/a/b/d;->e:Lc/a/a/a/a/a/b/d;

    if-nez v0, :cond_1

    const-class v0, Lc/a/a/a/a/a/b/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/a/a/a/a/a/b/d;->e:Lc/a/a/a/a/a/b/d;

    if-nez v1, :cond_0

    new-instance v1, Lc/a/a/a/a/a/b/d;

    invoke-direct {v1, p0}, Lc/a/a/a/a/a/b/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lc/a/a/a/a/a/b/d;->e:Lc/a/a/a/a/a/b/d;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lc/a/a/a/a/a/b/d;->e:Lc/a/a/a/a/a/b/d;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {p1, v0}, Lc/a/a/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Lc/a/a/b/d;

    move-result-object p1

    .line 1
    iget-object p1, p1, Lc/a/a/b/d;->a:Lc/a/a/b/f/a;

    const-string v0, "com.alibaba.ailabs.genie.assistant.asr"

    invoke-virtual {p1, v0}, Lc/a/a/b/f/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public a(Lc/a/a/a/a/a/b/b;Landroid/os/IBinder;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, v0, p2}, Lc/a/a/b/i/a;->a(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p2

    .line 3
    iget-boolean v0, p1, Lc/a/a/a/a/a/b/b;->a:Z

    const-string v1, "su"

    .line 4
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    iget-boolean v0, p1, Lc/a/a/a/a/a/b/b;->d:Z

    const-string v1, "e"

    .line 6
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    iget-boolean v0, p1, Lc/a/a/a/a/a/b/b;->e:Z

    const-string v1, "bs"

    .line 8
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    iget-boolean v0, p1, Lc/a/a/a/a/a/b/b;->f:Z

    const-string v1, "wt"

    .line 10
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    iget v0, p1, Lc/a/a/a/a/a/b/b;->b:I

    const-string v1, "rm"

    .line 12
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    iget v0, p1, Lc/a/a/a/a/a/b/b;->c:I

    const-string v1, "sm"

    .line 14
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    iget-object v0, p1, Lc/a/a/a/a/a/b/b;->i:Ljava/lang/String;

    const-string v1, "p"

    .line 16
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p1, Lc/a/a/a/a/a/b/b;->g:Ljava/lang/String;

    const-string v1, "pn"

    .line 18
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p1, Lc/a/a/a/a/a/b/b;->h:Ljava/lang/String;

    const-string v0, "cn"

    .line 20
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lc/a/a/b/i/b;->a(ILandroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "k"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bs"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lc/a/a/b/i/b;->a(ILandroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method
