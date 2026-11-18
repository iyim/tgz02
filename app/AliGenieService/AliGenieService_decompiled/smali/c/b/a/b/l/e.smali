.class public Lc/b/a/b/l/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/b/l/c;


# instance fields
.field public a:Lc/b/a/b/l/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/b/a/b/l/b;

    invoke-direct {v0}, Lc/b/a/b/l/b;-><init>()V

    iput-object v0, p0, Lc/b/a/b/l/e;->a:Lc/b/a/b/l/b;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/b/i/i;)Z
    .locals 1

    iget-object v0, p0, Lc/b/a/b/l/e;->a:Lc/b/a/b/l/b;

    invoke-virtual {v0, p1}, Lc/b/a/b/l/b;->a(Lc/b/a/b/i/i;)Z

    const/4 p1, 0x0

    return p1
.end method
