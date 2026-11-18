.class public Lc/b/a/b/o/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A:Z

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:Ljava/lang/String;

.field public static E:Ljava/lang/String;

.field public static F:Ljava/lang/String;

.field public static G:Ljava/lang/String;

.field public static H:Landroid/content/Context;

.field public static I:Landroid/net/Uri;

.field public static J:Landroid/net/Uri;

.field public static K:Landroid/net/Uri;

.field public static L:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lc/b/a/b/m/a;",
            ">;"
        }
    .end annotation
.end field

.field public static M:I

.field public static N:Ljava/lang/String;

.field public static O:J

.field public static P:Lc/b/a/b/d;

.field public static Q:Ljava/lang/String;

.field public static a:Ljava/lang/String;

.field public static b:Lcom/aligenie/ags/analytics/service/AccService;

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/Integer;

.field public static v:Ljava/lang/Boolean;

.field public static w:Ljava/lang/Boolean;

.field public static x:Ljava/lang/Boolean;

.field public static y:Ljava/lang/String;

.field public static z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput v0, Lc/b/a/b/o/g;->c:I

    sput v0, Lc/b/a/b/o/g;->d:I

    sput v0, Lc/b/a/b/o/g;->e:I

    sput v0, Lc/b/a/b/o/g;->f:I

    sput v0, Lc/b/a/b/o/g;->g:I

    sput v0, Lc/b/a/b/o/g;->h:I

    sput v0, Lc/b/a/b/o/g;->i:I

    const-string v2, ""

    sput-object v2, Lc/b/a/b/o/g;->j:Ljava/lang/String;

    sput-object v2, Lc/b/a/b/o/g;->k:Ljava/lang/String;

    sput-object v2, Lc/b/a/b/o/g;->l:Ljava/lang/String;

    sput-object v2, Lc/b/a/b/o/g;->m:Ljava/lang/String;

    sput-object v2, Lc/b/a/b/o/g;->n:Ljava/lang/String;

    sput-object v2, Lc/b/a/b/o/g;->o:Ljava/lang/String;

    sput-object v2, Lc/b/a/b/o/g;->p:Ljava/lang/String;

    sput-object v2, Lc/b/a/b/o/g;->q:Ljava/lang/String;

    sput-object v2, Lc/b/a/b/o/g;->r:Ljava/lang/String;

    sput-object v2, Lc/b/a/b/o/g;->s:Ljava/lang/String;

    sput-object v2, Lc/b/a/b/o/g;->t:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lc/b/a/b/o/g;->u:Ljava/lang/Integer;

    sput-object v1, Lc/b/a/b/o/g;->v:Ljava/lang/Boolean;

    sput-object v1, Lc/b/a/b/o/g;->w:Ljava/lang/Boolean;

    sput-object v1, Lc/b/a/b/o/g;->x:Ljava/lang/Boolean;

    sput-object v2, Lc/b/a/b/o/g;->y:Ljava/lang/String;

    const-wide/16 v3, 0x0

    sput-wide v3, Lc/b/a/b/o/g;->z:J

    sput-boolean v0, Lc/b/a/b/o/g;->A:Z

    sput-object v2, Lc/b/a/b/o/g;->B:Ljava/lang/String;

    sput-object v2, Lc/b/a/b/o/g;->C:Ljava/lang/String;

    sput-object v2, Lc/b/a/b/o/g;->D:Ljava/lang/String;

    sput-object v2, Lc/b/a/b/o/g;->E:Ljava/lang/String;

    sput-object v2, Lc/b/a/b/o/g;->F:Ljava/lang/String;

    sput-object v2, Lc/b/a/b/o/g;->G:Ljava/lang/String;

    const-string v1, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/gesturerecognize"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lc/b/a/b/o/g;->I:Landroid/net/Uri;

    const-string v1, "content://com.android.settings.SettingsProvider.voiceprint/child_mode_recognize"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lc/b/a/b/o/g;->J:Landroid/net/Uri;

    const-string v1, "content://com.android.settings.SettingsProvider.voiceprint/visual_recognize"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lc/b/a/b/o/g;->K:Landroid/net/Uri;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lc/b/a/b/o/g;->L:Ljava/util/concurrent/ConcurrentHashMap;

    sput v0, Lc/b/a/b/o/g;->M:I

    sput-object v2, Lc/b/a/b/o/g;->N:Ljava/lang/String;

    sput-wide v3, Lc/b/a/b/o/g;->O:J

    invoke-static {}, Lc/b/a/b/o/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/b/a/b/o/g;->Q:Ljava/lang/String;

    return-void
.end method

.method public static a()I
    .locals 2

    const-string v0, "persist.sys.is.child.mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b()I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v2, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lc/b/a/b/o/g;->K:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "visual_status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v3

    move v2, v1

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v0, 0x2

    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1

    :goto_3
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static c()I
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v2, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lc/b/a/b/o/g;->J:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_0

    :catchall_1
    move-exception v4

    move v3, v1

    :goto_0
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v5

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    :try_start_5
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v5

    :cond_0
    move v3, v1

    :goto_2
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    move v3, v1

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_4
    const/4 v2, 0x2

    if-ne v3, v2, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public static d()I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v2, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lc/b/a/b/o/g;->I:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "isopen"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_1
    if-eqz v1, :cond_2

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "IC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isGestureOpen: Exception caught! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
