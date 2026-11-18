.class public Lb/q/d/x$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/q/d/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static d:Lb/h/j/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/h/j/c<",
            "Lb/q/d/x$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/RecyclerView$k$c;

.field public c:Landroidx/recyclerview/widget/RecyclerView$k$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/h/j/c;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lb/h/j/c;-><init>(I)V

    sput-object v0, Lb/q/d/x$a;->d:Lb/h/j/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lb/q/d/x$a;
    .locals 1

    sget-object v0, Lb/q/d/x$a;->d:Lb/h/j/c;

    invoke-virtual {v0}, Lb/h/j/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/q/d/x$a;

    if-nez v0, :cond_0

    new-instance v0, Lb/q/d/x$a;

    invoke-direct {v0}, Lb/q/d/x$a;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static a(Lb/q/d/x$a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb/q/d/x$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/q/d/x$a;->b:Landroidx/recyclerview/widget/RecyclerView$k$c;

    iput-object v0, p0, Lb/q/d/x$a;->c:Landroidx/recyclerview/widget/RecyclerView$k$c;

    sget-object v0, Lb/q/d/x$a;->d:Lb/h/j/c;

    invoke-virtual {v0, p0}, Lb/h/j/c;->a(Ljava/lang/Object;)Z

    return-void
.end method
