.class public Lb/o/v/a;
.super Lb/o/q;
.source ""


# annotations
.annotation runtime Lb/o/q$b;
    value = "fragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/o/v/a$b;,
        Lb/o/v/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/o/q<",
        "Lb/o/v/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lb/k/d/p;

.field public final c:I

.field public d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/k/d/p;I)V
    .locals 1

    invoke-direct {p0}, Lb/o/q;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lb/o/v/a;->d:Ljava/util/ArrayDeque;

    iput-object p1, p0, Lb/o/v/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lb/o/v/a;->b:Lb/k/d/p;

    iput p3, p0, Lb/o/v/a;->c:I

    return-void
.end method


# virtual methods
.method public a()Lb/o/i;
    .locals 1

    .line 1
    new-instance v0, Lb/o/v/a$a;

    invoke-direct {v0, p0}, Lb/o/v/a$a;-><init>(Lb/o/q;)V

    return-object v0
.end method

.method public a(Lb/o/i;Landroid/os/Bundle;Lb/o/o;Lb/o/q$a;)Lb/o/i;
    .locals 8

    check-cast p1, Lb/o/v/a$a;

    .line 2
    iget-object v0, p0, Lb/o/v/a;->b:Lb/k/d/p;

    invoke-virtual {v0}, Lb/k/d/p;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "FragmentNavigator"

    const-string p2, "Ignoring navigate() call: FragmentManager has already saved its state"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 3
    :cond_0
    iget-object v0, p1, Lb/o/v/a$a;->j:Ljava/lang/String;

    if-eqz v0, :cond_19

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lb/o/v/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v3, p0, Lb/o/v/a;->a:Landroid/content/Context;

    iget-object v4, p0, Lb/o/v/a;->b:Lb/k/d/p;

    .line 5
    invoke-virtual {v4}, Lb/k/d/p;->j()Lb/k/d/l;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Lb/k/d/l;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->k(Landroid/os/Bundle;)V

    iget-object p2, p0, Lb/o/v/a;->b:Lb/k/d/p;

    invoke-virtual {p2}, Lb/k/d/p;->a()Lb/k/d/v;

    move-result-object p2

    const/4 v3, -0x1

    if-eqz p3, :cond_2

    .line 7
    iget v4, p3, Lb/o/o;->d:I

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    if-eqz p3, :cond_3

    .line 8
    iget v5, p3, Lb/o/o;->e:I

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    if-eqz p3, :cond_4

    .line 9
    iget v6, p3, Lb/o/o;->f:I

    goto :goto_2

    :cond_4
    move v6, v3

    :goto_2
    if-eqz p3, :cond_5

    .line 10
    iget v7, p3, Lb/o/o;->g:I

    goto :goto_3

    :cond_5
    move v7, v3

    :goto_3
    if-ne v4, v3, :cond_6

    if-ne v5, v3, :cond_6

    if-ne v6, v3, :cond_6

    if-eq v7, v3, :cond_b

    :cond_6
    if-eq v4, v3, :cond_7

    goto :goto_4

    :cond_7
    move v4, v2

    :goto_4
    if-eq v5, v3, :cond_8

    goto :goto_5

    :cond_8
    move v5, v2

    :goto_5
    if-eq v6, v3, :cond_9

    goto :goto_6

    :cond_9
    move v6, v2

    :goto_6
    if-eq v7, v3, :cond_a

    goto :goto_7

    :cond_a
    move v7, v2

    .line 11
    :goto_7
    iput v4, p2, Lb/k/d/v;->b:I

    iput v5, p2, Lb/k/d/v;->c:I

    iput v6, p2, Lb/k/d/v;->d:I

    iput v7, p2, Lb/k/d/v;->e:I

    .line 12
    :cond_b
    iget v3, p0, Lb/o/v/a;->c:I

    invoke-virtual {p2, v3, v0}, Lb/k/d/v;->a(ILandroidx/fragment/app/Fragment;)Lb/k/d/v;

    invoke-virtual {p2, v0}, Lb/k/d/v;->b(Landroidx/fragment/app/Fragment;)Lb/k/d/v;

    .line 13
    iget v0, p1, Lb/o/i;->d:I

    .line 14
    iget-object v3, p0, Lb/o/v/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz p3, :cond_c

    if-nez v3, :cond_c

    .line 15
    iget-boolean p3, p3, Lb/o/o;->a:Z

    if-eqz p3, :cond_c

    .line 16
    iget-object p3, p0, Lb/o/v/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v0, :cond_c

    move p3, v4

    goto :goto_8

    :cond_c
    move p3, v2

    :goto_8
    if-eqz v3, :cond_d

    goto :goto_9

    :cond_d
    if-eqz p3, :cond_f

    iget-object p3, p0, Lb/o/v/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->size()I

    move-result p3

    if-le p3, v4, :cond_e

    iget-object p3, p0, Lb/o/v/a;->b:Lb/k/d/p;

    iget-object v3, p0, Lb/o/v/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    iget-object v5, p0, Lb/o/v/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lb/o/v/a;->a(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3, v4}, Lb/k/d/p;->a(Ljava/lang/String;I)V

    iget-object p3, p0, Lb/o/v/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->size()I

    move-result p3

    invoke-virtual {p0, p3, v0}, Lb/o/v/a;->a(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lb/k/d/v;->a(Ljava/lang/String;)Lb/k/d/v;

    :cond_e
    move p3, v2

    goto :goto_a

    :cond_f
    iget-object p3, p0, Lb/o/v/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->size()I

    move-result p3

    add-int/2addr p3, v4

    invoke-virtual {p0, p3, v0}, Lb/o/v/a;->a(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lb/k/d/v;->a(Ljava/lang/String;)Lb/k/d/v;

    :goto_9
    move p3, v4

    :goto_a
    instance-of v3, p4, Lb/o/v/a$b;

    if-eqz v3, :cond_17

    check-cast p4, Lb/o/v/a$b;

    .line 17
    iget-object p4, p4, Lb/o/v/a$b;->a:Ljava/util/LinkedHashMap;

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p4

    .line 18
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_10
    :goto_b
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 19
    sget-object v6, Lb/k/d/c0;->b:Lb/k/d/h0;

    if-nez v6, :cond_12

    sget-object v6, Lb/k/d/c0;->c:Lb/k/d/h0;

    if-eqz v6, :cond_11

    goto :goto_c

    :cond_11
    move v6, v2

    goto :goto_d

    :cond_12
    :goto_c
    move v6, v4

    :goto_d
    if-eqz v6, :cond_10

    .line 20
    invoke-static {v5}, Lb/h/k/q;->t(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    iget-object v6, p2, Lb/k/d/v;->n:Ljava/util/ArrayList;

    if-nez v6, :cond_13

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p2, Lb/k/d/v;->n:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p2, Lb/k/d/v;->o:Ljava/util/ArrayList;

    goto :goto_e

    :cond_13
    iget-object v6, p2, Lb/k/d/v;->o:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "\' has already been added to the transaction."

    if-nez v6, :cond_15

    iget-object v6, p2, Lb/k/d/v;->n:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    :goto_e
    iget-object v6, p2, Lb/k/d/v;->n:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p2, Lb/k/d/v;->o:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A shared element with the source name \'"

    invoke-static {p2, v5, v7}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A shared element with the target name \'"

    invoke-static {p2, v3, v7}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unique transitionNames are required for all sharedElements"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_17
    invoke-virtual {p2, v4}, Lb/k/d/v;->a(Z)Lb/k/d/v;

    invoke-virtual {p2}, Lb/k/d/v;->a()I

    if-eqz p3, :cond_18

    iget-object p2, p0, Lb/o/v/a;->d:Ljava/util/ArrayDeque;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_18
    :goto_f
    move-object p1, v1

    :goto_10
    return-object p1

    .line 22
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment class was not set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "androidx-nav-fragment:navigator:backStackIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/o/v/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    iget-object v3, p0, Lb/o/v/a;->d:Ljava/util/ArrayDeque;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lb/o/v/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lb/o/v/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    move v3, v5

    goto :goto_0

    :cond_0
    const-string v2, "androidx-nav-fragment:navigator:backStackIds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public c()Z
    .locals 3

    iget-object v0, p0, Lb/o/v/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lb/o/v/a;->b:Lb/k/d/p;

    invoke-virtual {v0}, Lb/k/d/p;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FragmentNavigator"

    const-string v2, "Ignoring popBackStack() call: FragmentManager has already saved its state"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lb/o/v/a;->b:Lb/k/d/p;

    iget-object v1, p0, Lb/o/v/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    iget-object v2, p0, Lb/o/v/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lb/o/v/a;->a(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/k/d/p;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lb/o/v/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    return v2
.end method
