.class public Lc/a/a/b/f/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a/a/b/f/a;->a(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lc/a/a/b/f/a;


# direct methods
.method public constructor <init>(Lc/a/a/b/f/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/a/a/b/f/a$b;->c:Lc/a/a/b/f/a;

    iput-object p2, p0, Lc/a/a/b/f/a$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc/a/a/b/f/a$b;->c:Lc/a/a/b/f/a;

    invoke-virtual {v0}, Lc/a/a/b/f/a;->d()Lc/a/a/b/g/d;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/b/f/a$b;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lc/a/a/b/g/d;->a(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
