.class final Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$2;
.super Lcom/taobao/android/dinamicx/thread/DXMonitorRunnable;
.source "DXUmbrellaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->commitError(Lcom/taobao/android/dinamicx/DXError;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$error:Lcom/taobao/android/dinamicx/DXError;

.field final synthetic val$isSimplePipeline:Z


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/DXError;Z)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$2;->val$error:Lcom/taobao/android/dinamicx/DXError;

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$2;->val$isSimplePipeline:Z

    invoke-direct {p0}, Lcom/taobao/android/dinamicx/thread/DXMonitorRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$2;->val$error:Lcom/taobao/android/dinamicx/DXError;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$2;->val$error:Lcom/taobao/android/dinamicx/DXError;

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$2;->val$error:Lcom/taobao/android/dinamicx/DXError;

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$2;->val$error:Lcom/taobao/android/dinamicx/DXError;

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 94
    iget-object v3, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$2;->val$error:Lcom/taobao/android/dinamicx/DXError;

    iget-object v3, v3, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    if-nez v3, :cond_1

    goto :goto_1

    .line 99
    :cond_1
    iget-boolean v4, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$2;->val$isSimplePipeline:Z

    if-eqz v4, :cond_2

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SimplePipeline"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->featureType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->featureType:Ljava/lang/String;

    :cond_2
    if-ne v2, v1, :cond_3

    .line 104
    iget-object v0, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$2;->val$error:Lcom/taobao/android/dinamicx/DXError;

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->biztype:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$2;->val$error:Lcom/taobao/android/dinamicx/DXError;

    iget-object v1, v1, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    invoke-static {v0, v1, v3}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->access$400(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;)V

    .line 105
    iget-object v0, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$2;->val$error:Lcom/taobao/android/dinamicx/DXError;

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->biztype:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$2;->val$error:Lcom/taobao/android/dinamicx/DXError;

    iget-object v1, v1, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    invoke-static {v0, v1, v3}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->access$500(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;)V

    goto :goto_3

    .line 108
    :cond_3
    iget-object v4, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$2;->val$error:Lcom/taobao/android/dinamicx/DXError;

    iget-object v4, v4, Lcom/taobao/android/dinamicx/DXError;->biztype:Ljava/lang/String;

    iget-object v5, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$2;->val$error:Lcom/taobao/android/dinamicx/DXError;

    iget-object v5, v5, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    invoke-static {v4, v5, v3}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->access$400(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception v0

    .line 111
    invoke-static {v0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-void
.end method
