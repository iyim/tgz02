.class public final Lb/k/d/a;
.super Lb/k/d/v;
.source ""

# interfaces
.implements Lb/k/d/p$e;
.implements Lb/k/d/p$h;


# instance fields
.field public final r:Lb/k/d/p;

.field public s:Z

.field public t:I


# direct methods
.method public constructor <init>(Lb/k/d/p;)V
    .locals 2

    invoke-virtual {p1}, Lb/k/d/p;->j()Lb/k/d/l;

    move-result-object v0

    iget-object v1, p1, Lb/k/d/p;->o:Lb/k/d/m;

    if-eqz v1, :cond_0

    .line 1
    iget-object v1, v1, Lb/k/d/m;->c:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lb/k/d/v;-><init>(Lb/k/d/l;Ljava/lang/ClassLoader;)V

    const/4 v0, -0x1

    iput v0, p0, Lb/k/d/a;->t:I

    iput-object p1, p0, Lb/k/d/a;->r:Lb/k/d/p;

    return-void
.end method

.method public static b(Lb/k/d/v$a;)Z
    .locals 1

    iget-object p0, p0, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->A:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->N()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/k/d/a;->b(Z)I

    move-result v0

    return v0
.end method

.method public a(Landroidx/fragment/app/Fragment;)Lb/k/d/v;
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lb/k/d/a;->r:Lb/k/d/p;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lb/k/d/v;->a(Landroidx/fragment/app/Fragment;)Lb/k/d/v;

    return-object p0
.end method

.method public a(I)V
    .locals 7

    iget-boolean v0, p0, Lb/k/d/v;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lb/k/d/p;->c(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bump nesting in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/k/d/v$a;

    iget-object v5, v4, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_2

    iget v6, v5, Landroidx/fragment/app/Fragment;->r:I

    add-int/2addr v6, p1

    iput v6, v5, Landroidx/fragment/app/Fragment;->r:I

    invoke-static {v0}, Lb/k/d/p;->c(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Bump nesting of "

    invoke-static {v5}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    iget v4, v4, Landroidx/fragment/app/Fragment;->r:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lb/k/d/v;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    iget-object p1, p0, Lb/k/d/a;->r:Lb/k/d/p;

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 5

    if-eqz p3, :cond_8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/k/d/v;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/k/d/a;->t:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/k/d/a;->s:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Lb/k/d/v;->f:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/k/d/v;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lb/k/d/v;->b:I

    if-nez v0, :cond_1

    iget v0, p0, Lb/k/d/v;->c:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/k/d/v;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/k/d/v;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lb/k/d/v;->d:I

    if-nez v0, :cond_3

    iget v0, p0, Lb/k/d/v;->e:I

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/k/d/v;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/k/d/v;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lb/k/d/v;->j:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lb/k/d/v;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/k/d/v;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/k/d/v;->k:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget v0, p0, Lb/k/d/v;->l:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lb/k/d/v;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/k/d/v;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/k/d/v;->m:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_d

    iget-object v2, p0, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/k/d/v$a;

    iget v3, v2, Lb/k/d/v$a;->a:I

    packed-switch v3, :pswitch_data_0

    const-string v3, "cmd="

    invoke-static {v3}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lb/k/d/v$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_0
    const-string v3, "OP_SET_MAX_LIFECYCLE"

    goto :goto_1

    :pswitch_1
    const-string v3, "UNSET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_2
    const-string v3, "SET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_3
    const-string v3, "ATTACH"

    goto :goto_1

    :pswitch_4
    const-string v3, "DETACH"

    goto :goto_1

    :pswitch_5
    const-string v3, "SHOW"

    goto :goto_1

    :pswitch_6
    const-string v3, "HIDE"

    goto :goto_1

    :pswitch_7
    const-string v3, "REMOVE"

    goto :goto_1

    :pswitch_8
    const-string v3, "REPLACE"

    goto :goto_1

    :pswitch_9
    const-string v3, "ADD"

    goto :goto_1

    :pswitch_a
    const-string v3, "NULL"

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    iget v3, v2, Lb/k/d/v$a;->c:I

    if-nez v3, :cond_9

    iget v3, v2, Lb/k/d/v$a;->d:I

    if-eqz v3, :cond_a

    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lb/k/d/v$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " exitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lb/k/d/v$a;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget v3, v2, Lb/k/d/v$a;->e:I

    if-nez v3, :cond_b

    iget v3, v2, Lb/k/d/v$a;->f:I

    if-eqz v3, :cond_c

    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "popEnterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lb/k/d/v$a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " popExitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v2, Lb/k/d/v$a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/util/ArrayList;II)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/k/d/a;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    move v3, v2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_7

    iget-object v4, p0, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/k/d/v$a;

    iget-object v4, v4, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_1

    iget v4, v4, Landroidx/fragment/app/Fragment;->x:I

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-eqz v4, :cond_6

    if-eq v4, v3, :cond_6

    move v3, p2

    :goto_2
    if-ge v3, p3, :cond_5

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/k/d/a;

    iget-object v6, v5, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v0

    :goto_3
    if-ge v7, v6, :cond_4

    iget-object v8, v5, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/k/d/v$a;

    iget-object v8, v8, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_2

    iget v8, v8, Landroidx/fragment/app/Fragment;->x:I

    goto :goto_4

    :cond_2
    move v8, v0

    :goto_4
    if-ne v8, v4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v3, v4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/k/d/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lb/k/d/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lb/k/d/v;->g:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lb/k/d/a;->r:Lb/k/d/p;

    .line 1
    iget-object p2, p1, Lb/k/d/p;->d:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lb/k/d/p;->d:Ljava/util/ArrayList;

    :cond_1
    iget-object p1, p1, Lb/k/d/p;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public b(Z)I
    .locals 3

    iget-boolean v0, p0, Lb/k/d/a;->s:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lb/k/d/p;->c(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lb/h/j/a;

    invoke-direct {v0, v2}, Lb/h/j/a;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    .line 1
    invoke-virtual {p0, v0, v2, v1}, Lb/k/d/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_0
    iput-boolean v1, p0, Lb/k/d/a;->s:Z

    iget-boolean v0, p0, Lb/k/d/v;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/k/d/a;->r:Lb/k/d/p;

    .line 3
    iget-object v0, v0, Lb/k/d/p;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 4
    :goto_0
    iput v0, p0, Lb/k/d/a;->t:I

    iget-object v0, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v0, p0, p1}, Lb/k/d/p;->a(Lb/k/d/p$h;Z)V

    iget p1, p0, Lb/k/d/a;->t:I

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "commit already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroidx/fragment/app/Fragment;)Lb/k/d/v;
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->s:Lb/k/d/p;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lb/k/d/a;->r:Lb/k/d/p;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment "

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lb/k/d/v;->b(Landroidx/fragment/app/Fragment;)Lb/k/d/v;

    return-object p0
.end method

.method public b()V
    .locals 8

    iget-object v0, p0, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/k/d/v$a;

    iget-object v5, v4, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    iget v6, p0, Lb/k/d/v;->f:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->c(I)V

    :cond_0
    iget v6, v4, Lb/k/d/v$a;->a:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown cmd: "

    invoke-static {v1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Lb/k/d/v$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v6, p0, Lb/k/d/a;->r:Lb/k/d/p;

    iget-object v7, v4, Lb/k/d/v$a;->h:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v6, v5, v7}, Lb/k/d/p;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_1

    :pswitch_2
    iget-object v6, p0, Lb/k/d/a;->r:Lb/k/d/p;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lb/k/d/p;->o(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :pswitch_3
    iget-object v6, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v6, v5}, Lb/k/d/p;->o(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :pswitch_4
    iget v6, v4, Lb/k/d/v$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->b(I)V

    iget-object v6, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v6, v5, v1}, Lb/k/d/p;->a(Landroidx/fragment/app/Fragment;Z)V

    iget-object v6, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v6, v5}, Lb/k/d/p;->b(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :pswitch_5
    iget v6, v4, Lb/k/d/v$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->b(I)V

    iget-object v6, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v6, v5}, Lb/k/d/p;->e(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :pswitch_6
    iget v6, v4, Lb/k/d/v$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->b(I)V

    iget-object v6, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v6, v5, v1}, Lb/k/d/p;->a(Landroidx/fragment/app/Fragment;Z)V

    iget-object v6, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v6, v5}, Lb/k/d/p;->q(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :pswitch_7
    iget v6, v4, Lb/k/d/v$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->b(I)V

    iget-object v6, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v6, v5}, Lb/k/d/p;->h(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :pswitch_8
    iget v6, v4, Lb/k/d/v$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->b(I)V

    iget-object v6, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v6, v5}, Lb/k/d/p;->m(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :pswitch_9
    iget v6, v4, Lb/k/d/v$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->b(I)V

    iget-object v6, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v6, v5, v1}, Lb/k/d/p;->a(Landroidx/fragment/app/Fragment;Z)V

    iget-object v6, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v6, v5}, Lb/k/d/p;->a(Landroidx/fragment/app/Fragment;)V

    :goto_1
    iget-boolean v6, p0, Lb/k/d/v;->p:Z

    if-nez v6, :cond_1

    iget v4, v4, Lb/k/d/v$a;->a:I

    if-eq v4, v3, :cond_1

    if-eqz v5, :cond_1

    iget-object v3, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v3, v5}, Lb/k/d/p;->l(Landroidx/fragment/app/Fragment;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    iget-boolean v0, p0, Lb/k/d/v;->p:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/k/d/a;->r:Lb/k/d/p;

    iget v1, v0, Lb/k/d/p;->n:I

    invoke-virtual {v0, v1, v3}, Lb/k/d/p;->a(IZ)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public b(I)Z
    .locals 4

    iget-object v0, p0, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/k/d/v$a;

    iget-object v3, v3, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    iget v3, v3, Landroidx/fragment/app/Fragment;->x:I

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public c(Z)V
    .locals 8

    iget-object v0, p0, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    iget-object v2, p0, Lb/k/d/v;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/k/d/v$a;

    iget-object v3, v2, Lb/k/d/v$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_3

    iget v4, p0, Lb/k/d/v;->f:I

    const/16 v5, 0x2002

    const/16 v6, 0x1003

    const/16 v7, 0x1001

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    :cond_2
    :goto_1
    invoke-virtual {v3, v5}, Landroidx/fragment/app/Fragment;->c(I)V

    :cond_3
    iget v4, v2, Lb/k/d/v$a;->a:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown cmd: "

    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Lb/k/d/v$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v4, p0, Lb/k/d/a;->r:Lb/k/d/p;

    iget-object v5, v2, Lb/k/d/v$a;->g:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v3, v5}, Lb/k/d/p;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_2

    :pswitch_2
    iget-object v4, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v4, v3}, Lb/k/d/p;->o(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_3
    iget-object v4, p0, Lb/k/d/a;->r:Lb/k/d/p;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lb/k/d/p;->o(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_4
    iget v4, v2, Lb/k/d/v$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->b(I)V

    iget-object v4, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v4, v3, v1}, Lb/k/d/p;->a(Landroidx/fragment/app/Fragment;Z)V

    iget-object v4, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v4, v3}, Lb/k/d/p;->e(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_5
    iget v4, v2, Lb/k/d/v$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->b(I)V

    iget-object v4, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v4, v3}, Lb/k/d/p;->b(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_6
    iget v4, v2, Lb/k/d/v$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->b(I)V

    iget-object v4, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v4, v3, v1}, Lb/k/d/p;->a(Landroidx/fragment/app/Fragment;Z)V

    iget-object v4, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v4, v3}, Lb/k/d/p;->h(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_7
    iget v4, v2, Lb/k/d/v$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->b(I)V

    iget-object v4, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v4, v3}, Lb/k/d/p;->q(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_8
    iget v4, v2, Lb/k/d/v$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->b(I)V

    iget-object v4, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v4, v3}, Lb/k/d/p;->a(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_9
    iget v4, v2, Lb/k/d/v$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->b(I)V

    iget-object v4, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v4, v3, v1}, Lb/k/d/p;->a(Landroidx/fragment/app/Fragment;Z)V

    iget-object v4, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v4, v3}, Lb/k/d/p;->m(Landroidx/fragment/app/Fragment;)V

    :goto_2
    iget-boolean v4, p0, Lb/k/d/v;->p:Z

    if-nez v4, :cond_4

    iget v2, v2, Lb/k/d/v$a;->a:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    if-eqz v3, :cond_4

    iget-object v2, p0, Lb/k/d/a;->r:Lb/k/d/p;

    invoke-virtual {v2, v3}, Lb/k/d/p;->l(Landroidx/fragment/app/Fragment;)V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_5
    iget-boolean v0, p0, Lb/k/d/v;->p:Z

    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    iget-object p1, p0, Lb/k/d/a;->r:Lb/k/d/p;

    iget v0, p1, Lb/k/d/p;->n:I

    invoke-virtual {p1, v0, v1}, Lb/k/d/p;->a(IZ)V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/k/d/a;->t:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/k/d/a;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lb/k/d/v;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/k/d/v;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
