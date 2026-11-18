.class public Lc/e/a/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A:I

.field public static B:I

.field public static C:I

.field public static D:Z

.field public static E:Ljava/lang/Runnable;

.field public static F:Z

.field public static G:Z

.field public static H:Z

.field public static final synthetic I:Z

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:I

.field public static h:J

.field public static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static final o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:I

.field public static final w:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lc/e/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lc/e/a/b;->I:Z

    const-string v0, ""

    sput-object v0, Lc/e/a/b;->a:Ljava/lang/String;

    sput-object v0, Lc/e/a/b;->b:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lc/e/a/b;->c:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lc/e/a/b;->d:Ljava/util/List;

    sput-object v0, Lc/e/a/b;->e:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lc/e/a/b;->f:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lc/e/a/b;->g:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lc/e/a/b;->h:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc/e/a/b;->i:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc/e/a/b;->j:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Lc/e/a/b;->k:I

    sput v0, Lc/e/a/b;->l:I

    sput v0, Lc/e/a/b;->m:I

    sput v0, Lc/e/a/b;->n:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lc/e/a/b;->o:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lc/e/a/b;->p:Ljava/util/List;

    sput v0, Lc/e/a/b;->q:I

    sput v0, Lc/e/a/b;->r:I

    sput v0, Lc/e/a/b;->s:I

    sput v0, Lc/e/a/b;->t:I

    sput v0, Lc/e/a/b;->u:I

    sput v0, Lc/e/a/b;->v:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lc/e/a/b;->w:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lc/e/a/b;->x:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lc/e/a/b;->y:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lc/e/a/b;->z:Ljava/util/List;

    sput v0, Lc/e/a/b;->A:I

    sput v0, Lc/e/a/b;->B:I

    sput v0, Lc/e/a/b;->C:I

    sput-boolean v0, Lc/e/a/b;->D:Z

    new-instance v1, Lc/e/a/a/d;

    const/16 v2, 0xc9

    invoke-direct {v1, v2}, Lc/e/a/a/d;-><init>(I)V

    sput-object v1, Lc/e/a/b;->E:Ljava/lang/Runnable;

    sput-boolean v0, Lc/e/a/b;->F:Z

    sput-boolean v0, Lc/e/a/b;->G:Z

    sput-boolean v0, Lc/e/a/b;->H:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;)I
    .locals 5

    invoke-static {p1}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->f(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    sget-boolean v1, Lc/e/a/c;->r:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lc/e/a/b;->w:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v0, 0x4

    int-to-long v3, p0

    :try_start_0
    invoke-static {v0, v3, v4, p1, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->f(I)Z

    move-result v0

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    const-string v1, "crashsdk so has not loaded!"

    const-string v3, "crashsdk"

    invoke-static {v3, v1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(I)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {p1, p0}, Lc/e/a/b;->a(Ljava/lang/String;Ljava/lang/Thread;)Z

    or-int/lit8 v0, v0, 0x10

    :cond_4
    return v0
.end method

.method public static a(Ljava/lang/String;II)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    if-gtz p1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 v1, 0x5dc

    if-le p1, v1, :cond_1

    const/4 p0, 0x0

    const-string p1, "createCachedInfo: capacity is too large!"

    const-string p2, "crashsdk"

    invoke-static {p2, p1, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_1
    sget-object v1, Lc/e/a/b;->y:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lc/e/a/b;->y:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    sget-object v2, Lc/e/a/b;->y:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(II)I

    move-result v4

    goto :goto_0

    :cond_2
    move v4, p2

    move v2, v0

    :goto_0
    invoke-static {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(I)Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_4

    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(I)Z

    move-result v5

    if-nez v5, :cond_4

    sget v5, Lc/e/a/b;->A:I

    if-lt v5, v6, :cond_3

    const/16 v5, 0x10

    invoke-static {v4, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(II)I

    move-result v4

    goto :goto_1

    :cond_3
    sget v5, Lc/e/a/b;->A:I

    add-int/2addr v5, v3

    sput v5, Lc/e/a/b;->A:I

    :cond_4
    :goto_1
    invoke-static {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->f(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->f(I)Z

    move-result v5

    if-nez v5, :cond_6

    sget v5, Lc/e/a/b;->B:I

    if-lt v5, v6, :cond_5

    invoke-static {v4, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(II)I

    move-result v4

    goto :goto_2

    :cond_5
    sget v5, Lc/e/a/b;->B:I

    add-int/2addr v5, v3

    sput v5, Lc/e/a/b;->B:I

    :cond_6
    :goto_2
    invoke-static {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(I)Z

    move-result v5

    const/high16 v7, 0x100000

    if-eqz v5, :cond_8

    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(I)Z

    move-result v5

    if-nez v5, :cond_8

    sget v5, Lc/e/a/b;->C:I

    if-lt v5, v6, :cond_7

    invoke-static {v4, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(II)I

    move-result v4

    goto :goto_3

    :cond_7
    sget v5, Lc/e/a/b;->C:I

    add-int/2addr v5, v3

    sput v5, Lc/e/a/b;->C:I

    :cond_8
    :goto_3
    const v5, 0x100111

    and-int/2addr v5, v4

    if-nez v5, :cond_9

    move v2, v0

    goto :goto_4

    :cond_9
    if-nez v2, :cond_a

    sget-object v2, Lc/e/a/b;->z:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    move v2, v3

    :goto_4
    if-nez v2, :cond_b

    monitor-exit v1

    return v4

    :cond_b
    sget-boolean v2, Lc/e/a/c;->r:Z

    if-eqz v2, :cond_d

    const v2, 0x100001

    and-int/2addr p2, v2

    if-eqz p2, :cond_d

    invoke-static {p0, p1, v4}, Lcom/uc/crashsdk/JNIBridge;->nativeCreateCachedInfo(Ljava/lang/String;II)I

    move-result p2

    invoke-static {p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->f(I)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {v4, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(II)I

    move-result v4

    :cond_c
    invoke-static {p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(I)Z

    move-result p2

    if-nez p2, :cond_d

    invoke-static {v4, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(II)I

    move-result v4

    :cond_d
    sget-object p2, Lc/e/a/b;->y:Ljava/util/HashMap;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    aput-object v0, v2, p1

    invoke-virtual {p2, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return v4

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_e
    :goto_5
    return v0
.end method

.method public static a(Ljava/lang/String;ILjava/util/concurrent/Callable;JI)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/String;",
            ">;JI)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p3

    const/4 v4, 0x0

    if-nez v0, :cond_0

    return v4

    :cond_0
    sget-object v5, Lc/e/a/b;->o:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    sget-object v6, Lc/e/a/b;->o:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lc/e/a/b;->o:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    aget-object v6, v6, v4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(II)I

    move-result v7

    if-ne v6, v7, :cond_2

    monitor-exit v5

    return v6

    :cond_1
    move v7, v1

    move v6, v4

    :cond_2
    invoke-static {v7}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(I)Z

    move-result v8

    const-wide/16 v9, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x1

    if-eqz v8, :cond_7

    invoke-static {v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(I)Z

    move-result v8

    if-nez v8, :cond_7

    sget v8, Lc/e/a/b;->q:I

    const/16 v13, 0x8

    if-lt v8, v13, :cond_3

    :goto_0
    move v8, v12

    goto :goto_2

    :cond_3
    cmp-long v8, v2, v9

    if-eqz v8, :cond_5

    sget v8, Lc/e/a/b;->u:I

    if-lt v8, v11, :cond_4

    goto :goto_0

    :cond_4
    sget v8, Lc/e/a/b;->u:I

    add-int/2addr v8, v12

    sput v8, Lc/e/a/b;->u:I

    goto :goto_1

    :cond_5
    sget v8, Lc/e/a/b;->q:I

    sget v13, Lc/e/a/b;->u:I

    sub-int/2addr v8, v13

    if-lt v8, v11, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    sget v8, Lc/e/a/b;->q:I

    add-int/2addr v8, v12

    sput v8, Lc/e/a/b;->q:I

    move v8, v4

    :goto_2
    if-eqz v8, :cond_7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(II)I

    move-result v7

    :cond_7
    invoke-static {v7}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->f(I)Z

    move-result v8

    const/4 v13, 0x4

    if-eqz v8, :cond_c

    invoke-static {v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->f(I)Z

    move-result v8

    if-nez v8, :cond_c

    sget v8, Lc/e/a/b;->r:I

    if-lt v8, v11, :cond_8

    :goto_3
    move v9, v4

    move v10, v9

    move v8, v12

    goto :goto_4

    :cond_8
    cmp-long v8, v2, v9

    if-eqz v8, :cond_a

    sget v8, Lc/e/a/b;->v:I

    if-lt v8, v13, :cond_9

    goto :goto_3

    :cond_9
    sget v8, Lc/e/a/b;->v:I

    add-int/2addr v8, v12

    sput v8, Lc/e/a/b;->v:I

    sget v8, Lc/e/a/b;->r:I

    add-int/2addr v8, v12

    sput v8, Lc/e/a/b;->r:I

    move v8, v4

    move v9, v12

    move v10, v9

    goto :goto_4

    :cond_a
    sget v8, Lc/e/a/b;->r:I

    sget v9, Lc/e/a/b;->v:I

    sub-int/2addr v8, v9

    if-lt v8, v13, :cond_b

    goto :goto_3

    :cond_b
    sget v8, Lc/e/a/b;->r:I

    add-int/2addr v8, v12

    sput v8, Lc/e/a/b;->r:I

    move v8, v4

    move v10, v8

    move v9, v12

    :goto_4
    if-eqz v8, :cond_d

    invoke-static {v7, v12}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(II)I

    move-result v7

    goto :goto_5

    :cond_c
    move v9, v4

    move v10, v9

    :cond_d
    :goto_5
    invoke-static {v7}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(I)Z

    move-result v8

    const/high16 v14, 0x100000

    if-eqz v8, :cond_f

    invoke-static {v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(I)Z

    move-result v8

    if-nez v8, :cond_f

    sget v8, Lc/e/a/b;->t:I

    if-lt v8, v11, :cond_e

    invoke-static {v7, v14}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(II)I

    move-result v7

    goto :goto_6

    :cond_e
    sget v8, Lc/e/a/b;->t:I

    add-int/2addr v8, v12

    sput v8, Lc/e/a/b;->t:I

    move v8, v12

    goto :goto_7

    :cond_f
    :goto_6
    move v8, v4

    :goto_7
    invoke-static {v7}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->g(I)Z

    move-result v15

    const/16 v4, 0x100

    if-eqz v15, :cond_11

    invoke-static {v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->g(I)Z

    move-result v15

    if-nez v15, :cond_11

    sget v15, Lc/e/a/b;->s:I

    if-lt v15, v11, :cond_10

    invoke-static {v7, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(II)I

    move-result v7

    goto :goto_8

    :cond_10
    sget v11, Lc/e/a/b;->s:I

    add-int/2addr v11, v12

    sput v11, Lc/e/a/b;->s:I

    move v11, v12

    goto :goto_9

    :cond_11
    :goto_8
    const/4 v11, 0x0

    :goto_9
    const v15, 0x100111

    and-int/2addr v15, v7

    if-nez v15, :cond_12

    const/4 v6, 0x0

    goto :goto_a

    :cond_12
    if-nez v6, :cond_13

    sget-object v6, Lc/e/a/b;->p:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    move v6, v12

    :goto_a
    if-nez v6, :cond_14

    monitor-exit v5

    return v7

    :cond_14
    sget-boolean v6, Lc/e/a/c;->r:Z

    if-eqz v6, :cond_18

    const v6, 0x100101

    and-int/2addr v6, v1

    if-eqz v6, :cond_18

    move/from16 v6, p5

    invoke-static {v0, v1, v2, v3, v6}, Lcom/uc/crashsdk/JNIBridge;->nativeAddCallbackInfo(Ljava/lang/String;IJI)I

    move-result v1

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->f(I)Z

    move-result v15

    if-nez v15, :cond_16

    invoke-static {v7, v12}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(II)I

    move-result v7

    if-eqz v9, :cond_15

    sget v9, Lc/e/a/b;->r:I

    sub-int/2addr v9, v12

    sput v9, Lc/e/a/b;->r:I

    :cond_15
    if-eqz v10, :cond_16

    sget v9, Lc/e/a/b;->v:I

    sub-int/2addr v9, v12

    sput v9, Lc/e/a/b;->v:I

    :cond_16
    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(I)Z

    move-result v9

    if-nez v9, :cond_17

    invoke-static {v7, v14}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(II)I

    move-result v7

    if-eqz v8, :cond_17

    sget v8, Lc/e/a/b;->t:I

    sub-int/2addr v8, v12

    sput v8, Lc/e/a/b;->t:I

    :cond_17
    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->g(I)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {v7, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(II)I

    move-result v7

    if-eqz v11, :cond_19

    sget v1, Lc/e/a/b;->s:I

    sub-int/2addr v1, v12

    sput v1, Lc/e/a/b;->s:I

    goto :goto_b

    :cond_18
    move/from16 v6, p5

    :cond_19
    :goto_b
    sget-object v1, Lc/e/a/b;->o:Ljava/util/HashMap;

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v4, v9

    aput-object p2, v4, v12

    const/4 v8, 0x2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v8

    const/4 v2, 0x3

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5

    return v7

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZZIZ)I
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_1

    const/4 p0, 0x0

    const-string p1, "addDumpFile: description is too long!"

    const-string p2, "crashsdk"

    invoke-static {p2, p1, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_1
    sget-object v1, Lc/e/a/b;->i:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v3, Lc/e/a/b;->i:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lc/e/a/b;->i:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, p4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(II)I

    move-result v4

    goto :goto_0

    :cond_2
    move v4, p4

    move v3, v0

    :goto_0
    invoke-static {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(I)Z

    move-result v5

    const/16 v6, 0xa

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    invoke-static {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(I)Z

    move-result v5

    if-nez v5, :cond_4

    sget v5, Lc/e/a/b;->k:I

    if-lt v5, v6, :cond_3

    const/16 v5, 0x10

    invoke-static {v4, v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(II)I

    move-result v4

    goto :goto_1

    :cond_3
    sget v5, Lc/e/a/b;->k:I

    add-int/2addr v5, v7

    sput v5, Lc/e/a/b;->k:I

    :cond_4
    :goto_1
    invoke-static {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->f(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->f(I)Z

    move-result v5

    if-nez v5, :cond_6

    sget v5, Lc/e/a/b;->l:I

    if-lt v5, v6, :cond_5

    invoke-static {v4, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(II)I

    move-result v4

    goto :goto_2

    :cond_5
    sget v5, Lc/e/a/b;->l:I

    add-int/2addr v5, v7

    sput v5, Lc/e/a/b;->l:I

    :cond_6
    :goto_2
    invoke-static {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->g(I)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->g(I)Z

    move-result v5

    if-nez v5, :cond_8

    sget v5, Lc/e/a/b;->m:I

    if-lt v5, v6, :cond_7

    invoke-static {v4, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(II)I

    move-result v4

    goto :goto_3

    :cond_7
    sget v5, Lc/e/a/b;->m:I

    add-int/2addr v5, v7

    sput v5, Lc/e/a/b;->m:I

    :cond_8
    :goto_3
    invoke-static {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(I)Z

    move-result v5

    const/high16 v8, 0x100000

    if-eqz v5, :cond_a

    invoke-static {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(I)Z

    move-result v5

    if-nez v5, :cond_a

    sget v5, Lc/e/a/b;->n:I

    if-lt v5, v6, :cond_9

    invoke-static {v4, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(II)I

    move-result v4

    goto :goto_4

    :cond_9
    sget v5, Lc/e/a/b;->n:I

    add-int/2addr v5, v7

    sput v5, Lc/e/a/b;->n:I

    :cond_a
    :goto_4
    const v5, 0x100111

    and-int/2addr v5, v4

    if-nez v5, :cond_b

    move v3, v0

    goto :goto_5

    :cond_b
    if-nez v3, :cond_c

    sget-object v3, Lc/e/a/b;->j:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    move v3, v7

    :goto_5
    if-nez v3, :cond_d

    monitor-exit v1

    return v4

    :cond_d
    sget-boolean v3, Lc/e/a/c;->r:Z

    if-eqz v3, :cond_10

    const v3, 0x100101

    and-int/2addr v3, p4

    if-eqz v3, :cond_10

    invoke-static/range {p0 .. p5}, Lcom/uc/crashsdk/JNIBridge;->nativeAddDumpFile(Ljava/lang/String;Ljava/lang/String;ZZIZ)I

    move-result p4

    invoke-static {p4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->f(I)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {v4, v7}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(II)I

    move-result v4

    :cond_e
    invoke-static {p4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->g(I)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static {v4, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(II)I

    move-result v2

    move v4, v2

    :cond_f
    invoke-static {p4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(I)Z

    move-result p4

    if-nez p4, :cond_10

    invoke-static {v4, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(II)I

    move-result v4

    :cond_10
    sget-object p4, Lc/e/a/b;->i:Ljava/util/HashMap;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    aput-object p1, v2, v7

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {p4, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return v4

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_11
    :goto_6
    return v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc/e/a/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lc/e/a/b;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lc/e/a/b;->f:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    sget-object v0, Lc/e/a/b;->i:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/e/a/b;->i:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v4, p0, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x3

    aget-object p0, p0, v5

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s%s%d%d"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const-string v2, "`"

    aput-object v2, v8, v1

    if-eqz v4, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v9

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v3

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v9

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v8, v5

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    sget-object v0, Lc/e/a/b;->o:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/e/a/b;->o:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v2, v3, v1, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeGetCallbackInfo(Ljava/lang/String;JIZ)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lc/e/a/b;->b(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(I)V
    .locals 12

    const/16 v0, 0xc9

    const/4 v1, 0x0

    const-string v2, "crashsdk"

    if-eq p0, v0, :cond_b

    const/16 v0, 0xca

    if-eq p0, v0, :cond_1

    sget-boolean p0, Lc/e/a/b;->I:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-static {}, Lc/e/a/b;->n()V

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lc/e/a/i;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {}, Lc/e/a/i;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-static {}, Lc/e/a/i;->e()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v0, v5

    const-string v3, "%s/%s/%s"

    invoke-static {p0, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lc/e/a/b;->k()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/b;->e:Ljava/lang/String;

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x80

    sget-object v3, Lc/e/a/b;->e:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_2
    sget-object v0, Lc/e/a/b;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_3

    invoke-static {}, Lc/e/a/c;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lc/e/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    if-eqz v0, :cond_a

    .line 1
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->v:Z

    if-eqz v0, :cond_a

    .line 2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v5, [Ljava/lang/Object;

    sget-object v5, Lc/e/a/b;->e:Ljava/lang/String;

    aput-object v5, v3, v1

    aput-object p0, v3, v4

    const-string p0, "Is new version (\'%s\' -> \'%s\'), deleting old stats data!"

    invoke-static {v0, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/e/a/c;->e(Ljava/lang/String;)Z

    sput-boolean v4, Lc/e/a/c;->x:Z

    sput-boolean v1, Lc/e/a/c;->z:Z

    sput-boolean v1, Lc/e/a/c;->A:Z

    sput-boolean v1, Lc/e/a/c;->B:Z

    sput-boolean v1, Lc/e/a/c;->C:Z

    sput-boolean v1, Lc/e/a/c;->D:Z

    sput-boolean v1, Lc/e/a/c;->E:Z

    const-string v5, ".st"

    const-string v6, ".wa"

    const-string v7, ".callback"

    const-string v8, ".ctn"

    const-string v9, ".ctj"

    const-string v10, ".cta"

    const-string v11, ".signal"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object p0

    const-string v0, "up"

    const-string v3, "authu"

    const-string v5, "statu"

    const-string v6, "poli"

    filled-new-array {v0, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_9

    array-length v5, v3

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_9

    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    move v9, v1

    :goto_1
    const/4 v10, 0x7

    if-ge v9, v10, :cond_5

    aget-object v10, p0, v9

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v9, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    move v9, v1

    :goto_2
    if-nez v9, :cond_7

    move v10, v1

    :goto_3
    const/4 v11, 0x4

    if-ge v10, v11, :cond_7

    aget-object v11, v0, v10

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    move v9, v4

    goto :goto_4

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz v9, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "delete file: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lc/e/a/a/f;->a(Ljava/io/File;)Z

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_9
    invoke-static {}, Lc/e/a/c;->m()V

    :cond_a
    return-void

    :cond_b
    const-string p0, "Begin update info ..."

    .line 4
    invoke-static {v2, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-boolean p0, Lc/e/a/c;->r:Z

    if-eqz p0, :cond_c

    sget-boolean p0, Lc/e/a/b;->D:Z

    if-eqz p0, :cond_c

    const/16 p0, 0xb

    .line 5
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v5, v0, Lc/e/a/g/b;->K:I

    int-to-long v5, v5

    .line 6
    iget v0, v0, Lc/e/a/g/b;->L:I

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {p0, v5, v6, v0, v7}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Update info took "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lc/e/a/b;->a(Z)Z

    return-void
.end method

.method public static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lc/e/a/b;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/e/a/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lc/e/a/b;->c:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-static {v2, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    sget-object v0, Lc/e/a/b;->w:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Lc/e/a/b;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_1
    sget-object v7, Lc/e/a/b;->w:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    aget-object v8, v7, v6

    check-cast v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    aget-object v7, v7, v5

    check-cast v7, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v8, :cond_2

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Thread ("

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") has exited!"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :cond_2
    if-eq v1, v8, :cond_0

    goto :goto_2

    :catchall_1
    move-exception v7

    move-object v12, v7

    move-object v7, v4

    move-object v4, v12

    goto :goto_1

    :catchall_2
    move-exception v7

    move-object v8, v4

    move-object v4, v7

    move-object v7, v8

    :goto_1
    :try_start_4
    invoke-static {v4, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :goto_2
    :try_start_5
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Thread Name: \'%s\'\n"

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v7, v10, v6

    invoke-static {v4, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/lang/Thread;->isDaemon()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, " daemon"

    goto :goto_3

    :cond_3
    const-string v4, ""

    :goto_3
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "\"%s\"%s prio=%d tid=%d %s\n"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    aput-object v4, v10, v5

    const/4 v4, 0x2

    invoke-virtual {v8}, Ljava/lang/Thread;->getPriority()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    const/4 v4, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v4

    const/4 v3, 0x4

    invoke-virtual {v8}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread$State;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v3

    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v3

    :try_start_6
    invoke-static {v3, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :goto_4
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_4

    const-string v4, "  (no stack frames)"

    invoke-virtual {v4, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    :cond_4
    array-length v4, v3

    move v8, v5

    move v7, v6

    :goto_5
    if-ge v7, v4, :cond_6

    aget-object v9, v3, v7

    if-nez v8, :cond_5

    const-string v8, "\n"

    invoke-virtual {v8, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/io/OutputStream;->write([B)V

    :cond_5
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "  at %s"

    new-array v11, v5, [Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v6

    invoke-static {v8, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    add-int/lit8 v7, v7, 0x1

    move v8, v6

    goto :goto_5

    :catchall_4
    move-exception v3

    :try_start_8
    invoke-static {v3, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :cond_6
    :try_start_9
    const-string v3, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto/16 :goto_0

    :catchall_5
    move-exception v3

    :try_start_a
    invoke-static {v3, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    goto/16 :goto_0

    :cond_7
    monitor-exit v0

    return-void

    :catchall_6
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw p0
.end method

.method public static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lc/e/a/b;->o:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/e/a/b;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v3, Lc/e/a/b;->o:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez p3, :cond_0

    invoke-static {v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {p3, v2}, Lc/e/a/b;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write([B)V

    const/4 v5, 0x2

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    aget-object v3, v3, v7

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v5, v6, v3, v4}, Lcom/uc/crashsdk/JNIBridge;->nativeGetCallbackInfo(Ljava/lang/String;JIZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-static {v2, v4}, Lc/e/a/b;->b(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    :cond_3
    const-string v2, "(data is null)\n"

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-static {v2, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    :try_start_3
    const-string v2, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v2, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    goto/16 :goto_0

    :cond_4
    if-eqz p3, :cond_6

    .line 8
    sget-boolean p1, Lc/e/a/f;->Y:Z

    if-eqz p1, :cond_6

    .line 9
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object p3, Lc/e/a/b;->p:Ljava/util/List;

    invoke-static {p3, p2}, Lc/e/a/b;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5

    const-string p3, "CUSTOMCALLBACKINFO"

    invoke-static {p0, p3, p2}, Lc/e/a/f;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v8, :cond_0

    move v11, v9

    goto :goto_0

    :cond_0
    move v11, v10

    .line 10
    :goto_0
    sget-boolean v12, Lc/e/a/f;->Y:Z

    .line 11
    sget-object v13, Lc/e/a/b;->i:Ljava/util/HashMap;

    monitor-enter v13

    :try_start_0
    sget-object v0, Lc/e/a/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v1, v10

    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    sget-object v2, Lc/e/a/b;->i:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    if-nez v8, :cond_2

    aget-object v3, v2, v10

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(I)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_2
    invoke-static {v8, v0}, Lc/e/a/b;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x3

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v15, p1

    :try_start_2
    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_4
    move-object/from16 v15, p1

    :goto_2
    const v0, 0x25800

    if-le v1, v0, :cond_5

    move/from16 v16, v0

    goto :goto_3

    :cond_5
    move/from16 v16, v1

    :goto_3
    const/16 v1, 0x5000

    sub-int v0, v0, v16

    :try_start_3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v0, 0x2

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    aget-object v0, v2, v9

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v1, v2, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v12, :cond_6

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v2, "FILE"

    move-object/from16 v1, p0

    move-object v3, v0

    move/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lc/e/a/f;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_5

    :cond_6
    if-eqz v5, :cond_7

    invoke-static {v7, v0, v4}, Lc/e/a/f;->a(Ljava/io/OutputStream;Ljava/lang/String;I)I

    move-result v1

    goto :goto_4

    :cond_7
    invoke-static {v7, v0, v4}, Lc/e/a/f;->b(Ljava/io/OutputStream;Ljava/lang/String;I)I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    add-int v16, v16, v1

    :goto_5
    move/from16 v1, v16

    if-eqz v17, :cond_1

    if-eqz v11, :cond_1

    if-nez v12, :cond_1

    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move/from16 v1, v16

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v15, p1

    :goto_6
    :try_start_5
    invoke-static {v0, v7}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    goto/16 :goto_1

    :cond_8
    if-eqz v8, :cond_a

    if-eqz v12, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lc/e/a/b;->j:Ljava/util/List;

    invoke-static {v2, v1}, Lc/e/a/b;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "CUSTOMDUMPFILE"

    invoke-static {v7, v2, v1}, Lc/e/a/f;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    monitor-exit v13

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lc/e/a/b;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/e/a/b;->c:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lc/e/a/b;->d:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, Lc/e/a/b;->c:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lc/e/a/c;->r:Z

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lc/e/a/f;->y()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Thread;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lc/e/a/b;->w:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    long-to-int v2, v2

    sget-object v3, Lc/e/a/b;->w:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    if-nez v3, :cond_1

    sget-object v3, Lc/e/a/b;->x:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object p1, Lc/e/a/b;->w:Landroid/util/SparseArray;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const/4 v0, 0x1

    aput-object p0, v4, v0

    invoke-virtual {p1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-static {p1}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static a(Z)Z
    .locals 5

    sget-boolean v0, Lc/e/a/c;->q:Z

    const-string v1, "crashsdk"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "Unexp log not enabled, skip update unexp info!"

    :goto_0
    invoke-static {v1, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 12
    :cond_0
    sget-boolean v0, Lc/e/a/f;->Y:Z

    if-nez v0, :cond_6

    .line 13
    invoke-static {}, Lc/e/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    if-eqz p0, :cond_2

    sget-object p0, Lc/e/a/b;->E:Ljava/lang/Runnable;

    invoke-static {p0}, Lc/e/a/a/e;->a(Ljava/lang/Runnable;)V

    move p0, v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lc/e/a/c;->a()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Stop update unexp info in background!"

    goto :goto_0

    .line 14
    :cond_3
    sget-object p0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget p0, p0, Lc/e/a/g/b;->K:I

    if-gtz p0, :cond_4

    return v2

    .line 15
    :cond_4
    sget-object p0, Lc/e/a/b;->E:Ljava/lang/Runnable;

    invoke-static {p0}, Lc/e/a/a/e;->b(Ljava/lang/Runnable;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    .line 16
    :cond_5
    sget-object p0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget p0, p0, Lc/e/a/g/b;->K:I

    mul-int/lit16 p0, p0, 0x3e8

    .line 17
    :goto_1
    sget-object v1, Lc/e/a/b;->E:Ljava/lang/Runnable;

    int-to-long v3, p0

    invoke-static {v2, v1, v3, v4}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z

    return v0

    :cond_6
    :goto_2
    return v2
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x800

    if-le v1, v2, :cond_1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    sget-object v1, Lc/e/a/b;->y:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lc/e/a/b;->y:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/high16 v3, 0x100000

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    aget-object v5, v2, v0

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v6, v2, v4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    aget-object v2, v2, v7

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v5, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x10

    invoke-static {v0, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(II)I

    move-result v0

    :cond_3
    sget-boolean v2, Lc/e/a/c;->r:Z

    if-nez v2, :cond_6

    invoke-static {v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->f(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(II)I

    move-result v0

    :cond_4
    invoke-static {v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(II)I

    move-result v0

    goto :goto_0

    :cond_5
    move v6, v0

    :cond_6
    :goto_0
    sget-boolean v2, Lc/e/a/c;->r:Z

    if-eqz v2, :cond_8

    invoke-static {p0, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeAddCachedInfo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->f(I)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {v0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(II)I

    move-result v0

    :cond_7
    invoke-static {v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(I)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {v0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(II)I

    move-result v0

    :cond_8
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_9
    :goto_1
    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc/e/a/b;->y:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lc/e/a/b;->y:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    aget-object v2, v2, v5

    check-cast v2, Ljava/util/List;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s (%d/%d)\n"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v3

    const/4 p0, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v8, v5

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static b(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lc/e/a/b;->o:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown callback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    aget-object p0, v1, p0

    check-cast p0, Ljava/util/concurrent/Callable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    if-eqz p0, :cond_2

    :try_start_2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    const-string v1, "[DEBUG] Callback occurred new exception:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 1
    invoke-static {p0, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 2
    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "(data is null)\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    .line 3
    invoke-static {p0, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_3
    :goto_2
    return-object p1
.end method

.method public static b()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc/e/a/b;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lc/e/a/b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lc/e/a/b;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lc/e/a/f;->u()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "(saved at %s)\n"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    sget-object v1, Lc/e/a/c;->n:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "hdr"

    invoke-static {v1}, Lc/e/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc/e/a/c;->n:Ljava/lang/String;

    :cond_2
    sget-object v1, Lc/e/a/c;->n:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc/e/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lc/e/a/b;->y:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/e/a/b;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lc/e/a/b;->y:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    aget-object v7, v3, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    aget-object v3, v3, v8

    check-cast v3, Ljava/util/List;

    if-nez p3, :cond_1

    invoke-static {v7}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(I)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_1
    invoke-static {p3, v2}, Lc/e/a/b;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v7, :cond_0

    :cond_2
    :try_start_1
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%s (%d/%d)\n"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v2, v10, v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v8

    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-static {v2, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :goto_1
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    const-string v3, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v2, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_3
    :try_start_5
    const-string v2, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    :try_start_6
    invoke-static {v2, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    goto/16 :goto_0

    :cond_4
    if-eqz p3, :cond_6

    .line 4
    sget-boolean p1, Lc/e/a/f;->Y:Z

    if-eqz p1, :cond_6

    .line 5
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object p3, Lc/e/a/b;->z:Ljava/util/List;

    invoke-static {p3, p2}, Lc/e/a/b;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5

    const-string p3, "CUSTOMCACHEDINFO"

    invoke-static {p0, p3, p2}, Lc/e/a/f;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    monitor-exit v0

    return-void

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x14

    const-string v1, ";"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-static {v3}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static c()V
    .locals 4

    sget-boolean v0, Lc/e/a/b;->I:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lc/e/a/b;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/e/a/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lc/e/a/b;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static d()[B
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x18t
        0x63t
        0x79t
        0x3ct
    .end array-data
.end method

.method public static e()V
    .locals 9

    sget-boolean v0, Lc/e/a/b;->I:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lc/e/a/b;->i:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/e/a/b;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    sget-object v2, Lc/e/a/b;->i:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const v4, 0x100101

    and-int/2addr v4, v7

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v5, v2, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x3

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v8, 0x4

    aget-object v2, v2, v8

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static/range {v3 .. v8}, Lcom/uc/crashsdk/JNIBridge;->nativeAddDumpFile(Ljava/lang/String;Ljava/lang/String;ZZIZ)I

    goto :goto_1

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static f()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc/e/a/b;->i:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lc/e/a/b;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lc/e/a/b;->i:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(I)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    const-string v2, "`"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v6

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static g()V
    .locals 8

    sget-boolean v0, Lc/e/a/b;->I:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lc/e/a/b;->o:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/e/a/b;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lc/e/a/b;->o:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x100101

    and-int/2addr v5, v4

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x3

    aget-object v3, v3, v7

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v4, v5, v6, v3}, Lcom/uc/crashsdk/JNIBridge;->nativeAddCallbackInfo(Ljava/lang/String;IJI)I

    goto :goto_1

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static h()Ljava/lang/String;
    .locals 8

    sget-object v0, Lc/e/a/b;->o:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc/e/a/b;->p:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    :try_start_1
    sget-object v4, Lc/e/a/b;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lc/e/a/b;->o:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(I)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v3, :cond_1

    const-string v3, "`"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v7

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public static i()V
    .locals 7

    sget-boolean v0, Lc/e/a/b;->I:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lc/e/a/b;->y:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/e/a/b;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lc/e/a/b;->y:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    aget-object v3, v3, v6

    check-cast v3, Ljava/util/List;

    const v6, 0x100001

    and-int/2addr v6, v5

    if-eqz v6, :cond_2

    invoke-static {v2, v4, v5}, Lcom/uc/crashsdk/JNIBridge;->nativeCreateCachedInfo(Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/uc/crashsdk/JNIBridge;->nativeAddCachedInfo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static j()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc/e/a/b;->y:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lc/e/a/b;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lc/e/a/b;->y:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    aget-object v6, v6, v3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->e(I)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v4, :cond_1

    const-string v4, "`"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lc/e/a/b;->F:Z

    if-nez v0, :cond_0

    invoke-static {}, Lc/e/a/c;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/b;->e:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lc/e/a/b;->F:Z

    sget-object v0, Lc/e/a/b;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    sput-object v0, Lc/e/a/b;->e:Ljava/lang/String;

    :cond_0
    sget-object v0, Lc/e/a/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static l()V
    .locals 3

    invoke-static {}, Lc/e/a/b;->n()V

    sget-boolean v0, Lc/e/a/b;->G:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    sget-object v1, Lc/e/a/b;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lc/e/a/b;->G:Z

    const/4 v0, 0x0

    new-instance v1, Lc/e/a/a/d;

    const/16 v2, 0xca

    invoke-direct {v1, v2}, Lc/e/a/a/d;-><init>(I)V

    invoke-static {v0, v1}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;)Z

    return-void
.end method

.method public static m()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    sget-object v2, Lc/e/a/a/f;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lc/e/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v3, Lc/e/a/b;->f:Ljava/lang/String;

    iget-wide v3, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sput-wide v3, Lc/e/a/b;->h:J

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lc/e/a/b;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v2

    .line 3
    invoke-static {v2, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    return v0
.end method

.method public static n()V
    .locals 5

    sget-boolean v0, Lc/e/a/b;->H:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc/e/a/f;->m()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lc/e/a/c;->r:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lc/e/a/c;->u:Z

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lc/e/a/i;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Lc/e/a/i;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {}, Lc/e/a/i;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "%s/%s/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UUID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    sget-object v2, Lc/e/a/f;->z:Ljava/lang/String;

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "crashsdk"

    invoke-static {v2, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Version: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Process Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lc/e/a/f;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v3, Lc/e/a/b;->H:Z

    :cond_3
    return-void
.end method
