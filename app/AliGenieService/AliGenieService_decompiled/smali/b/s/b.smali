.class public Lb/s/b;
.super Lb/s/p;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lb/s/p;-><init>()V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lb/s/p;->b(I)Lb/s/p;

    new-instance v1, Lb/s/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lb/s/d;-><init>(I)V

    invoke-virtual {p0, v1}, Lb/s/p;->a(Lb/s/j;)Lb/s/p;

    new-instance v1, Lb/s/c;

    invoke-direct {v1}, Lb/s/c;-><init>()V

    invoke-virtual {p0, v1}, Lb/s/p;->a(Lb/s/j;)Lb/s/p;

    new-instance v1, Lb/s/d;

    invoke-direct {v1, v0}, Lb/s/d;-><init>(I)V

    invoke-virtual {p0, v1}, Lb/s/p;->a(Lb/s/j;)Lb/s/p;

    return-void
.end method
