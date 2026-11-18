.class public Lb/o/j;
.super Lb/o/i;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/o/i;",
        "Ljava/lang/Iterable<",
        "Lb/o/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:Lb/e/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/i<",
            "Lb/o/i;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb/o/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/q<",
            "+",
            "Lb/o/j;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lb/o/i;-><init>(Lb/o/q;)V

    new-instance p1, Lb/e/i;

    const/16 v0, 0xa

    .line 1
    invoke-direct {p1, v0}, Lb/e/i;-><init>(I)V

    .line 2
    iput-object p1, p0, Lb/o/j;->j:Lb/e/i;

    return-void
.end method


# virtual methods
.method public a(Lb/o/h;)Lb/o/i$a;
    .locals 4

    invoke-super {p0, p1}, Lb/o/i;->a(Lb/o/h;)Lb/o/i$a;

    move-result-object v0

    .line 12
    new-instance v1, Lb/o/j$a;

    invoke-direct {v1, p0}, Lb/o/j$a;-><init>(Lb/o/j;)V

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/o/i;

    invoke-virtual {v2, p1}, Lb/o/i;->a(Lb/o/h;)Lb/o/i$a;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lb/o/i$a;->a(Lb/o/i$a;)I

    move-result v3

    if-lez v3, :cond_0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final a(IZ)Lb/o/i;
    .locals 2

    iget-object v0, p0, Lb/o/j;->j:Lb/e/i;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Lb/e/i;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Lb/o/i;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 10
    iget-object p2, p0, Lb/o/i;->c:Lb/o/j;

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p2, p1}, Lb/o/j;->b(I)Lb/o/i;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lb/o/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lb/o/u/a;->NavGraphNavigator:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Lb/o/u/a;->NavGraphNavigator_startDestination:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 14
    iget v1, p0, Lb/o/i;->d:I

    if-eq v0, v1, :cond_0

    .line 15
    iput v0, p0, Lb/o/j;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/o/j;->l:Ljava/lang/String;

    .line 16
    iget v0, p0, Lb/o/j;->k:I

    invoke-static {p1, v0}, Lb/o/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/o/j;->l:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start destination "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cannot use the same id as the graph "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/o/i;)V
    .locals 3

    .line 1
    iget v0, p1, Lb/o/i;->d:I

    if-eqz v0, :cond_4

    iget v1, p0, Lb/o/i;->d:I

    if-eq v0, v1, :cond_3

    .line 2
    iget-object v1, p0, Lb/o/j;->j:Lb/e/i;

    invoke-virtual {v1, v0}, Lb/e/i;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/o/i;

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p1, Lb/o/i;->c:Lb/o/j;

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lb/o/i;->c:Lb/o/j;

    :cond_1
    iput-object p0, p1, Lb/o/i;->c:Lb/o/j;

    .line 5
    iget-object v0, p0, Lb/o/j;->j:Lb/e/i;

    .line 6
    iget v1, p1, Lb/o/i;->d:I

    .line 7
    invoke-virtual {v0, v1, p1}, Lb/e/i;->c(ILjava/lang/Object;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Destination already has a parent set. Call NavGraph.remove() to remove the previous parent."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cannot have the same id as graph "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Destinations must have an id. Call setId() or include an android:id in your navigation XML."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)Lb/o/i;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lb/o/j;->a(IZ)Lb/o/i;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lb/o/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Lb/o/j$a;

    invoke-direct {v0, p0}, Lb/o/j$a;-><init>(Lb/o/j;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lb/o/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startDestination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1
    iget v1, p0, Lb/o/j;->k:I

    .line 2
    invoke-virtual {p0, v1}, Lb/o/j;->b(I)Lb/o/i;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/o/j;->l:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/o/j;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lb/o/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
