.class public Lc/d/a/a/z/g$a;
.super Lc/d/a/a/f0/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/a/z/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lc/d/a/a/f0/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/d/a/a/f0/g;-><init>(Lc/d/a/a/f0/k;)V

    return-void
.end method


# virtual methods
.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
