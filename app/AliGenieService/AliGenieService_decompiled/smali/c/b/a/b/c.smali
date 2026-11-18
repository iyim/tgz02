.class public Lc/b/a/b/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc/b/a/b/d;


# direct methods
.method public constructor <init>(Lc/b/a/b/d;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/b/c;->b:Lc/b/a/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/16 v0, 0x1401

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Lcom/aligenie/ags/analytics/jni/SystemLogReader;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/aligenie/ags/analytics/jni/SystemLogReader;-><init>(I)V

    const-string v2, "SystemLogReader get log.tag:"

    invoke-static {v2}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    const-string v4, "log.tag"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "IC"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "W"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "I"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SystemLogReader after set log.tag:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "android.util.EventLog$Event"

    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_1

    aget-object v7, v2, v5

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/aligenie/ags/analytics/jni/SystemLogReader;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    aget-object v3, v2, v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    aput-object v7, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/EventLog$Event;

    invoke-virtual {v3}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v7

    iget-object v5, p0, Lc/b/a/b/c;->b:Lc/b/a/b/d;

    .line 1
    iget-wide v9, v5, Lc/b/a/b/d;->e:J

    cmp-long v5, v7, v9

    if-gez v5, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    iget-object v5, p0, Lc/b/a/b/c;->b:Lc/b/a/b/d;

    invoke-virtual {v3}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v7

    .line 3
    iput-wide v7, v5, Lc/b/a/b/d;->e:J

    .line 4
    sget-object v5, Lc/b/a/b/o/h$a;->a:Lc/b/a/b/o/h;

    .line 5
    iget-object v7, p0, Lc/b/a/b/c;->b:Lc/b/a/b/d;

    .line 6
    iget-wide v7, v7, Lc/b/a/b/d;->e:J

    .line 7
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lc/b/a/b/o/h;->b(Ljava/lang/String;)V

    iget-object v5, p0, Lc/b/a/b/c;->b:Lc/b/a/b/d;

    .line 8
    invoke-virtual {v5, v3}, Lc/b/a/b/d;->a(Landroid/util/EventLog$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    const-class v1, Lc/b/a/b/d;

    const-string v2, "reflect android.util.EventLog$Event"

    invoke-static {v2, v1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method
