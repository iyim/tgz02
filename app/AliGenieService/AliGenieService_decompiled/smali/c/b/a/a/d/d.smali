.class public abstract Lc/b/a/a/d/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/a/d/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/a/d/d;)Lc/b/a/a/d/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/d<",
            "TT;>;)",
            "Lc/b/a/a/d/d<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lc/b/a/a/d/d$a;

    invoke-direct {v0, p0, p1}, Lc/b/a/a/d/d$a;-><init>(Lc/b/a/a/d/d;Lc/b/a/a/d/d;)V

    return-object v0
.end method
