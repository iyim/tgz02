.class public Lc/b/a/b/e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/b/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lc/b/a/b/e;


# direct methods
.method public constructor <init>(Lc/b/a/b/e;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/b/e$b;->b:Lc/b/a/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-class v0, Lc/b/a/b/d;

    const/16 v1, 0x1401

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v2, Lcom/aligenie/ags/analytics/jni/SystemLogReader;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/aligenie/ags/analytics/jni/SystemLogReader;-><init>(I)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy\u5e74MM\u6708dd\u65e5 HH\u65f6mm\u5206ss\u79d2"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/aligenie/ags/analytics/jni/SystemLogReader;->read([B)I

    move-result v9

    if-lez v9, :cond_0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v9, 0xc

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    int-to-long v9, v9

    const-wide/32 v11, 0x3b9aca00

    mul-long/2addr v9, v11

    const/16 v11, 0x10

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v9, v11

    const-wide/32 v11, 0xf4240

    div-long/2addr v9, v11

    sget-object v11, Lc/b/a/b/k/a;->a:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v9, v11

    if-gez v11, :cond_1

    move-wide v7, v9

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeBeforeSynced="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ",timeAfterSynced="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    cmp-long v0, v7, v5

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/b/a/b/e$b;->b:Lc/b/a/b/e;

    .line 1
    iget-object v1, v0, Lc/b/a/b/e;->c:Lc/b/a/b/l/d;

    .line 2
    iput-wide v7, v1, Lc/b/a/b/l/d;->a:J

    iput-wide v9, v1, Lc/b/a/b/l/d;->b:J

    .line 3
    iget-object v0, v0, Lc/b/a/b/e;->a:Landroid/os/Handler;

    .line 4
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lc/b/a/b/e$b;->b:Lc/b/a/b/e;

    .line 5
    iget-object v1, v1, Lc/b/a/b/e;->a:Landroid/os/Handler;

    .line 6
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
