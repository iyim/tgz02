.class public Lc/e/a/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A:Z

.field public static B:Z

.field public static C:Z

.field public static D:Z

.field public static E:Z

.field public static final F:Ljava/lang/Object;

.field public static G:Ljava/lang/String;

.field public static H:I

.field public static I:Z

.field public static J:Z

.field public static K:Z

.field public static L:Ljava/io/RandomAccessFile;

.field public static M:Z

.field public static final N:Ljava/lang/Object;

.field public static O:Ljava/lang/String;

.field public static P:Z

.field public static volatile Q:[Ljava/lang/Object;

.field public static R:Ljava/lang/Runnable;

.field public static S:Z

.field public static T:J

.field public static final U:Ljava/lang/Object;

.field public static V:J

.field public static W:Z

.field public static X:Z

.field public static Y:Z

.field public static Z:J

.field public static a:Ljava/lang/String;

.field public static final a0:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/lang/String;

.field public static b0:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static c0:Z

.field public static d:Ljava/lang/String;

.field public static d0:Z

.field public static e:Ljava/lang/String;

.field public static e0:Z

.field public static f:Ljava/lang/String;

.field public static f0:Z

.field public static g:Ljava/lang/String;

.field public static g0:Z

.field public static h:Ljava/lang/String;

.field public static final h0:Ljava/lang/Object;

.field public static i:Ljava/lang/String;

.field public static i0:Landroid/app/PendingIntent;

.field public static j:Ljava/lang/String;

.field public static final synthetic j0:Z

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Z

.field public static p:Z

.field public static q:Z

.field public static r:Z

.field public static final s:Ljava/lang/Object;

.field public static t:Z

.field public static u:Z

.field public static v:Z

.field public static w:Z

.field public static x:Z

.field public static volatile y:Z

.field public static z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-class v0, Lc/e/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lc/e/a/c;->j0:Z

    const/4 v0, 0x0

    sput-object v0, Lc/e/a/c;->a:Ljava/lang/String;

    sput-object v0, Lc/e/a/c;->b:Ljava/lang/String;

    sput-object v0, Lc/e/a/c;->c:Ljava/lang/String;

    sput-object v0, Lc/e/a/c;->d:Ljava/lang/String;

    sput-object v0, Lc/e/a/c;->e:Ljava/lang/String;

    sput-object v0, Lc/e/a/c;->f:Ljava/lang/String;

    sput-object v0, Lc/e/a/c;->g:Ljava/lang/String;

    sput-object v0, Lc/e/a/c;->h:Ljava/lang/String;

    sput-object v0, Lc/e/a/c;->i:Ljava/lang/String;

    sput-object v0, Lc/e/a/c;->j:Ljava/lang/String;

    sput-object v0, Lc/e/a/c;->k:Ljava/lang/String;

    sput-object v0, Lc/e/a/c;->l:Ljava/lang/String;

    sput-object v0, Lc/e/a/c;->m:Ljava/lang/String;

    sput-object v0, Lc/e/a/c;->n:Ljava/lang/String;

    const/4 v2, 0x0

    sput-boolean v2, Lc/e/a/c;->o:Z

    sput-boolean v2, Lc/e/a/c;->p:Z

    sput-boolean v2, Lc/e/a/c;->q:Z

    sput-boolean v2, Lc/e/a/c;->r:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Lc/e/a/c;->s:Ljava/lang/Object;

    sput-boolean v2, Lc/e/a/c;->t:Z

    sput-boolean v1, Lc/e/a/c;->u:Z

    sput-boolean v2, Lc/e/a/c;->v:Z

    sput-boolean v2, Lc/e/a/c;->w:Z

    sput-boolean v2, Lc/e/a/c;->x:Z

    sput-boolean v2, Lc/e/a/c;->y:Z

    sput-boolean v2, Lc/e/a/c;->z:Z

    sput-boolean v2, Lc/e/a/c;->A:Z

    sput-boolean v2, Lc/e/a/c;->B:Z

    sput-boolean v2, Lc/e/a/c;->C:Z

    sput-boolean v2, Lc/e/a/c;->D:Z

    sput-boolean v2, Lc/e/a/c;->E:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Lc/e/a/c;->F:Ljava/lang/Object;

    sput-object v0, Lc/e/a/c;->G:Ljava/lang/String;

    sput v2, Lc/e/a/c;->H:I

    sput-boolean v2, Lc/e/a/c;->I:Z

    sput-boolean v2, Lc/e/a/c;->J:Z

    sput-boolean v1, Lc/e/a/c;->K:Z

    sput-object v0, Lc/e/a/c;->L:Ljava/io/RandomAccessFile;

    sput-boolean v2, Lc/e/a/c;->M:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lc/e/a/c;->N:Ljava/lang/Object;

    sput-object v0, Lc/e/a/c;->O:Ljava/lang/String;

    sput-boolean v2, Lc/e/a/c;->P:Z

    sput-object v0, Lc/e/a/c;->Q:[Ljava/lang/Object;

    new-instance v1, Lc/e/a/a/d;

    const/16 v3, 0x65

    invoke-direct {v1, v3}, Lc/e/a/a/d;-><init>(I)V

    sput-object v1, Lc/e/a/c;->R:Ljava/lang/Runnable;

    sput-boolean v2, Lc/e/a/c;->S:Z

    const-wide/16 v3, 0x0

    sput-wide v3, Lc/e/a/c;->T:J

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lc/e/a/c;->U:Ljava/lang/Object;

    sput-wide v3, Lc/e/a/c;->V:J

    sput-boolean v2, Lc/e/a/c;->W:Z

    sput-boolean v2, Lc/e/a/c;->X:Z

    sput-boolean v2, Lc/e/a/c;->Y:Z

    sput-wide v3, Lc/e/a/c;->Z:J

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lc/e/a/c;->a0:Ljava/util/WeakHashMap;

    sput-object v0, Lc/e/a/c;->b0:Ljava/lang/String;

    sput-boolean v2, Lc/e/a/c;->c0:Z

    sput-boolean v2, Lc/e/a/c;->d0:Z

    sput-boolean v2, Lc/e/a/c;->e0:Z

    sput-boolean v2, Lc/e/a/c;->f0:Z

    sput-boolean v2, Lc/e/a/c;->g0:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lc/e/a/c;->h0:Ljava/lang/Object;

    sput-object v0, Lc/e/a/c;->i0:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()Z
    .locals 1

    invoke-static {}, Lc/e/a/i;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/c;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    .line 1
    invoke-static {p0, p1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, ".st"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    sget-boolean v2, Lc/e/a/c;->j0:Z

    if-nez v2, :cond_3

    if-ltz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_4

    return-object v0

    :cond_4
    const-string v0, ".stcb"

    invoke-static {p0, v0}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    return-object v0
.end method

.method public static a(I)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    sget-boolean p0, Lc/e/a/c;->j0:Z

    if-eqz p0, :cond_b

    goto/16 :goto_6

    :pswitch_0
    const-wide/16 v2, 0x7d0

    .line 2
    invoke-static {v0, v2, v3}, Lc/e/a/a/g;->b(IJ)V

    const-wide/32 v2, 0x11170

    invoke-static {v1, v2, v3}, Lc/e/a/a/g;->a(IJ)V

    const/16 p0, 0x66

    .line 3
    invoke-static {p0, v1}, Lc/e/a/h;->a(II)V

    .line 4
    invoke-static {}, Lc/e/a/c;->c()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {}, Lc/e/a/f;->c()V

    return-void

    :pswitch_1
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lc/e/a/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lc/e/a/a/f;->a(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 5
    invoke-static {p0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    return-void

    .line 6
    :pswitch_2
    new-instance p0, Lc/e/a/a/d;

    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lc/e/a/a/d;-><init>(I)V

    invoke-static {v1, p0}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;)Z

    return-void

    :pswitch_3
    :try_start_1
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lc/e/a/c;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lc/e/a/c;->M:Z

    if-nez v1, :cond_1

    sget-boolean p0, Lc/e/a/c;->P:Z

    if-eqz p0, :cond_2

    :cond_1
    invoke-static {}, Lc/e/a/c;->p()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lc/e/a/c;->a([Ljava/lang/Object;)V

    sput-boolean v2, Lc/e/a/c;->P:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    .line 7
    invoke-static {p0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    return-void

    .line 8
    :pswitch_4
    sget-object p0, Lc/e/a/a/f;->a:Landroid/content/Context;

    .line 9
    check-cast p0, Landroid/app/Application;

    const-class v3, Landroid/app/Application;

    const-string v4, "mLoadedApk"

    invoke-static {p0, v3, v4}, Lc/e/a/c;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/4 v3, 0x0

    if-eqz p0, :cond_3

    const-string v4, "mActivityThread"

    invoke-static {p0, v3, v4}, Lc/e/a/c;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, "android.app.ActivityThread"

    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v4, "currentActivityThread"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    .line 10
    invoke-static {p0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_4
    move-object p0, v3

    :goto_1
    if-eqz p0, :cond_a

    const-string v4, "mActivities"

    .line 11
    invoke-static {p0, v3, v4}, Lc/e/a/c;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    :try_start_3
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v4, v2

    move v5, v4

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v6, "activity"

    invoke-static {v4, v3, v6}, Lc/e/a/c;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    if-eqz v6, :cond_7

    const-string v7, "paused"

    invoke-static {v4, v3, v7}, Lc/e/a/c;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v8, "stopped"

    invoke-static {v4, v3, v8}, Lc/e/a/c;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v8, Lc/e/a/c;->a0:Ljava/util/WeakHashMap;

    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez v7, :cond_6

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v4, v1

    move v5, v4

    goto :goto_4

    :cond_6
    :goto_3
    move v4, v0

    :goto_4
    :try_start_4
    sget-object v7, Lc/e/a/c;->a0:Ljava/util/WeakHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v6, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v8

    goto :goto_5

    :catchall_3
    move-exception p0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    throw p0

    :cond_7
    :goto_5
    move v4, v1

    goto :goto_2

    :cond_8
    if-eqz v4, :cond_9

    invoke-static {v5}, Lc/e/a/c;->a(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_9
    return-void

    :catchall_4
    move-exception p0

    .line 12
    invoke-static {p0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_a
    :goto_6
    return-void

    .line 13
    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .locals 11

    const-string v0, "Restart APP"

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/File;

    sget-object v0, Lc/e/a/c;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "rt"

    invoke-static {v0}, Lc/e/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/c;->g:Ljava/lang/String;

    :cond_1
    sget-object v0, Lc/e/a/c;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 30
    :try_start_0
    invoke-static {p0, v2, v4}, Lc/e/a/a/f;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 32
    invoke-static {v2, v3}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 33
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 34
    sget-object v2, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v2, v2, Lc/e/a/g/b;->F:I

    if-ltz v2, :cond_3

    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-lez v7, :cond_2

    sub-long v7, v5, v0

    int-to-long v9, v2

    cmp-long v2, v7, v9

    if-lez v2, :cond_3

    .line 35
    :cond_2
    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc/e/a/c;->e(Ljava/lang/String;)Z

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lc/e/a/a/f;->a(Ljava/io/File;Ljava/lang/String;)Z

    move p0, v4

    goto :goto_1

    :cond_3
    move p0, v3

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "lastTime: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", currentTime: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", needRestart: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;)V

    if-nez p0, :cond_4

    return-void

    :cond_4
    :try_start_1
    invoke-static {v4}, Lc/e/a/e;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 36
    invoke-static {p0, v3}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 37
    :goto_2
    invoke-static {}, Lc/e/a/c;->g()Z

    return-void
.end method

.method public static a(Z)V
    .locals 9

    invoke-static {}, Lc/e/a/f;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget-boolean v1, Lc/e/a/c;->w:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lc/e/a/i;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "setForeground, reset sExited to false!!!"

    const-string v2, "crashsdk"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sput-boolean v0, Lc/e/a/c;->w:Z

    .line 38
    sget-boolean v1, Lc/e/a/c;->r:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x1a

    sget-boolean v2, Lc/e/a/c;->w:Z

    invoke-static {v1, v2}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    .line 39
    :cond_2
    sget-boolean v1, Lc/e/a/f;->Y:Z

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 40
    invoke-static {}, Lc/e/a/c;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v2

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-boolean v5, Lc/e/a/c;->W:Z

    if-eqz v5, :cond_5

    sget-boolean v5, Lc/e/a/c;->X:Z

    if-nez v5, :cond_5

    if-eqz p0, :cond_5

    sget-wide v5, Lc/e/a/c;->Z:J

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_5

    if-nez v1, :cond_5

    sub-long v5, v3, v5

    const-wide/32 v7, 0x1b7740

    cmp-long v5, v5, v7

    if-lez v5, :cond_5

    new-instance v5, Lc/e/a/a/d;

    const/16 v6, 0x68

    invoke-direct {v5, v6}, Lc/e/a/a/d;-><init>(I)V

    const-wide/16 v6, 0x3e8

    invoke-static {v2, v5, v6, v7}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z

    :cond_5
    sput-wide v3, Lc/e/a/c;->Z:J

    sput-boolean p0, Lc/e/a/c;->X:Z

    if-eqz p0, :cond_6

    sput-boolean v2, Lc/e/a/c;->W:Z

    :cond_6
    sget-boolean v3, Lc/e/a/c;->r:Z

    if-eqz v3, :cond_7

    invoke-static {p0}, Lcom/uc/crashsdk/JNIBridge;->nativeSetForeground(Z)V

    :cond_7
    sget-boolean v3, Lc/e/a/c;->w:Z

    if-eqz v3, :cond_8

    return-void

    :cond_8
    if-eqz v1, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lc/e/a/c;->k()V

    invoke-static {}, Lc/e/a/c;->m()V

    if-eqz p0, :cond_a

    invoke-static {v0}, Lc/e/a/b;->a(Z)Z

    sget-boolean v0, Lc/e/a/c;->Y:Z

    if-nez v0, :cond_a

    invoke-static {}, Lc/e/a/f;->b()V

    sput-boolean v2, Lc/e/a/c;->Y:Z

    :cond_a
    sget-boolean v0, Lc/e/a/c;->M:Z

    if-nez v0, :cond_b

    invoke-static {}, Lc/e/a/c;->o()V

    :cond_b
    invoke-static {p0}, Lc/e/a/f;->c(Z)V

    return-void
.end method

.method public static a([Ljava/lang/Object;)V
    .locals 8

    sput-object p0, Lc/e/a/c;->Q:[Ljava/lang/Object;

    sget-object v0, Lc/e/a/c;->N:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    aget-object p0, p0, v3

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-wide v6, Lc/e/a/c;->T:J

    cmp-long p0, v4, v6

    if-gez p0, :cond_0

    const-string p0, "crashsdk"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Update state generation %d, last is: %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v1

    sget-wide v4, Lc/e/a/c;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v3

    invoke-static {v2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    sput-wide v4, Lc/e/a/c;->T:J

    invoke-static {}, Lc/e/a/c;->i()Ljava/lang/String;

    move-result-object p0

    sget-boolean v3, Lc/e/a/c;->r:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    sget-object v3, Lc/e/a/c;->L:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_1

    sget-object v3, Lc/e/a/c;->L:Ljava/io/RandomAccessFile;

    invoke-static {v3}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    sput-object v4, Lc/e/a/c;->L:Ljava/io/RandomAccessFile;

    :cond_1
    sget-boolean v3, Lc/e/a/c;->M:Z

    invoke-static {p0, v2, v3}, Lcom/uc/crashsdk/JNIBridge;->nativeChangeState(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean v1, Lc/e/a/c;->M:Z

    if-nez p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "write state failed: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v3, Lc/e/a/c;->L:Ljava/io/RandomAccessFile;

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_3

    sget-boolean v3, Lc/e/a/c;->M:Z

    if-eqz v3, :cond_5

    :cond_3
    sget-object v3, Lc/e/a/c;->L:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_4

    sget-object v3, Lc/e/a/c;->L:Ljava/io/RandomAccessFile;

    invoke-static {v3}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    sput-object v4, Lc/e/a/c;->L:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v3, p0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lc/e/a/c;->L:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    sput-boolean v1, Lc/e/a/c;->M:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    :try_start_2
    invoke-static {p0, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :cond_5
    :goto_0
    :try_start_3
    sget-object p0, Lc/e/a/c;->L:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->write([B)V

    sget-object p0, Lc/e/a/c;->L:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 16
    :try_start_4
    invoke-static {p0, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 17
    :cond_6
    :goto_1
    sput-object v2, Lc/e/a/c;->O:Ljava/lang/String;

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sput-object v4, Lc/e/a/c;->Q:[Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lc/e/a/c;->X:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lc/e/a/c;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Lc/e/a/a/d;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lc/e/a/c;->r:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/uc/crashsdk/JNIBridge;->nativeOpenFile(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Can not open file: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "crashsdk"

    invoke-static {p2, p1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    return v2

    :cond_0
    const/4 p1, 0x1

    :try_start_1
    invoke-static {v0, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeLockFile(IZ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p2}, Lc/e/a/a/d;->a()Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    :try_start_3
    invoke-static {v0, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeLockFile(IZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->nativeCloseFile(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto/16 :goto_8

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_2

    :try_start_5
    invoke-static {v0, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeLockFile(IZ)Z

    :cond_2
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->nativeCloseFile(I)V

    throw p1

    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-nez p1, :cond_4

    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    :try_start_8
    invoke-static {p1, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 19
    :cond_4
    :goto_0
    :try_start_9
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {p1, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object p2, p1

    move-object p1, v1

    goto :goto_9

    :catch_1
    move-exception p1

    .line 20
    :try_start_a
    invoke-static {p1, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_5

    .line 21
    :try_start_b
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_3

    :catch_2
    move-exception v0

    .line 22
    :try_start_c
    invoke-static {v0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p2

    goto :goto_9

    :goto_2
    move-object v1, p1

    goto :goto_6

    .line 23
    :cond_5
    :goto_3
    :try_start_d
    invoke-virtual {p2}, Lc/e/a/a/d;->a()Z

    move-result p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v1, :cond_6

    :try_start_e
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 24
    :try_start_f
    invoke-static {v0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, p1

    move p1, p2

    move-object p2, v0

    goto :goto_7

    .line 25
    :cond_6
    :goto_4
    :try_start_10
    invoke-static {p1}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_8

    :catchall_4
    move-exception p2

    if-eqz v1, :cond_7

    :try_start_11
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_5

    :catch_5
    move-exception v0

    .line 26
    :try_start_12
    invoke-static {v0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 27
    :cond_7
    :goto_5
    throw p2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :catch_6
    move-exception p2

    goto :goto_2

    :catch_7
    move-exception p2

    :goto_6
    move p1, v2

    .line 28
    :goto_7
    :try_start_13
    invoke-static {p2, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 29
    :try_start_14
    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    move p2, p1

    :goto_8
    monitor-exit p0

    return p2

    :goto_9
    invoke-static {p1}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    throw p2

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    throw p1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "debug.crs."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()V
    .locals 2

    new-instance v0, Lc/e/a/a/d;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lc/e/a/a/d;-><init>(I)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;)Z

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc/e/a/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Z
    .locals 3

    sget-boolean v0, Lc/e/a/c;->c0:Z

    if-nez v0, :cond_2

    sget-object v0, Lc/e/a/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lc/e/a/b;->a:Ljava/lang/String;

    invoke-static {}, Lc/e/a/f;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sput-boolean v1, Lc/e/a/c;->d0:Z

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_1
    sput-boolean v1, Lc/e/a/c;->c0:Z

    :cond_2
    sget-boolean v0, Lc/e/a/c;->d0:Z

    return v0
.end method

.method public static d()I
    .locals 2

    .line 1
    invoke-static {}, Lc/e/a/c;->k()V

    sget-boolean v0, Lc/e/a/c;->B:Z

    .line 2
    invoke-static {}, Lc/e/a/c;->k()V

    sget-boolean v1, Lc/e/a/c;->A:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x6

    return v0

    .line 3
    :cond_1
    invoke-static {}, Lc/e/a/c;->k()V

    sget-boolean v1, Lc/e/a/c;->z:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x5

    return v0

    :cond_3
    if-eqz v0, :cond_4

    const/4 v0, 0x4

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static d(Ljava/lang/String;)[Ljava/io/File;
    .locals 6

    sget-boolean v0, Lc/e/a/c;->j0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/io/File;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e()Z
    .locals 6

    sget-boolean v0, Lc/e/a/c;->g0:Z

    if-nez v0, :cond_3

    sget-object v0, Lc/e/a/c;->h0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lc/e/a/c;->g0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    :try_start_1
    const-class v3, Landroid/os/Process;

    new-array v4, v1, [Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v5, "isIsolated"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 2
    :try_start_4
    invoke-static {v3, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const v4, 0x186a0

    rem-int/2addr v3, v4

    const v4, 0x182b8

    if-lt v3, v4, :cond_1

    const v4, 0x1869f

    if-gt v3, v4, :cond_1

    move v1, v2

    .line 4
    :cond_1
    :goto_0
    sput-boolean v1, Lc/e/a/c;->f0:Z

    sput-boolean v2, Lc/e/a/c;->g0:Z

    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_3
    :goto_1
    sget-boolean v0, Lc/e/a/c;->f0:Z

    return v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    const-string v2, "Crash log directory was placed by a file!"

    const-string v3, "crashsdk"

    invoke-static {v3, v2, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static f()V
    .locals 4

    .line 1
    sget-boolean v0, Lc/e/a/f;->Y:Z

    if-nez v0, :cond_3

    .line 2
    invoke-static {}, Lc/e/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lc/e/a/c;->i0:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v0, v0, Lc/e/a/g/b;->F:I

    if-gez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 4
    :try_start_0
    sget-object v1, Lc/e/a/a/f;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1, v0, v2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sput-object v1, Lc/e/a/c;->i0:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 6
    invoke-static {v1, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static g()Z
    .locals 6

    sget-object v0, Lc/e/a/c;->i0:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Restart intent is null!"

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    const-string v0, "restarting ..."

    const-string v2, "crashsdk"

    invoke-static {v2, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc/e/a/a/f;->a:Landroid/content/Context;

    const-string v2, "alarm"

    .line 2
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    sget-object v4, Lc/e/a/c;->i0:Landroid/app/PendingIntent;

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    return v1
.end method

.method public static synthetic h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc/e/a/c;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ss"

    invoke-static {v0}, Lc/e/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/c;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Lc/e/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc/e/a/c;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "cta"

    invoke-static {v0}, Lc/e/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/c;->d:Ljava/lang/String;

    :cond_0
    sget-object v0, Lc/e/a/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static k()V
    .locals 6

    sget-boolean v0, Lc/e/a/c;->y:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lc/e/a/c;->x:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-object v0, Lc/e/a/c;->F:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lc/e/a/c;->y:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/e/a/c;->e(Ljava/lang/String;)Z

    .line 1
    invoke-static {}, Lc/e/a/c;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lc/e/a/a/f;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lc/e/a/c;->r()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    .line 3
    sget-object v5, Lc/e/a/c;->c:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v5, "ctn"

    invoke-static {v5}, Lc/e/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lc/e/a/c;->c:Ljava/lang/String;

    :cond_2
    sget-object v5, Lc/e/a/c;->c:Ljava/lang/String;

    .line 4
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "f"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lc/e/a/c;->z:Z

    const-string v5, "b"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lc/e/a/c;->A:Z

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Lc/e/a/c;->C:Z

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Lc/e/a/c;->D:Z

    sget-boolean v1, Lc/e/a/c;->C:Z

    const/4 v2, 0x1

    if-nez v1, :cond_4

    sget-boolean v1, Lc/e/a/c;->D:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v2

    :goto_1
    sput-boolean v1, Lc/e/a/c;->B:Z

    if-nez v1, :cond_6

    sget-boolean v1, Lc/e/a/c;->z:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lc/e/a/c;->A:Z

    if-eqz v1, :cond_6

    :cond_5
    invoke-static {}, Lc/e/a/c;->y()Z

    move-result v1

    sput-boolean v1, Lc/e/a/c;->E:Z

    sput-boolean v1, Lc/e/a/c;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :cond_6
    :try_start_1
    sget-boolean v1, Lc/e/a/c;->W:Z

    if-nez v1, :cond_8

    invoke-static {}, Lc/e/a/c;->q()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v3

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_8
    :goto_2
    move v1, v2

    :goto_3
    if-eqz v1, :cond_9

    .line 6
    invoke-static {}, Lc/e/a/c;->m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 7
    :goto_4
    :try_start_2
    invoke-static {v1, v3}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 8
    :cond_9
    :goto_5
    sput-boolean v2, Lc/e/a/c;->y:Z

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_a
    :goto_6
    return-void
.end method

.method public static l()V
    .locals 2

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    sget-boolean v1, Lc/e/a/c;->w:Z

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_0
    return-void
.end method

.method public static m()V
    .locals 4

    sget-boolean v0, Lc/e/a/c;->S:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    sput-boolean v1, Lc/e/a/c;->S:Z

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lc/e/a/c;->r()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1
    invoke-static {v0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 2
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    .line 3
    sget-object v3, Lc/e/a/c;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "ctn"

    invoke-static {v3}, Lc/e/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lc/e/a/c;->c:Ljava/lang/String;

    :cond_0
    sget-object v3, Lc/e/a/c;->c:Ljava/lang/String;

    .line 4
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 5
    invoke-static {v0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 6
    :goto_1
    :try_start_2
    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lc/e/a/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 7
    invoke-static {v0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 8
    :cond_2
    :goto_2
    invoke-static {}, Lc/e/a/c;->p()[Ljava/lang/Object;

    move-result-object v0

    aget-object v2, v0, v2

    sget-object v3, Lc/e/a/c;->O:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lc/e/a/c;->Q:[Ljava/lang/Object;

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v0}, Lc/e/a/c;->a([Ljava/lang/Object;)V

    return-void

    :cond_4
    :goto_3
    sput-boolean v1, Lc/e/a/c;->P:Z

    invoke-static {}, Lc/e/a/c;->o()V

    return-void
.end method

.method public static n()Ljava/lang/String;
    .locals 8

    sget-object v0, Lc/e/a/c;->G:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lc/e/a/f;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "LLUN"

    :goto_0
    sput-object v0, Lc/e/a/c;->G:Ljava/lang/String;

    goto/16 :goto_7

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x30

    if-le v1, v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-ltz v4, :cond_8

    aget-byte v5, v0, v4

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_3
    const/16 v6, 0x3a

    if-ne v5, v6, :cond_4

    const/16 v5, 0x31

    :goto_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_4
    const/16 v6, 0x61

    if-lt v5, v6, :cond_5

    const/16 v7, 0x7a

    if-gt v5, v7, :cond_5

    add-int/lit8 v5, v5, 0x41

    sub-int/2addr v5, v6

    :goto_4
    int-to-char v5, v5

    goto :goto_3

    :cond_5
    const/16 v6, 0x41

    if-lt v5, v6, :cond_6

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_6

    :goto_5
    goto :goto_4

    :cond_6
    if-lt v5, v3, :cond_7

    const/16 v6, 0x39

    if-gt v5, v6, :cond_7

    goto :goto_5

    :cond_7
    const/16 v5, 0x32

    goto :goto_3

    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_8
    if-lez v1, :cond_9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_7
    sget-object v0, Lc/e/a/c;->G:Ljava/lang/String;

    return-object v0
.end method

.method public static o()V
    .locals 4

    sget-object v0, Lc/e/a/c;->R:Ljava/lang/Runnable;

    invoke-static {v0}, Lc/e/a/a/e;->b(Ljava/lang/Runnable;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lc/e/a/c;->R:Ljava/lang/Runnable;

    invoke-static {v1, v0}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;)Z

    return-void

    :cond_0
    sget-object v0, Lc/e/a/c;->Q:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-static {}, Lc/e/a/c;->p()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lc/e/a/c;->R:Ljava/lang/Runnable;

    invoke-static {v0}, Lc/e/a/a/e;->a(Ljava/lang/Runnable;)V

    sget-object v0, Lc/e/a/c;->R:Ljava/lang/Runnable;

    invoke-static {v1, v0}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public static p()[Ljava/lang/Object;
    .locals 5

    sget-object v0, Lc/e/a/c;->U:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lc/e/a/c;->V:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lc/e/a/c;->V:J

    sget-boolean v1, Lc/e/a/c;->w:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v4, "e"

    aput-object v4, v1, v3

    sget-wide v3, Lc/e/a/c;->V:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-static {}, Lc/e/a/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    const-string v4, "f"

    aput-object v4, v1, v3

    sget-wide v3, Lc/e/a/c;->V:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    monitor-exit v0

    return-object v1

    :cond_1
    new-array v1, v4, [Ljava/lang/Object;

    const-string v4, "b"

    aput-object v4, v1, v3

    sget-wide v3, Lc/e/a/c;->V:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static q()Z
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/cgroup"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x200

    invoke-static {v0, v2, v1}, Lc/e/a/a/f;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const-string v2, "/bg_non_interactive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/background"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static r()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc/e/a/c;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ctj"

    invoke-static {v0}, Lc/e/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/c;->b:Ljava/lang/String;

    :cond_0
    sget-object v0, Lc/e/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static s()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc/e/a/c;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "st"

    invoke-static {v0}, Lc/e/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/c;->e:Ljava/lang/String;

    :cond_0
    sget-object v0, Lc/e/a/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static t()Ljava/lang/String;
    .locals 2

    sget-object v0, Lc/e/a/c;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "up"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/c;->h:Ljava/lang/String;

    :cond_0
    sget-object v0, Lc/e/a/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static u()Ljava/lang/String;
    .locals 2

    sget-object v0, Lc/e/a/c;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "authu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/c;->i:Ljava/lang/String;

    :cond_0
    sget-object v0, Lc/e/a/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static v()Ljava/lang/String;
    .locals 2

    sget-object v0, Lc/e/a/c;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "statu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/c;->j:Ljava/lang/String;

    :cond_0
    sget-object v0, Lc/e/a/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static w()Ljava/lang/String;
    .locals 2

    sget-object v0, Lc/e/a/c;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "poli"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/c;->k:Ljava/lang/String;

    :cond_0
    sget-object v0, Lc/e/a/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static x()Ljava/lang/String;
    .locals 2

    sget-object v0, Lc/e/a/c;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/c;->l:Ljava/lang/String;

    :cond_0
    sget-object v0, Lc/e/a/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static y()Z
    .locals 6

    sget-boolean v0, Lc/e/a/c;->I:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lc/e/a/c;->r:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lc/e/a/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_0
    sput-boolean v0, Lc/e/a/c;->J:Z

    sput-boolean v1, Lc/e/a/c;->I:Z

    :cond_2
    sget-boolean v0, Lc/e/a/c;->J:Z

    return v0
.end method

.method public static z()Z
    .locals 1

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/c;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
