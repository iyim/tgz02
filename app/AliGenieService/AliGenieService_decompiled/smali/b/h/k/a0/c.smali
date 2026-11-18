.class public Lb/h/k/a0/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/h/k/a0/c$c;,
        Lb/h/k/a0/c$b;,
        Lb/h/k/a0/c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Lb/h/k/a0/c$c;

    invoke-direct {v0, p0}, Lb/h/k/a0/c$c;-><init>(Lb/h/k/a0/c;)V

    iput-object v0, p0, Lb/h/k/a0/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/h/k/a0/c;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Lb/h/k/a0/b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(I)Lb/h/k/a0/b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lb/h/k/a0/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
