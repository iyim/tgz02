.class public final Lc/a/a/b/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/a/a/b/d;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Landroid/content/Context;


# instance fields
.field public a:Lc/a/a/b/f/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc/a/a/b/d;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lc/a/a/b/d;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lc/a/a/b/d;->c:Landroid/content/Context;

    :cond_0
    new-instance v0, Lc/a/a/b/f/a;

    invoke-direct {v0, p1, p2}, Lc/a/a/b/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lc/a/a/b/d;->a:Lc/a/a/b/f/a;

    return-void
.end method

.method public static a()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lc/a/a/b/f/a;->e()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lc/a/a/b/d;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-class v0, Lc/a/a/b/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/a/a/b/d;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/a/b/d;

    if-nez v1, :cond_1

    new-instance v1, Lc/a/a/b/d;

    invoke-direct {v1, p0, p1}, Lc/a/a/b/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lc/a/a/b/d;->b:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
