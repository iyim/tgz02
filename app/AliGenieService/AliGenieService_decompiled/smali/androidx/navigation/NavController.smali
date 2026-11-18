.class public Landroidx/navigation/NavController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavController$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/app/Activity;

.field public c:Lb/o/n;

.field public d:Lb/o/j;

.field public e:Landroid/os/Bundle;

.field public f:[Landroid/os/Parcelable;

.field public g:Z

.field public final h:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lb/o/e;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lb/m/h;

.field public j:Lb/o/f;

.field public k:Lb/o/r;

.field public final l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/navigation/NavController$b;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lb/m/g;

.field public final n:Lb/a/b;

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    new-instance v0, Lb/o/r;

    invoke-direct {v0}, Lb/o/r;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->k:Lb/o/r;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroidx/navigation/NavController$1;

    invoke-direct {v0, p0}, Landroidx/navigation/NavController$1;-><init>(Landroidx/navigation/NavController;)V

    iput-object v0, p0, Landroidx/navigation/NavController;->m:Lb/m/g;

    new-instance v0, Landroidx/navigation/NavController$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/navigation/NavController$a;-><init>(Landroidx/navigation/NavController;Z)V

    iput-object v0, p0, Landroidx/navigation/NavController;->n:Lb/a/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/navigation/NavController;->o:Z

    iput-object p1, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    :goto_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    goto :goto_1

    :cond_0
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Landroidx/navigation/NavController;->k:Lb/o/r;

    new-instance v0, Lb/o/k;

    invoke-direct {v0, p1}, Lb/o/k;-><init>(Lb/o/r;)V

    invoke-virtual {p1, v0}, Lb/o/r;->a(Lb/o/q;)Lb/o/q;

    iget-object p1, p0, Landroidx/navigation/NavController;->k:Lb/o/r;

    new-instance v0, Lb/o/a;

    iget-object v1, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb/o/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lb/o/r;->a(Lb/o/q;)Lb/o/q;

    return-void
.end method


# virtual methods
.method public a(I)Lb/o/i;
    .locals 2

    iget-object v0, p0, Landroidx/navigation/NavController;->d:Lb/o/j;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 28
    :cond_0
    iget v1, v0, Lb/o/i;->d:I

    if-ne v1, p1, :cond_1

    return-object v0

    .line 29
    :cond_1
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/navigation/NavController;->d:Lb/o/j;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/o/e;

    .line 30
    iget-object v0, v0, Lb/o/e;->b:Lb/o/i;

    .line 31
    :goto_0
    instance-of v1, v0, Lb/o/j;

    if-eqz v1, :cond_3

    check-cast v0, Lb/o/j;

    goto :goto_1

    .line 32
    :cond_3
    iget-object v0, v0, Lb/o/i;->c:Lb/o/j;

    :goto_1
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, p1, v1}, Lb/o/j;->a(IZ)Lb/o/i;

    move-result-object p1

    return-object p1
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    .line 71
    iget-object v1, v0, Landroidx/navigation/NavController;->c:Lb/o/n;

    if-nez v1, :cond_0

    new-instance v1, Lb/o/n;

    iget-object v2, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    iget-object v3, v0, Landroidx/navigation/NavController;->k:Lb/o/r;

    invoke-direct {v1, v2, v3}, Lb/o/n;-><init>(Landroid/content/Context;Lb/o/r;)V

    iput-object v1, v0, Landroidx/navigation/NavController;->c:Lb/o/n;

    :cond_0
    iget-object v1, v0, Landroidx/navigation/NavController;->c:Lb/o/n;

    move/from16 v2, p1

    .line 72
    invoke-virtual {v1, v2}, Lb/o/n;->a(I)Lb/o/j;

    move-result-object v1

    .line 73
    iget-object v2, v0, Landroidx/navigation/NavController;->d:Lb/o/j;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 74
    iget v2, v2, Lb/o/i;->d:I

    .line 75
    invoke-virtual {v0, v2, v3}, Landroidx/navigation/NavController;->b(IZ)Z

    :cond_1
    iput-object v1, v0, Landroidx/navigation/NavController;->d:Lb/o/j;

    .line 76
    iget-object v1, v0, Landroidx/navigation/NavController;->e:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    const-string v2, "android-support-nav:controller:navigatorState:names"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Landroidx/navigation/NavController;->k:Lb/o/r;

    invoke-virtual {v4, v2}, Lb/o/r;->a(Ljava/lang/String;)Lb/o/q;

    move-result-object v4

    iget-object v5, v0, Landroidx/navigation/NavController;->e:Landroid/os/Bundle;

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v4, v2}, Lb/o/q;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Landroidx/navigation/NavController;->f:[Landroid/os/Parcelable;

    const-string v2, " cannot be found from the current destination "

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_7

    array-length v6, v1

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_6

    aget-object v8, v1, v7

    check-cast v8, Landroidx/navigation/NavBackStackEntryState;

    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntryState;->f()I

    move-result v9

    invoke-virtual {v0, v9}, Landroidx/navigation/NavController;->a(I)Lb/o/i;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntryState;->e()Landroid/os/Bundle;

    move-result-object v13

    if-eqz v13, :cond_4

    iget-object v9, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_4
    new-instance v9, Lb/o/e;

    iget-object v11, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    iget-object v14, v0, Landroidx/navigation/NavController;->i:Lb/m/h;

    iget-object v15, v0, Landroidx/navigation/NavController;->j:Lb/o/f;

    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntryState;->h()Ljava/util/UUID;

    move-result-object v16

    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntryState;->g()Landroid/os/Bundle;

    move-result-object v17

    move-object v10, v9

    invoke-direct/range {v10 .. v17}, Lb/o/e;-><init>(Landroid/content/Context;Lb/o/i;Landroid/os/Bundle;Lb/m/h;Lb/o/f;Ljava/util/UUID;Landroid/os/Bundle;)V

    iget-object v8, v0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v8, v9}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntryState;->f()I

    move-result v3

    invoke-static {v1, v3}, Lb/o/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Restoring the Navigation back stack failed: destination "

    invoke-static {v4, v1, v2}, Lc/c/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->b()Lb/o/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->e()V

    iput-object v5, v0, Landroidx/navigation/NavController;->f:[Landroid/os/Parcelable;

    :cond_7
    iget-object v1, v0, Landroidx/navigation/NavController;->d:Lb/o/j;

    if-eqz v1, :cond_24

    iget-object v1, v0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-boolean v1, v0, Landroidx/navigation/NavController;->g:Z

    if-nez v1, :cond_23

    iget-object v1, v0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_8

    goto/16 :goto_e

    .line 77
    :cond_8
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_9

    const-string v7, "android-support-nav:controller:deepLinkIds"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    goto :goto_2

    :cond_9
    move-object v7, v5

    :goto_2
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    if-eqz v6, :cond_a

    const-string v9, "android-support-nav:controller:deepLinkExtras"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_3

    :cond_a
    move-object v6, v5

    :goto_3
    if-eqz v6, :cond_b

    invoke-virtual {v8, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_b
    if-eqz v7, :cond_c

    array-length v6, v7

    if-nez v6, :cond_d

    :cond_c
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v6, v0, Landroidx/navigation/NavController;->d:Lb/o/j;

    new-instance v9, Lb/o/h;

    invoke-direct {v9, v1}, Lb/o/h;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v6, v9}, Lb/o/j;->a(Lb/o/h;)Lb/o/i$a;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 78
    iget-object v7, v6, Lb/o/i$a;->b:Lb/o/i;

    .line 79
    invoke-virtual {v7}, Lb/o/i;->a()[I

    move-result-object v9

    .line 80
    iget-object v6, v6, Lb/o/i$a;->c:Landroid/os/Bundle;

    .line 81
    invoke-virtual {v7, v6}, Lb/o/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    move-object v7, v9

    :cond_d
    if-eqz v7, :cond_22

    array-length v6, v7

    if-nez v6, :cond_e

    goto/16 :goto_e

    .line 82
    :cond_e
    iget-object v6, v0, Landroidx/navigation/NavController;->d:Lb/o/j;

    move-object v9, v6

    move v6, v4

    :goto_4
    array-length v10, v7

    if-ge v6, v10, :cond_14

    aget v10, v7, v6

    if-nez v6, :cond_10

    iget-object v11, v0, Landroidx/navigation/NavController;->d:Lb/o/j;

    .line 83
    iget v12, v11, Lb/o/i;->d:I

    if-ne v12, v10, :cond_f

    goto :goto_5

    :cond_f
    move-object v11, v5

    goto :goto_5

    .line 84
    :cond_10
    invoke-virtual {v9, v10}, Lb/o/j;->b(I)Lb/o/i;

    move-result-object v11

    :goto_5
    if-nez v11, :cond_11

    iget-object v6, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-static {v6, v10}, Lb/o/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_11
    array-length v10, v7

    add-int/lit8 v10, v10, -0x1

    if-eq v6, v10, :cond_13

    check-cast v11, Lb/o/j;

    .line 85
    :goto_6
    iget v9, v11, Lb/o/j;->k:I

    .line 86
    invoke-virtual {v11, v9}, Lb/o/j;->b(I)Lb/o/i;

    move-result-object v9

    instance-of v9, v9, Lb/o/j;

    if-eqz v9, :cond_12

    .line 87
    iget v9, v11, Lb/o/j;->k:I

    .line 88
    invoke-virtual {v11, v9}, Lb/o/j;->b(I)Lb/o/i;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lb/o/j;

    goto :goto_6

    :cond_12
    move-object v9, v11

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_14
    move-object v6, v5

    :goto_7
    if-eqz v6, :cond_15

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find destination "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in the navigation graph, ignoring the deep link from "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_15
    const-string v6, "android-support-nav:controller:deepLinkIntent"

    invoke-virtual {v8, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v9, 0x10000000

    and-int/2addr v9, v6

    if-eqz v9, :cond_18

    const v10, 0x8000

    and-int/2addr v6, v10

    if-nez v6, :cond_18

    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-static {v2}, Lb/h/c/e;->a(Landroid/content/Context;)Lb/h/c/e;

    move-result-object v2

    .line 90
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_16

    iget-object v6, v2, Lb/h/c/e;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    :cond_16
    if-eqz v6, :cond_17

    invoke-virtual {v2, v6}, Lb/h/c/e;->a(Landroid/content/ComponentName;)Lb/h/c/e;

    :cond_17
    invoke-virtual {v2, v1}, Lb/h/c/e;->a(Landroid/content/Intent;)Lb/h/c/e;

    .line 91
    invoke-virtual {v2}, Lb/h/c/e;->a()V

    iget-object v1, v0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    iget-object v1, v0, Landroidx/navigation/NavController;->b:Landroid/app/Activity;

    invoke-virtual {v1, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_d

    :cond_18
    const-string v1, "Deep Linking failed: destination "

    if-eqz v9, :cond_1b

    iget-object v6, v0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_19

    iget-object v6, v0, Landroidx/navigation/NavController;->d:Lb/o/j;

    .line 92
    iget v6, v6, Lb/o/i;->d:I

    .line 93
    invoke-virtual {v0, v6, v3}, Landroidx/navigation/NavController;->b(IZ)Z

    :cond_19
    move v6, v4

    :goto_8
    array-length v9, v7

    if-ge v6, v9, :cond_21

    add-int/lit8 v9, v6, 0x1

    aget v6, v7, v6

    invoke-virtual {v0, v6}, Landroidx/navigation/NavController;->a(I)Lb/o/i;

    move-result-object v10

    if-eqz v10, :cond_1a

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/16 v18, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 94
    new-instance v6, Lb/o/o;

    move-object v11, v6

    move/from16 v13, v18

    move/from16 v17, v18

    invoke-direct/range {v11 .. v18}, Lb/o/o;-><init>(ZIZIIII)V

    .line 95
    invoke-virtual {v0, v10, v8, v6, v5}, Landroidx/navigation/NavController;->a(Lb/o/i;Landroid/os/Bundle;Lb/o/o;Lb/o/q$a;)V

    move v6, v9

    goto :goto_8

    :cond_1a
    iget-object v3, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-static {v3, v6}, Lb/o/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-static {v1, v3, v2}, Lc/c/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->b()Lb/o/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1b
    iget-object v2, v0, Landroidx/navigation/NavController;->d:Lb/o/j;

    move-object v6, v2

    move v2, v4

    :goto_9
    array-length v9, v7

    if-ge v2, v9, :cond_20

    aget v9, v7, v2

    if-nez v2, :cond_1c

    iget-object v10, v0, Landroidx/navigation/NavController;->d:Lb/o/j;

    goto :goto_a

    :cond_1c
    invoke-virtual {v6, v9}, Lb/o/j;->b(I)Lb/o/i;

    move-result-object v10

    :goto_a
    if-eqz v10, :cond_1f

    array-length v9, v7

    sub-int/2addr v9, v3

    if-eq v2, v9, :cond_1e

    check-cast v10, Lb/o/j;

    .line 96
    :goto_b
    iget v6, v10, Lb/o/j;->k:I

    .line 97
    invoke-virtual {v10, v6}, Lb/o/j;->b(I)Lb/o/i;

    move-result-object v6

    instance-of v6, v6, Lb/o/j;

    if-eqz v6, :cond_1d

    .line 98
    iget v6, v10, Lb/o/j;->k:I

    .line 99
    invoke-virtual {v10, v6}, Lb/o/j;->b(I)Lb/o/i;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Lb/o/j;

    goto :goto_b

    :cond_1d
    move-object v6, v10

    goto :goto_c

    :cond_1e
    invoke-virtual {v10, v8}, Lb/o/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    const/4 v12, 0x0

    const/16 v18, -0x1

    iget-object v11, v0, Landroidx/navigation/NavController;->d:Lb/o/j;

    .line 100
    iget v13, v11, Lb/o/i;->d:I

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 101
    new-instance v11, Lb/o/o;

    move-object/from16 p1, v11

    move/from16 v17, v18

    invoke-direct/range {v11 .. v18}, Lb/o/o;-><init>(ZIZIIII)V

    .line 102
    invoke-virtual {v0, v10, v9, v11, v5}, Landroidx/navigation/NavController;->a(Lb/o/i;Landroid/os/Bundle;Lb/o/o;Lb/o/q$a;)V

    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1f
    iget-object v2, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-static {v2, v9}, Lb/o/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be found in graph "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_20
    iput-boolean v3, v0, Landroidx/navigation/NavController;->g:Z

    :cond_21
    :goto_d
    move v1, v3

    goto :goto_f

    :cond_22
    :goto_e
    move v1, v4

    :goto_f
    if-eqz v1, :cond_23

    goto :goto_10

    :cond_23
    move v3, v4

    :goto_10
    if-nez v3, :cond_25

    .line 103
    iget-object v1, v0, Landroidx/navigation/NavController;->d:Lb/o/j;

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5, v5}, Landroidx/navigation/NavController;->a(Lb/o/i;Landroid/os/Bundle;Lb/o/o;Lb/o/q$a;)V

    goto :goto_11

    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->a()Z

    :cond_25
    :goto_11
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "android-support-nav:controller:navigatorState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->e:Landroid/os/Bundle;

    const-string v0, "android-support-nav:controller:backStack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->f:[Landroid/os/Parcelable;

    const-string v0, "android-support-nav:controller:deepLinkHandled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/navigation/NavController;->g:Z

    return-void
.end method

.method public final a(Lb/o/i;Landroid/os/Bundle;Lb/o/o;Lb/o/q$a;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 34
    iget v1, p3, Lb/o/o;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 35
    iget-boolean v2, p3, Lb/o/o;->c:Z

    .line 36
    invoke-virtual {p0, v1, v2}, Landroidx/navigation/NavController;->b(IZ)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/navigation/NavController;->k:Lb/o/r;

    .line 37
    iget-object v3, p1, Lb/o/i;->b:Ljava/lang/String;

    .line 38
    invoke-virtual {v2, v3}, Lb/o/r;->a(Ljava/lang/String;)Lb/o/q;

    move-result-object v2

    invoke-virtual {p1, p2}, Lb/o/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v2, p1, p2, p3, p4}, Lb/o/q;->a(Lb/o/i;Landroid/os/Bundle;Lb/o/o;Lb/o/q$a;)Lb/o/i;

    move-result-object p4

    const/4 v2, 0x1

    if-eqz p4, :cond_c

    instance-of p3, p4, Lb/o/b;

    if-nez p3, :cond_1

    :goto_1
    iget-object p3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p3}, Ljava/util/Deque;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p3}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb/o/e;

    .line 39
    iget-object p3, p3, Lb/o/e;->b:Lb/o/i;

    .line 40
    instance-of p3, p3, Lb/o/b;

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p3}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb/o/e;

    .line 41
    iget-object p3, p3, Lb/o/e;->b:Lb/o/i;

    .line 42
    iget p3, p3, Lb/o/i;->d:I

    .line 43
    invoke-virtual {p0, p3, v2}, Landroidx/navigation/NavController;->b(IZ)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/util/ArrayDeque;

    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    instance-of v3, p1, Lb/o/j;

    if-eqz v3, :cond_4

    move-object v3, p4

    .line 44
    :goto_2
    iget-object v9, v3, Lb/o/i;->c:Lb/o/j;

    if-eqz v9, :cond_2

    .line 45
    new-instance v10, Lb/o/e;

    iget-object v4, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    iget-object v7, p0, Landroidx/navigation/NavController;->i:Lb/m/h;

    iget-object v8, p0, Landroidx/navigation/NavController;->j:Lb/o/f;

    move-object v3, v10

    move-object v5, v9

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lb/o/e;-><init>(Landroid/content/Context;Lb/o/i;Landroid/os/Bundle;Lb/m/h;Lb/o/f;)V

    invoke-virtual {p3, v10}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iget-object v3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/o/e;

    .line 46
    iget-object v3, v3, Lb/o/e;->b:Lb/o/i;

    if-ne v3, v9, :cond_2

    .line 47
    iget v3, v9, Lb/o/i;->d:I

    .line 48
    invoke-virtual {p0, v3, v2}, Landroidx/navigation/NavController;->b(IZ)Z

    :cond_2
    if-eqz v9, :cond_4

    if-ne v9, p1, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v9

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    move-object p1, p4

    goto :goto_4

    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/o/e;

    .line 49
    iget-object p1, p1, Lb/o/e;->b:Lb/o/i;

    :cond_6
    :goto_4
    if-eqz p1, :cond_7

    .line 50
    iget v3, p1, Lb/o/i;->d:I

    .line 51
    invoke-virtual {p0, v3}, Landroidx/navigation/NavController;->a(I)Lb/o/i;

    move-result-object v3

    if-nez v3, :cond_7

    .line 52
    iget-object p1, p1, Lb/o/i;->c:Lb/o/j;

    if-eqz p1, :cond_6

    .line 53
    new-instance v9, Lb/o/e;

    iget-object v4, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    iget-object v7, p0, Landroidx/navigation/NavController;->i:Lb/m/h;

    iget-object v8, p0, Landroidx/navigation/NavController;->j:Lb/o/f;

    move-object v3, v9

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lb/o/e;-><init>(Landroid/content/Context;Lb/o/i;Landroid/os/Bundle;Lb/m/h;Lb/o/f;)V

    invoke-virtual {p3, v9}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    move-object p1, p4

    goto :goto_5

    :cond_8
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/o/e;

    .line 54
    iget-object p1, p1, Lb/o/e;->b:Lb/o/i;

    .line 55
    :goto_5
    iget-object v3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/o/e;

    .line 56
    iget-object v3, v3, Lb/o/e;->b:Lb/o/i;

    .line 57
    instance-of v3, v3, Lb/o/j;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/o/e;

    .line 58
    iget-object v3, v3, Lb/o/e;->b:Lb/o/i;

    .line 59
    check-cast v3, Lb/o/j;

    .line 60
    iget v4, p1, Lb/o/i;->d:I

    .line 61
    invoke-virtual {v3, v4, v0}, Lb/o/j;->a(IZ)Lb/o/i;

    move-result-object v3

    if-nez v3, :cond_9

    iget-object v3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/o/e;

    .line 62
    iget-object v3, v3, Lb/o/e;->b:Lb/o/i;

    .line 63
    iget v3, v3, Lb/o/i;->d:I

    .line 64
    invoke-virtual {p0, v3, v2}, Landroidx/navigation/NavController;->b(IZ)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_5

    :cond_9
    iget-object p1, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p1, p3}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/o/e;

    .line 65
    iget-object p1, p1, Lb/o/e;->b:Lb/o/i;

    .line 66
    iget-object p3, p0, Landroidx/navigation/NavController;->d:Lb/o/j;

    if-eq p1, p3, :cond_b

    :cond_a
    new-instance p1, Lb/o/e;

    iget-object v4, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    iget-object v5, p0, Landroidx/navigation/NavController;->d:Lb/o/j;

    iget-object v7, p0, Landroidx/navigation/NavController;->i:Lb/m/h;

    iget-object v8, p0, Landroidx/navigation/NavController;->j:Lb/o/f;

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lb/o/e;-><init>(Landroid/content/Context;Lb/o/i;Landroid/os/Bundle;Lb/m/h;Lb/o/f;)V

    iget-object p3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p3, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    :cond_b
    new-instance p1, Lb/o/e;

    iget-object v4, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-virtual {p4, p2}, Lb/o/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Landroidx/navigation/NavController;->i:Lb/m/h;

    iget-object v8, p0, Landroidx/navigation/NavController;->j:Lb/o/f;

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v3 .. v8}, Lb/o/e;-><init>(Landroid/content/Context;Lb/o/i;Landroid/os/Bundle;Lb/m/h;Lb/o/f;)V

    iget-object p2, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p2, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    if-eqz p3, :cond_e

    .line 67
    iget-boolean p1, p3, Lb/o/o;->a:Z

    if-eqz p1, :cond_e

    .line 68
    iget-object p1, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/o/e;

    if-eqz p1, :cond_d

    .line 69
    iput-object p2, p1, Lb/o/e;->c:Landroid/os/Bundle;

    :cond_d
    move v0, v2

    .line 70
    :cond_e
    :goto_6
    invoke-virtual {p0}, Landroidx/navigation/NavController;->e()V

    if-nez v1, :cond_f

    if-nez p4, :cond_f

    if-eqz v0, :cond_10

    :cond_f
    invoke-virtual {p0}, Landroidx/navigation/NavController;->a()Z

    :cond_10
    return-void
.end method

.method public final a()Z
    .locals 10

    :goto_0
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/o/e;

    .line 1
    iget-object v0, v0, Lb/o/e;->b:Lb/o/i;

    .line 2
    instance-of v0, v0, Lb/o/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/o/e;

    .line 3
    iget-object v0, v0, Lb/o/e;->b:Lb/o/i;

    .line 4
    iget v0, v0, Lb/o/i;->d:I

    .line 5
    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->b(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/o/e;

    .line 6
    iget-object v0, v0, Lb/o/e;->b:Lb/o/i;

    const/4 v2, 0x0

    .line 7
    instance-of v3, v0, Lb/o/b;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/o/e;

    .line 8
    iget-object v4, v4, Lb/o/e;->b:Lb/o/i;

    .line 9
    instance-of v5, v4, Lb/o/j;

    if-nez v5, :cond_1

    instance-of v5, v4, Lb/o/b;

    if-nez v5, :cond_1

    move-object v2, v4

    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/o/e;

    .line 10
    iget-object v6, v5, Lb/o/e;->h:Landroidx/lifecycle/Lifecycle$State;

    .line 11
    iget-object v7, v5, Lb/o/e;->b:Lb/o/i;

    if-eqz v0, :cond_4

    .line 12
    iget v8, v7, Lb/o/i;->d:I

    iget v9, v0, Lb/o/i;->d:I

    if-ne v8, v9, :cond_4

    .line 13
    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v6, v7, :cond_3

    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_3
    iget-object v0, v0, Lb/o/i;->c:Lb/o/j;

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_7

    .line 15
    iget v7, v7, Lb/o/i;->d:I

    iget v8, v2, Lb/o/i;->d:I

    if-ne v7, v8, :cond_7

    .line 16
    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v6, v7, :cond_5

    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 17
    iput-object v6, v5, Lb/o/e;->h:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5}, Lb/o/e;->e()V

    goto :goto_2

    .line 18
    :cond_5
    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v6, v7, :cond_6

    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_6
    :goto_2
    iget-object v2, v2, Lb/o/i;->c:Lb/o/j;

    goto :goto_1

    .line 20
    :cond_7
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 21
    iput-object v6, v5, Lb/o/e;->h:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5}, Lb/o/e;->e()V

    goto :goto_1

    .line 22
    :cond_8
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/o/e;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/Lifecycle$State;

    if-eqz v4, :cond_9

    .line 23
    iput-object v4, v2, Lb/o/e;->h:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2}, Lb/o/e;->e()V

    goto :goto_3

    .line 24
    :cond_9
    invoke-virtual {v2}, Lb/o/e;->e()V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/o/e;

    iget-object v2, p0, Landroidx/navigation/NavController;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavController$b;

    .line 25
    iget-object v4, v0, Lb/o/e;->b:Lb/o/i;

    .line 26
    iget-object v5, v0, Lb/o/e;->c:Landroid/os/Bundle;

    .line 27
    invoke-interface {v3, p0, v4, v5}, Landroidx/navigation/NavController$b;->a(Landroidx/navigation/NavController;Lb/o/i;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_b
    return v1

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public a(IZ)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavController;->b(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Lb/o/i;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/o/e;

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lb/o/e;->b:Lb/o/i;

    :cond_1
    return-object v1
.end method

.method public b(I)V
    .locals 8

    .line 3
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavController;->d:Lb/o/j;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/o/e;

    .line 4
    iget-object v0, v0, Lb/o/e;->b:Lb/o/i;

    :goto_0
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lb/o/i;->a(I)Lb/o/c;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    iget-object v3, v1, Lb/o/c;->b:Lb/o/o;

    .line 7
    iget v4, v1, Lb/o/c;->a:I

    .line 8
    iget-object v5, v1, Lb/o/c;->c:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    .line 9
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    move v4, p1

    move-object v3, v2

    :cond_2
    move-object v6, v2

    :goto_1
    if-nez v4, :cond_3

    if-eqz v3, :cond_3

    .line 10
    iget v5, v3, Lb/o/o;->b:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 11
    iget-boolean p1, v3, Lb/o/o;->c:Z

    .line 12
    invoke-virtual {p0, v5, p1}, Landroidx/navigation/NavController;->a(IZ)Z

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_6

    invoke-virtual {p0, v4}, Landroidx/navigation/NavController;->a(I)Lb/o/i;

    move-result-object v5

    if-nez v5, :cond_5

    iget-object v2, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-static {v2, v4}, Lb/o/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " cannot be found from the current destination "

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Navigation destination "

    const-string v5, " referenced from action "

    invoke-static {v4, v2, v5}, Lc/c/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-static {v4, p1}, Lb/o/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Navigation action/destination "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p0, v5, v6, v3, v2}, Landroidx/navigation/NavController;->a(Lb/o/i;Landroid/os/Bundle;Lb/o/o;Lb/o/q$a;)V

    :goto_2
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no current navigation node"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(IZ)Z
    .locals 7

    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/o/e;

    .line 13
    iget-object v3, v3, Lb/o/e;->b:Lb/o/i;

    .line 14
    iget-object v5, p0, Landroidx/navigation/NavController;->k:Lb/o/r;

    .line 15
    iget-object v6, v3, Lb/o/i;->b:Ljava/lang/String;

    .line 16
    invoke-virtual {v5, v6}, Lb/o/r;->a(Ljava/lang/String;)Lb/o/q;

    move-result-object v5

    if-nez p2, :cond_2

    .line 17
    iget v6, v3, Lb/o/i;->d:I

    if-eq v6, p1, :cond_3

    .line 18
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_3
    iget v3, v3, Lb/o/i;->d:I

    if-ne v3, p1, :cond_1

    move p2, v4

    goto :goto_0

    :cond_4
    move p2, v1

    :goto_0
    if-nez p2, :cond_5

    .line 20
    iget-object p2, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lb/o/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring popBackStack to destination "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as it was not found on the current back stack"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NavController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/o/q;

    invoke-virtual {p2}, Lb/o/q;->c()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/o/e;

    .line 21
    iget-object v0, p2, Lb/o/e;->d:Lb/m/i;

    .line 22
    iget-object v0, v0, Lb/m/i;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 23
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 24
    iput-object v0, p2, Lb/o/e;->h:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p2}, Lb/o/e;->e()V

    .line 25
    :cond_6
    iget-object v0, p0, Landroidx/navigation/NavController;->j:Lb/o/f;

    if-eqz v0, :cond_7

    iget-object p2, p2, Lb/o/e;->f:Ljava/util/UUID;

    invoke-virtual {v0, p2}, Lb/o/f;->a(Ljava/util/UUID;)V

    :cond_7
    move v1, v4

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Landroidx/navigation/NavController;->e()V

    return v1
.end method

.method public c()Z
    .locals 3

    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->b()Lb/o/i;

    move-result-object v0

    .line 1
    iget v0, v0, Lb/o/i;->d:I

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p0, v0, v2}, Landroidx/navigation/NavController;->b(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/navigation/NavController;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public d()Landroid/os/Bundle;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Landroidx/navigation/NavController;->k:Lb/o/r;

    .line 1
    iget-object v2, v2, Lb/o/r;->a:Ljava/util/HashMap;

    .line 2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/o/q;

    invoke-virtual {v3}, Lb/o/q;->b()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android-support-nav:controller:navigatorState:names"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "android-support-nav:controller:navigatorState"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez v2, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    :cond_3
    iget-object v0, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Parcelable;

    const/4 v1, 0x0

    iget-object v3, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/o/e;

    add-int/lit8 v5, v1, 0x1

    new-instance v6, Landroidx/navigation/NavBackStackEntryState;

    invoke-direct {v6, v4}, Landroidx/navigation/NavBackStackEntryState;-><init>(Lb/o/e;)V

    aput-object v6, v0, v1

    move v1, v5

    goto :goto_2

    :cond_4
    const-string v1, "android-support-nav:controller:backStack"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_5
    iget-boolean v0, p0, Landroidx/navigation/NavController;->g:Z

    if-eqz v0, :cond_7

    if-nez v2, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    :cond_6
    iget-boolean v0, p0, Landroidx/navigation/NavController;->g:Z

    const-string v1, "android-support-nav:controller:deepLinkHandled"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    return-object v2
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Landroidx/navigation/NavController;->n:Lb/a/b;

    iget-boolean v1, p0, Landroidx/navigation/NavController;->o:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 1
    iget-object v1, p0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/o/e;

    .line 2
    iget-object v5, v5, Lb/o/e;->b:Lb/o/i;

    .line 3
    instance-of v5, v5, Lb/o/j;

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-le v4, v3, :cond_2

    move v2, v3

    .line 4
    :cond_2
    iput-boolean v2, v0, Lb/a/b;->a:Z

    return-void
.end method
