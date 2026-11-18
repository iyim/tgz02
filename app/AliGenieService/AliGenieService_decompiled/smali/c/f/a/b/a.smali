.class public Lc/f/a/b/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lc/f/a/b/f;

.field public c:Lc/f/a/b/e;

.field public d:Lc/f/a/b/c;

.field public e:Lc/f/a/b/b;

.field public f:Z

.field public g:Landroid/os/Handler;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/f/a/b/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/f/a/b/a;->a:Landroid/content/Context;

    iput-object v0, p0, Lc/f/a/b/a;->b:Lc/f/a/b/f;

    iput-object v0, p0, Lc/f/a/b/a;->c:Lc/f/a/b/e;

    iput-object v0, p0, Lc/f/a/b/a;->d:Lc/f/a/b/c;

    iput-object v0, p0, Lc/f/a/b/a;->e:Lc/f/a/b/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/f/a/b/a;->f:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lc/f/a/b/a;->g:Landroid/os/Handler;

    new-instance v0, Lc/f/a/b/a$a;

    invoke-direct {v0, p0}, Lc/f/a/b/a$a;-><init>(Lc/f/a/b/a;)V

    iput-object v0, p0, Lc/f/a/b/a;->h:Ljava/lang/Runnable;

    const-string v0, "AliicxServer Constructor. version : 1.1.2 versionCode : 5"

    const-string v1, "Aliicx"

    .line 1
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lc/f/a/b/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lc/f/a/b/a;->e:Lc/f/a/b/b;

    new-instance p1, Lc/f/a/b/f;

    invoke-direct {p1}, Lc/f/a/b/f;-><init>()V

    iput-object p1, p0, Lc/f/a/b/a;->b:Lc/f/a/b/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "AliicxServer stop."

    const-string v1, "Aliicx"

    .line 1
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lc/f/a/b/a;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/f/a/b/a;->d:Lc/f/a/b/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/f/a/b/c;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/f/a/b/a;->f:Z

    iget-object v0, p0, Lc/f/a/b/a;->c:Lc/f/a/b/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/f/a/b/e;->a()V

    :cond_1
    iget-object v0, p0, Lc/f/a/b/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Lc/f/a/b/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
