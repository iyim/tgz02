.class final Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$1;
.super Lcom/taobao/android/dinamicx/thread/DXMonitorRunnable;
.source "DXUmbrellaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->commitSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bizType:Ljava/lang/String;

.field final synthetic val$dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

.field final synthetic val$extraParam:Ljava/util/Map;

.field final synthetic val$featureType:Ljava/lang/String;

.field final synthetic val$serviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$1;->val$featureType:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$1;->val$serviceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$1;->val$bizType:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$1;->val$dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    iput-object p5, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$1;->val$extraParam:Ljava/util/Map;

    invoke-direct {p0}, Lcom/taobao/android/dinamicx/thread/DXMonitorRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$1;->val$featureType:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v3, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$1;->val$serviceId:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DinamicX"

    .line 58
    iget-object v6, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$1;->val$bizType:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$1;->val$bizType:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$1;->val$serviceId:Ljava/lang/String;

    iget-object v7, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$1;->val$dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    iget-object v8, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$1;->val$extraParam:Ljava/util/Map;

    invoke-static {v1, v0, v2, v7, v8}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 61
    invoke-static {}, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil;->access$300()Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/android/dinamicx/monitor/DXUmbrellaUtil$1;->val$featureType:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    invoke-static {v0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
