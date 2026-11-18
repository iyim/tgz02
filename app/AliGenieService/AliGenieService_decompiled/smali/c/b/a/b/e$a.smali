.class public Lc/b/a/b/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/b/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lc/b/a/b/e;


# direct methods
.method public constructor <init>(Lc/b/a/b/e;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/b/e$a;->b:Lc/b/a/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lc/b/a/b/e$a;->b:Lc/b/a/b/e;

    new-instance v1, Lc/b/a/b/e$c;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lc/b/a/b/e$c;-><init>(Lc/b/a/b/e;Lc/b/a/b/e$a;)V

    .line 1
    iput-object v1, v0, Lc/b/a/b/e;->a:Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
