.class public Lc/b/a/b/h/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/b/h/i$a;
    }
.end annotation


# instance fields
.field public a:Lc/b/a/b/h/i$a;


# direct methods
.method public constructor <init>(Lc/b/a/b/h/i$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/a/b/h/i;->a:Lc/b/a/b/h/i$a;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/b/i/i;)Z
    .locals 1

    iget-object v0, p0, Lc/b/a/b/h/i;->a:Lc/b/a/b/h/i$a;

    check-cast v0, Lc/b/a/b/d;

    .line 1
    iget-object v0, v0, Lc/b/a/b/d;->n:Lc/b/a/b/e;

    invoke-virtual {v0, p1}, Lc/b/a/b/e;->a(Lc/b/a/b/i/i;)V

    const/4 p1, 0x0

    return p1
.end method
