.class final Lcom/taobao/android/dinamic/log/DinamicLog$1;
.super Ljava/lang/Object;
.source "DinamicLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamic/log/DinamicLog;->logHandleEvent(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$consumingTime:J

.field final synthetic val$identifier:Ljava/lang/String;

.field final synthetic val$module:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/taobao/android/dinamic/log/DinamicLog$1;->val$module:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamic/log/DinamicLog$1;->val$identifier:Ljava/lang/String;

    iput-wide p3, p0, Lcom/taobao/android/dinamic/log/DinamicLog$1;->val$consumingTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 114
    invoke-static {}, Lcom/taobao/android/dinamic/Dinamic;->isDebugable()Z

    move-result v0

    const-wide v1, 0x412e848000000000L    # 1000000.0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 115
    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent module="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taobao/android/dinamic/log/DinamicLog$1;->val$module:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "identifier="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taobao/android/dinamic/log/DinamicLog$1;->val$identifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "consuming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/taobao/android/dinamic/log/DinamicLog$1;->val$consumingTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "Dinamic"

    invoke-static {v3, v0}, Lcom/taobao/android/dinamic/log/DinamicLog;->d(Ljava/lang/String;[Ljava/lang/String;)V

    .line 119
    :cond_0
    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamic/DRegisterCenter;->getPerformMonitor()Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;

    move-result-object v0

    iget-object v3, p0, Lcom/taobao/android/dinamic/log/DinamicLog$1;->val$module:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/android/dinamic/log/DinamicLog$1;->val$identifier:Ljava/lang/String;

    iget-wide v5, p0, Lcom/taobao/android/dinamic/log/DinamicLog$1;->val$consumingTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v1

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->trackHandleEvent(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method
