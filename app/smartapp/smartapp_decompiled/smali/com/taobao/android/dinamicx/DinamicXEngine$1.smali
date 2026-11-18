.class Lcom/taobao/android/dinamicx/DinamicXEngine$1;
.super Ljava/lang/Object;
.source "DinamicXEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/DinamicXEngine;->preRenderTemplate(Landroid/content/Context;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/alibaba/fastjson/JSONObject;ILcom/taobao/android/dinamicx/DXRenderOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/DinamicXEngine;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic val$renderOptions:Lcom/taobao/android/dinamicx/DXRenderOptions;

.field final synthetic val$templateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/DinamicXEngine;Lcom/taobao/android/dinamicx/DXRenderOptions;Landroid/content/Context;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine$1;->this$0:Lcom/taobao/android/dinamicx/DinamicXEngine;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/DinamicXEngine$1;->val$renderOptions:Lcom/taobao/android/dinamicx/DXRenderOptions;

    iput-object p3, p0, Lcom/taobao/android/dinamicx/DinamicXEngine$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/taobao/android/dinamicx/DinamicXEngine$1;->val$templateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    iput-object p5, p0, Lcom/taobao/android/dinamicx/DinamicXEngine$1;->val$data:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine$1;->val$renderOptions:Lcom/taobao/android/dinamicx/DXRenderOptions;

    if-nez v0, :cond_0

    sget-object v0, Lcom/taobao/android/dinamicx/DXRenderOptions;->DEFAULT_PRERENDER_OPTIONS:Lcom/taobao/android/dinamicx/DXRenderOptions;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DinamicXEngine$1;->val$renderOptions:Lcom/taobao/android/dinamicx/DXRenderOptions;

    .line 462
    :goto_0
    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine$1;->this$0:Lcom/taobao/android/dinamicx/DinamicXEngine;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/DinamicXEngine$1;->val$context:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/taobao/android/dinamicx/DinamicXEngine$1;->val$templateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    iget-object v5, p0, Lcom/taobao/android/dinamicx/DinamicXEngine$1;->val$data:Lcom/alibaba/fastjson/JSONObject;

    const/4 v6, 0x0

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lcom/taobao/android/dinamicx/DinamicXEngine;->access$000(Lcom/taobao/android/dinamicx/DinamicXEngine;Landroid/content/Context;Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/android/dinamicx/DXRenderPipeline;Lcom/taobao/android/dinamicx/DXRenderOptions;)Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v2

    .line 463
    iget-object v1, p0, Lcom/taobao/android/dinamicx/DinamicXEngine$1;->this$0:Lcom/taobao/android/dinamicx/DinamicXEngine;

    invoke-static {v1}, Lcom/taobao/android/dinamicx/DinamicXEngine;->access$100(Lcom/taobao/android/dinamicx/DinamicXEngine;)Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;

    move-result-object v1

    iget-object v3, p0, Lcom/taobao/android/dinamicx/DinamicXEngine$1;->this$0:Lcom/taobao/android/dinamicx/DinamicXEngine;

    iget-object v4, v3, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxTemplateManager:Lcom/taobao/android/dinamicx/DXTemplateManager;

    iget-object v3, p0, Lcom/taobao/android/dinamicx/DinamicXEngine$1;->this$0:Lcom/taobao/android/dinamicx/DinamicXEngine;

    iget-object v5, v3, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxPipelineCacheManager:Lcom/taobao/android/dinamicx/DXPipelineCacheManager;

    iget-object v3, p0, Lcom/taobao/android/dinamicx/DinamicXEngine$1;->this$0:Lcom/taobao/android/dinamicx/DinamicXEngine;

    iget-object v6, v3, Lcom/taobao/android/dinamicx/DinamicXEngine;->dxControlEventCenter:Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->preRenderTemplate(Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/DXRenderOptions;Lcom/taobao/android/dinamicx/DXTemplateManager;Lcom/taobao/android/dinamicx/DXPipelineCacheManager;Lcom/taobao/android/dinamicx/widget/event/DXControlEventCenter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 465
    invoke-static {v0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
