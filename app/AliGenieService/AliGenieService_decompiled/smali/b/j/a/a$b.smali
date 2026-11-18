.class public Lb/j/a/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/j/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/j/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/j/a/c<",
        "Lb/e/i<",
        "Lb/h/k/a0/b;",
        ">;",
        "Lb/h/k/a0/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lb/e/i;

    .line 3
    invoke-virtual {p1}, Lb/e/i;->b()I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lb/e/i;

    .line 1
    iget-boolean v0, p1, Lb/e/i;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/e/i;->a()V

    :cond_0
    iget-object p1, p1, Lb/e/i;->d:[Ljava/lang/Object;

    aget-object p1, p1, p2

    .line 2
    check-cast p1, Lb/h/k/a0/b;

    return-object p1
.end method
