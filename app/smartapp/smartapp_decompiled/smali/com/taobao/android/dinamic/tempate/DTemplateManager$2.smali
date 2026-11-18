.class Lcom/taobao/android/dinamic/tempate/DTemplateManager$2;
.super Ljava/lang/Object;
.source "DTemplateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamic/tempate/DTemplateManager;->logFetchExactTemplate(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamic/tempate/DTemplateManager;

.field final synthetic val$consumingTime:J

.field final synthetic val$exact:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

.field final synthetic val$origin:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamic/tempate/DTemplateManager;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;J)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$2;->this$0:Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    iput-object p2, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$2;->val$origin:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    iput-object p3, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$2;->val$exact:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    iput-wide p4, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$2;->val$consumingTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 340
    invoke-static {}, Lcom/taobao/android/dinamic/Dinamic;->isDebugable()Z

    move-result v0

    const-wide v1, 0x412e848000000000L    # 1000000.0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 341
    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetch exact template=origin template="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$2;->val$origin:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "exact template="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$2;->val$exact:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "consuming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$2;->val$consumingTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "Dinamic"

    invoke-static {v3, v0}, Lcom/taobao/android/dinamic/log/DinamicLog;->d(Ljava/lang/String;[Ljava/lang/String;)V

    .line 347
    :cond_0
    invoke-static {}, Lcom/taobao/android/dinamic/DRegisterCenter;->shareCenter()Lcom/taobao/android/dinamic/DRegisterCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamic/DRegisterCenter;->getPerformMonitor()Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;

    move-result-object v3

    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$2;->this$0:Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    invoke-static {v0}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->access$000(Lcom/taobao/android/dinamic/tempate/DTemplateManager;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$2;->this$0:Lcom/taobao/android/dinamic/tempate/DTemplateManager;

    .line 348
    invoke-static {v0}, Lcom/taobao/android/dinamic/tempate/DTemplateManager;->access$100(Lcom/taobao/android/dinamic/tempate/DTemplateManager;)Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$2;->val$origin:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    iget-object v7, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$2;->val$exact:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    iget-wide v8, p0, Lcom/taobao/android/dinamic/tempate/DTemplateManager$2;->val$consumingTime:J

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v1

    .line 347
    invoke-virtual/range {v3 .. v9}, Lcom/taobao/android/dinamic/dinamic/DinamicPerformMonitor;->trackFetchExactTemplate(Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/DTemplateManager$CacheStrategy;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;D)V

    return-void
.end method
