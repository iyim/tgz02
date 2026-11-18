.class public Lc/f/a/b/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/net/LocalSocket;

.field public final synthetic c:Lc/f/a/b/e;


# direct methods
.method public constructor <init>(Lc/f/a/b/e;Landroid/net/LocalSocket;)V
    .locals 0

    iput-object p1, p0, Lc/f/a/b/d;->c:Lc/f/a/b/e;

    iput-object p2, p0, Lc/f/a/b/d;->b:Landroid/net/LocalSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lc/f/a/b/d;->c:Lc/f/a/b/e;

    iget-object v1, p0, Lc/f/a/b/d;->b:Landroid/net/LocalSocket;

    invoke-static {v0, v1}, Lc/f/a/b/e;->a(Lc/f/a/b/e;Landroid/net/LocalSocket;)V

    :try_start_0
    iget-object v0, p0, Lc/f/a/b/d;->b:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception found when closing socket in startThreadForConnection"

    const-string v2, "Aliicx"

    .line 1
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
