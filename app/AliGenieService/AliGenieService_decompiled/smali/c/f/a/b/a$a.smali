.class public Lc/f/a/b/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/f/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lc/f/a/b/a;


# direct methods
.method public constructor <init>(Lc/f/a/b/a;)V
    .locals 0

    iput-object p1, p0, Lc/f/a/b/a$a;->b:Lc/f/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lc/f/a/b/a$a;->b:Lc/f/a/b/a;

    .line 1
    iget-object v0, v0, Lc/f/a/b/a;->b:Lc/f/a/b/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/f/a/b/f;->b()V

    :cond_0
    iget-object v0, p0, Lc/f/a/b/a$a;->b:Lc/f/a/b/a;

    .line 3
    iget-object v1, v0, Lc/f/a/b/a;->g:Landroid/os/Handler;

    .line 4
    iget-object v0, v0, Lc/f/a/b/a;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
