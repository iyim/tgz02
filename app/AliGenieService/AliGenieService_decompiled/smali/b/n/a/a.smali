.class public abstract Lb/n/a/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lb/m/h;)Lb/n/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/m/h;",
            ":",
            "Lb/m/v;",
            ">(TT;)",
            "Lb/n/a/a;"
        }
    .end annotation

    new-instance v0, Lb/n/a/b;

    move-object v1, p0

    check-cast v1, Lb/m/v;

    invoke-interface {v1}, Lb/m/v;->d()Lb/m/u;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lb/n/a/b;-><init>(Lb/m/h;Lb/m/u;)V

    return-object v0
.end method
