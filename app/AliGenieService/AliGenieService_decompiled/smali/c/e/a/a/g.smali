.class public Lc/e/a/a/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/g$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/e/a/a/g$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/Object;

.field public static final e:Ljava/lang/Object;

.field public static final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static g:Z

.field public static h:Z

.field public static final i:Ljava/lang/Object;

.field public static j:Ljava/lang/String;

.field public static final synthetic k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lc/e/a/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lc/e/a/a/g;->k:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/e/a/a/g;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc/e/a/a/g;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc/e/a/a/g;->c:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/e/a/a/g;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/e/a/a/g;->e:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    const/4 v0, 0x0

    sput-boolean v0, Lc/e/a/a/g;->g:Z

    sput-boolean v0, Lc/e/a/a/g;->h:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/e/a/a/g;->i:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lc/e/a/a/g;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Iterable;ZZ)Ljava/lang/StringBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lc/e/a/a/g$a;",
            ">;ZZ)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/e/a/a/g$a;

    if-eqz v2, :cond_0

    invoke-virtual {v3, p1, p1, p2}, Lc/e/a/a/g$a;->a(ZZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1, p1, p2}, Lc/e/a/a/g$a;->a(ZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/g$a;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p2}, Lc/e/a/a/f;->a(Ljava/io/File;I)Ljava/util/ArrayList;

    move-result-object p0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lc/e/a/a/g$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lc/e/a/a/g$a;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v0}, Lc/e/a/a/g$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static a()V
    .locals 3

    .line 1
    sget-boolean v0, Lc/e/a/c;->e0:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xaae60

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x11170

    :goto_0
    const/4 v2, 0x0

    .line 2
    invoke-static {v2, v0, v1}, Lc/e/a/a/g;->a(IJ)V

    return-void
.end method

.method public static a(IJ)V
    .locals 4

    invoke-static {}, Lc/e/a/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lc/e/a/a/d;

    const/16 v1, 0x12e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lc/e/a/a/d;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v3, v0, p1, p2}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static a(IZ)V
    .locals 5

    const-string v0, "crash rate"

    invoke-static {p1, v0}, Lc/e/a/a/g;->a(ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cr.wa"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lc/e/a/a/g;->a:Ljava/lang/Object;

    new-instance v1, Lc/e/a/a/d;

    const/16 v2, 0x15f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-direct {v1, v2, v3}, Lc/e/a/a/d;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v0, p1, v1}, Lc/e/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Lc/e/a/a/d;)Z

    return-void
.end method

.method public static a(I[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    sget-boolean p0, Lc/e/a/a/g;->k:Z

    if-eqz p0, :cond_10

    return-void

    :pswitch_0
    invoke-static {v0}, Lc/e/a/a/g;->a(Z)V

    return-void

    :pswitch_1
    sget-boolean p0, Lc/e/a/a/g;->k:Z

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lc/e/a/a/g;->a:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    sget-boolean v2, Lc/e/a/a/g;->g:Z

    if-nez v2, :cond_d

    sput-boolean v1, Lc/e/a/a/g;->g:Z

    :cond_2
    sget-object v2, Lc/e/a/b;->b:Ljava/lang/String;

    const-string v3, "2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/high16 v2, 0x10000000

    .line 3
    sget v3, Lc/e/a/c;->H:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    if-nez v2, :cond_d

    .line 4
    :cond_4
    new-instance v2, Ljava/io/File;

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "pv.wa"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lc/e/a/a/f;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lc/e/a/a/g$a;

    const-string v5, "pv"

    invoke-direct {v4, v5, v1, v1}, Lc/e/a/a/g$a;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {v3}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4, v3}, Lc/e/a/a/g$a;->b(Ljava/lang/String;)Z

    :cond_5
    if-nez p1, :cond_7

    iget v3, v4, Lc/e/a/a/g$a;->c:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-ne v3, v5, :cond_6

    move v3, v1

    goto :goto_2

    :cond_6
    move v3, v0

    :goto_2
    if-nez v3, :cond_d

    :cond_7
    const-wide/16 v5, 0x1

    if-nez p1, :cond_8

    const-string p1, "pv"

    invoke-virtual {v4, p1, v5, v6}, Lc/e/a/a/g$a;->a(Ljava/lang/String;J)V

    const-string p1, "fjv"

    goto :goto_3

    :cond_8
    if-ne p1, v1, :cond_9

    const-string p1, "hpv"

    goto :goto_3

    :cond_9
    const/4 v3, 0x2

    if-ne p1, v3, :cond_a

    const-string p1, "pv"

    invoke-virtual {v4, p1, v5, v6}, Lc/e/a/a/g$a;->a(Ljava/lang/String;J)V

    const-string p1, "npv"

    :goto_3
    invoke-virtual {v4, p1, v5, v6}, Lc/e/a/a/g$a;->a(Ljava/lang/String;J)V

    .line 7
    :cond_a
    sget-object p1, Lc/e/a/f;->z:Ljava/lang/String;

    .line 8
    iget-wide v5, v4, Lc/e/a/a/g$a;->b:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/32 v5, 0x1b77400

    cmp-long v3, v7, v5

    if-gez v3, :cond_b

    move p1, v0

    goto :goto_4

    :cond_b
    invoke-virtual {v4, v1, v1, v0}, Lc/e/a/a/g$a;->a(ZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lc/e/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    :goto_4
    if-eqz p1, :cond_c

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v4, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lc/e/a/a/g$a;->b:J

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iput p1, v4, Lc/e/a/a/g$a;->c:I

    :cond_c
    invoke-virtual {v4, v0, v0, v1}, Lc/e/a/a/g$a;->a(ZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lc/e/a/a/f;->a(Ljava/io/File;Ljava/lang/String;)Z

    :cond_d
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_2
    sget-boolean p0, Lc/e/a/a/g;->k:Z

    if-nez p0, :cond_f

    if-eqz p1, :cond_e

    goto :goto_5

    :cond_e
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_f
    :goto_5
    aget-object p0, p1, v0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0, v0}, Lc/e/a/a/g;->a(IZ)V

    return-void

    :cond_10
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lc/e/a/a/g$a;)V
    .locals 5

    sget-object v0, Lc/e/a/a/g;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/e/a/a/g;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lc/e/a/a/g;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    iget-object v4, p0, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lc/e/a/a/g;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "pv.wa"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lc/e/a/a/g$a;

    const-string v3, "pv"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Lc/e/a/a/g$a;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {v1}, Lc/e/a/a/f;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Lc/e/a/a/g$a;->b(Ljava/lang/String;)Z

    :cond_0
    const-wide/16 v3, 0x1

    invoke-virtual {v2, p0, v3, v4}, Lc/e/a/a/g$a;->a(Ljava/lang/String;J)V

    const-string p0, "aujv"

    invoke-virtual {v2, p0, v3, v4}, Lc/e/a/a/g$a;->a(Ljava/lang/String;J)V

    const/4 p0, 0x0

    invoke-virtual {v2, p0, p0, p0}, Lc/e/a/a/g$a;->a(ZZZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lc/e/a/a/f;->a(Ljava/io/File;Ljava/lang/String;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;II)V
    .locals 7

    .line 13
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->T:Z

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    sget-object v0, Lc/e/a/a/g;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/e/a/a/g;->c:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/g$a;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    new-instance v1, Lc/e/a/a/g$a;

    const-string v3, "cst"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lc/e/a/a/g$a;-><init>(Ljava/lang/String;ZZ)V

    sget-object v3, Lc/e/a/a/g;->c:Ljava/util/Map;

    invoke-interface {v3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lc/e/a/a/g;->a(Lc/e/a/a/g$a;)V

    :cond_1
    sget-object v3, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v4, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    monitor-exit v3

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x64

    const-string v5, "pv"

    .line 15
    sget-object v6, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v4, 0x66

    const-string v5, "hpv"

    sget-object v6, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v4, "all"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x2

    const-string v4, "afg"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x65

    const-string v4, "abg"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x3

    const-string v4, "jfg"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x4

    const-string v4, "jbg"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x7

    const-string v4, "nfg"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x8

    const-string v4, "nbg"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x1b

    const-string v4, "nafg"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x1c

    const-string v4, "nabg"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x9

    const-string v4, "nho"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xa

    const-string v4, "uar"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x1d

    const-string v4, "ulm"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x1e

    const-string v4, "ukt"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x1f

    const-string v4, "uet"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x20

    const-string v4, "urs"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xb

    const-string v4, "ufg"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xc

    const-string v4, "ubg"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x28

    const-string v4, "anf"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x29

    const-string v4, "anb"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x2a

    const-string v4, "ancf"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x2b

    const-string v4, "ancb"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xd

    const-string v4, "lup"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xe

    const-string v4, "luf"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xf

    const-string v4, "lef"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xc8

    const-string v4, "ltf"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x10

    const-string v4, "laf"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x16

    const-string v4, "lac"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x17

    const-string v4, "lau"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x11

    const-string v4, "llf"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x12

    const-string v4, "lul"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x13

    const-string v4, "lub"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x14

    const-string v4, "luc"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x15

    const-string v4, "luu"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x18

    const-string v4, "lzc"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xc9

    const-string v4, "lec"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x19

    const-string v4, "lrc"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x1a

    const-string v4, "lss"

    sget-object v5, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 16
    :goto_1
    :try_start_2
    sget-object v2, Lc/e/a/a/g;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "map key is not set with: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "crashsdk"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const-string p1, "prc"

    .line 17
    iget-object v3, v1, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    invoke-interface {v3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 18
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 19
    iget-object p1, v1, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    invoke-interface {p1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "="

    const-string v1, "`"

    .line 21
    invoke-static {p0, p1, v0, p2, v1}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .locals 6

    const-string v0, "crash detail upload"

    invoke-static {p0, v0}, Lc/e/a/a/g;->a(ZLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "dt.wa"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lc/e/a/a/g;->d:Ljava/lang/Object;

    new-instance v1, Lc/e/a/a/d;

    const/16 v2, 0x160

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-direct {v1, v2, v4}, Lc/e/a/a/d;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v0, p0, v1}, Lc/e/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Lc/e/a/a/d;)Z

    invoke-static {}, Lc/e/a/a/g;->e()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lc/e/a/a/g;->e:Ljava/lang/Object;

    new-instance v1, Lc/e/a/a/d;

    const/16 v2, 0x162

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-direct {v1, v2, v3}, Lc/e/a/a/d;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v0, p0, v1}, Lc/e/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Lc/e/a/a/d;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    invoke-static {p1}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/16 v0, 0x10

    const/16 v2, 0x8

    const/4 v3, 0x0

    :try_start_0
    new-array v0, v0, [B

    invoke-static {}, Lc/e/a/a/b;->a()[B

    move-result-object v4

    invoke-static {v0, v3, v4}, Lc/e/a/a/b;->a([BI[B)V

    const/4 v4, 0x4

    invoke-static {}, Lc/e/a/a/g;->c()[B

    move-result-object v5

    invoke-static {v0, v4, v5}, Lc/e/a/a/b;->a([BI[B)V

    invoke-static {}, Lc/e/a/b;->d()[B

    move-result-object v4

    invoke-static {v0, v2, v4}, Lc/e/a/a/b;->a([BI[B)V

    const/16 v4, 0xc

    invoke-static {}, Lc/e/a/a/c;->d()[B

    move-result-object v5

    invoke-static {v0, v4, v5}, Lc/e/a/a/b;->a([BI[B)V

    .line 24
    invoke-static {p1, v0, v1, v3}, Lc/e/a/a/b;->a([B[BZZ)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    move p1, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 25
    invoke-static {v0, v3}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_1
    move-object v0, p1

    move p1, v3

    :goto_0
    if-nez p0, :cond_2

    const-string p0, "unknown"

    .line 26
    :cond_2
    sget-object v4, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v4, v4, Lc/e/a/g/b;->U:Z

    if-eqz v4, :cond_3

    const-string v4, "4ea4e41a3993"

    goto :goto_1

    :cond_3
    const-string v4, "28ef1713347d"

    .line 27
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "AppChk#2014"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc/e/a/a/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/a/g;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "?chk="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&vno="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&uuid="

    const-string v5, "&app="

    invoke-static {v7, v2, p0, v5, v4}, Lc/c/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const-string p0, "&enc=aes"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    if-nez p0, :cond_6

    return v3

    :cond_6
    invoke-static {p0, v0}, Lc/e/a/a/b;->a(Ljava/lang/String;[B)[B

    move-result-object p0

    if-nez p0, :cond_7

    return v3

    :cond_7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    const-string p0, "retcode=0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v1

    :cond_8
    return v3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 6

    .line 22
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->T:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 23
    :cond_0
    invoke-static {}, Lc/e/a/a/g;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lc/e/a/a/g;->e:Ljava/lang/Object;

    new-instance v3, Lc/e/a/a/d;

    const/16 v4, 0x161

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v1

    const/4 p0, 0x1

    aput-object p1, v5, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v5, p0

    const/4 p0, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v5, p0

    invoke-direct {v3, v4, v5}, Lc/e/a/a/d;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v2, v0, v3}, Lc/e/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Lc/e/a/a/d;)Z

    move-result p0

    return p0
.end method

.method public static a(ZLjava/lang/String;)Z
    .locals 1

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeIsCrashing()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Native is crashing, skip stat for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "crashsdk"

    invoke-static {p1, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b()V
    .locals 3

    .line 40
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->T:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 41
    new-instance v1, Lc/e/a/a/d;

    const/16 v2, 0x12f

    invoke-direct {v1, v2}, Lc/e/a/a/d;-><init>(I)V

    invoke-static {v0, v1}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;)Z

    return-void
.end method

.method public static b(IJ)V
    .locals 5

    .line 1
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->T:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lc/e/a/a/d;

    const/16 v1, 0x12d

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-direct {v0, v1, v3}, Lc/e/a/a/d;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v2, v0, p1, p2}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lc/e/a/a/g;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lc/e/a/a/g;->j:Ljava/lang/String;

    invoke-static {}, Lc/e/a/c;->v()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lc/e/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b(I[Ljava/lang/Object;)Z
    .locals 14

    const/4 v0, 0x3

    const/4 v1, 0x2

    const-string v2, "prc"

    const-string v3, ""

    const/16 v4, 0x1e

    const-string v5, "cst"

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    return v7

    :pswitch_0
    sget-boolean p0, Lc/e/a/a/g;->k:Z

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    aget-object p0, p1, v7

    check-cast p0, Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v4}, Lc/e/a/a/g;->a(Ljava/io/File;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0, v6, v7}, Lc/e/a/a/g;->a(Ljava/lang/Iterable;ZZ)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 3
    sget-object v0, Lc/e/a/f;->z:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lc/e/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 5
    invoke-static {p1, v3}, Lc/e/a/a/f;->a(Ljava/io/File;Ljava/lang/String;)Z

    :cond_2
    return p0

    .line 6
    :pswitch_1
    sget-boolean p0, Lc/e/a/a/g;->k:Z

    if-nez p0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_1
    aget-object p0, p1, v7

    check-cast p0, Ljava/lang/String;

    aget-object v3, p1, v6

    check-cast v3, Ljava/lang/String;

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 7
    invoke-static {}, Lc/e/a/a/g;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v5, v4}, Lc/e/a/a/g;->a(Ljava/io/File;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v3}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "typ"

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/e/a/a/g$a;

    invoke-virtual {v9, v2}, Lc/e/a/a/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10}, Lc/e/a/a/g$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_7

    new-instance v9, Lc/e/a/a/g$a;

    const/4 v4, 0x1

    invoke-direct {v9, v5, v7, v4}, Lc/e/a/a/g$a;-><init>(Ljava/lang/String;ZZ)V

    .line 8
    iget-object v4, v9, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    invoke-interface {v4, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v9, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    invoke-interface {p0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v9}, Lc/e/a/a/g;->a(Lc/e/a/a/g$a;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-wide/16 v2, 0x1

    const-string p0, "cnt"

    invoke-virtual {v9, p0, v2, v3}, Lc/e/a/a/g$a;->a(Ljava/lang/String;J)V

    if-eqz v1, :cond_8

    const-string p0, "lim"

    invoke-virtual {v9, p0, v2, v3}, Lc/e/a/a/g$a;->a(Ljava/lang/String;J)V

    :cond_8
    if-eqz p1, :cond_9

    const-string p0, "syu"

    invoke-virtual {v9, p0, v2, v3}, Lc/e/a/a/g$a;->a(Ljava/lang/String;J)V

    :cond_9
    invoke-static {v0, v7, v7}, Lc/e/a/a/g;->a(Ljava/lang/Iterable;ZZ)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lc/e/a/a/f;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 10
    :pswitch_2
    sget-boolean p0, Lc/e/a/a/g;->k:Z

    if-nez p0, :cond_b

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_b
    :goto_3
    aget-object p0, p1, v7

    check-cast p0, Ljava/lang/String;

    .line 11
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v4}, Lc/e/a/a/g;->a(Ljava/io/File;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/g$a;

    .line 12
    iget-object v1, v0, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13
    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    sget-object v4, Lc/e/a/a/g;->c:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/a/a/g$a;

    if-eqz v4, :cond_11

    .line 14
    iget-boolean v1, v4, Lc/e/a/a/g$a;->e:Z

    if-nez v1, :cond_d

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, v4, Lc/e/a/a/g$a;->a:Ljava/lang/String;

    aput-object v4, v1, v7

    const-string v4, "WaItem \'%s\' is not mergable!"

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "crashsdk"

    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_d
    iget-object v1, v0, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "c_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {v0, v5}, Lc/e/a/a/g$a;->c(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_10

    const-wide/16 v10, 0x64

    cmp-long v6, v8, v10

    if-gez v6, :cond_e

    invoke-virtual {v4, v5, v8, v9}, Lc/e/a/a/g$a;->a(Ljava/lang/String;J)V

    goto :goto_5

    .line 15
    :cond_10
    :goto_6
    iget-object v6, v0, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 16
    iget-object v8, v4, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 17
    :cond_11
    sget-object v4, Lc/e/a/a/g;->c:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_12
    sget-object p0, Lc/e/a/a/g;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0, v7}, Lc/e/a/a/g;->a(Ljava/lang/Iterable;ZZ)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 18
    sget-object v1, Lc/e/a/f;->z:Ljava/lang/String;

    .line 19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lc/e/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 20
    invoke-static {p1, v3}, Lc/e/a/a/f;->a(Ljava/io/File;Ljava/lang/String;)Z

    if-nez p0, :cond_13

    .line 21
    sget-object p0, Lc/e/a/a/g;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0, v7, v0}, Lc/e/a/a/g;->a(Ljava/lang/Iterable;ZZ)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lc/e/a/a/f;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_13
    sget-object p0, Lc/e/a/a/g;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_14
    const/4 p0, 0x1

    return p0

    .line 22
    :pswitch_3
    sget-boolean p0, Lc/e/a/a/g;->k:Z

    if-nez p0, :cond_16

    if-eqz p1, :cond_15

    goto :goto_7

    :cond_15
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_16
    :goto_7
    aget-object p0, p1, v7

    check-cast p0, Ljava/lang/String;

    aget-object p1, p1, v6

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v6, :cond_18

    sget-boolean v4, Lc/e/a/a/g;->h:Z

    if-eqz v4, :cond_17

    return v7

    :cond_17
    sput-boolean v6, Lc/e/a/a/g;->h:Z

    :cond_18
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x64

    const-string v5, "crp"

    invoke-static {v4, v5, p0}, Lc/e/a/a/g;->a(Ljava/io/File;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v6, 0x4

    if-eq p1, v6, :cond_25

    new-instance v6, Lc/e/a/a/g$a;

    invoke-direct {v6, v5, v7, v7}, Lc/e/a/a/g$a;-><init>(Ljava/lang/String;ZZ)V

    const-string v5, "ete"

    const-string v8, "et"

    const-string v9, "1"

    const/4 v10, 0x1

    if-ne p1, v10, :cond_21

    invoke-static {}, Lc/e/a/c;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 23
    iget-object v0, v6, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    invoke-interface {v0, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {}, Lc/e/a/c;->k()V

    sget-boolean p1, Lc/e/a/c;->C:Z

    .line 25
    invoke-static {}, Lc/e/a/c;->k()V

    sget-boolean v0, Lc/e/a/c;->D:Z

    .line 26
    invoke-static {}, Lc/e/a/c;->k()V

    sget-boolean v1, Lc/e/a/c;->E:Z

    .line 27
    invoke-static {}, Lc/e/a/c;->k()V

    sget-boolean v8, Lc/e/a/c;->A:Z

    if-eqz v8, :cond_1c

    if-eqz p1, :cond_19

    const/16 p1, 0xc

    goto :goto_8

    :cond_19
    if-eqz v0, :cond_1a

    const/16 p1, 0xe

    goto :goto_8

    :cond_1a
    if-eqz v1, :cond_1b

    const/16 p1, 0x10

    goto :goto_8

    :cond_1b
    const/16 p1, 0x62

    goto :goto_8

    .line 28
    :cond_1c
    invoke-static {}, Lc/e/a/c;->k()V

    sget-boolean v8, Lc/e/a/c;->z:Z

    if-eqz v8, :cond_20

    if-eqz p1, :cond_1d

    const/16 p1, 0xb

    goto :goto_8

    :cond_1d
    if-eqz v0, :cond_1e

    const/16 p1, 0xd

    goto :goto_8

    :cond_1e
    if-eqz v1, :cond_1f

    const/16 p1, 0xf

    goto :goto_8

    :cond_1f
    const/16 p1, 0x61

    goto :goto_8

    :cond_20
    const/4 p1, 0x1

    .line 29
    :goto_8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 30
    iget-object v0, v6, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_21
    if-ne p1, v0, :cond_22

    iget-object p1, v6, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    invoke-interface {p1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v6, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    invoke-interface {p1, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_22
    if-ne p1, v1, :cond_23

    iget-object p1, v6, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    const-string v0, "hpv"

    invoke-interface {p1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_23
    :goto_9
    invoke-static {}, Lc/e/a/f;->q()Ljava/lang/String;

    move-result-object p1

    .line 32
    iget-object v0, v6, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {}, Lc/e/a/c;->c()Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_a

    :cond_24
    const-string v9, "0"

    .line 34
    :goto_a
    iget-object p1, v6, Lc/e/a/a/g$a;->f:Ljava/util/Map;

    const-string v0, "imp"

    invoke-interface {p1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {v6}, Lc/e/a/a/g;->a(Lc/e/a/a/g$a;)V

    invoke-virtual {p0, v7, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_25
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_26

    const/4 p1, 0x1

    invoke-static {p0, p1, v7}, Lc/e/a/a/g;->a(Ljava/lang/Iterable;ZZ)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 36
    sget-object v0, Lc/e/a/f;->z:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lc/e/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 38
    invoke-static {v4, v3}, Lc/e/a/a/f;->a(Ljava/io/File;Ljava/lang/String;)Z

    if-nez p1, :cond_26

    const/4 p1, 0x1

    .line 39
    invoke-static {p0, v7, p1}, Lc/e/a/a/g;->a(Ljava/lang/Iterable;ZZ)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lc/e/a/a/f;->a(Ljava/io/File;Ljava/lang/String;)Z

    goto :goto_b

    :cond_26
    const/4 p1, 0x1

    :goto_b
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x15f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/util/Map;
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "`"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    const/4 v5, 0x3

    const-string v7, "="

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    aget-object v5, v4, v2

    aget-object v4, v4, v6

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static c()[B
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x7ft
        0x64t
        0x6et
        0x1ft
    .end array-data
.end method

.method public static d()V
    .locals 2

    sget-object v0, Lc/e/a/a/g;->i:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lc/e/a/a/g;->j:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cdt.wa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 4

    sget-object v0, Lc/e/a/a/g;->j:Ljava/lang/String;

    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lc/e/a/a/g;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "https://applog.uc.cn/collect"

    .line 1
    sget-object v2, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v2, v2, Lc/e/a/g/b;->U:Z

    if-eqz v2, :cond_0

    const-string v0, "https://gjapplog.ucweb.com/collect"

    .line 2
    :cond_0
    invoke-static {}, Lc/e/a/c;->v()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lc/e/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/a/g;->j:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
