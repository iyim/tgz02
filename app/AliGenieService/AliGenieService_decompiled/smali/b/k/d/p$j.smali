.class public Lb/k/d/p$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/fragment/app/Fragment$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/d/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lb/k/d/a;

.field public c:I


# direct methods
.method public constructor <init>(Lb/k/d/a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lb/k/d/p$j;->a:Z

    iput-object p1, p0, Lb/k/d/p$j;->b:Lb/k/d/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget v0, p0, Lb/k/d/p$j;->c:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lb/k/d/p$j;->b:Lb/k/d/a;

    iget-object v2, v2, Lb/k/d/a;->r:Lb/k/d/p;

    .line 1
    iget-object v2, v2, Lb/k/d/p;->c:Lb/k/d/u;

    invoke-virtual {v2}, Lb/k/d/u;->c()Ljava/util/List;

    move-result-object v2

    .line 2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->a(Landroidx/fragment/app/Fragment$e;)V

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->N()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->C0()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lb/k/d/p$j;->b:Lb/k/d/a;

    iget-object v3, v2, Lb/k/d/a;->r:Lb/k/d/p;

    iget-boolean v4, p0, Lb/k/d/p$j;->a:Z

    xor-int/2addr v0, v1

    invoke-virtual {v3, v2, v4, v0, v1}, Lb/k/d/p;->a(Lb/k/d/a;ZZZ)V

    return-void
.end method
