.class public Lc/b/a/b/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc/b/a/b/d;


# direct methods
.method public constructor <init>(Lc/b/a/b/d;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/b/b;->b:Lc/b/a/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lc/b/a/b/b;->b:Lc/b/a/b/d;

    new-instance v1, Lc/b/a/b/b$a;

    invoke-direct {v1, p0}, Lc/b/a/b/b$a;-><init>(Lc/b/a/b/b;)V

    .line 1
    iput-object v1, v0, Lc/b/a/b/d;->b:Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
