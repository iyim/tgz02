.class Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider$1;
.super Ljava/lang/Object;
.source "DinamicXTemplateProvider.java"

# interfaces
.implements Lcom/taobao/android/dinamicx/notification/IDXNotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider$1;->this$0:Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationListener(Lcom/taobao/android/dinamicx/notification/DXNotificationResult;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 74
    :try_start_0
    iget-object v1, p1, Lcom/taobao/android/dinamicx/notification/DXNotificationResult;->templateUpdateRequestList:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;

    if-nez v2, :cond_2

    goto :goto_0

    .line 80
    :cond_2
    iget v3, v2, Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;->reason:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_1

    .line 83
    iget-object v4, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider$1;->this$0:Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;

    iget-object v5, v2, Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;->item:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    if-eqz v5, :cond_3

    iget-object v2, v2, Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;->item:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    iget-object v2, v2, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, ""

    :goto_1
    const-string v5, "componentRenderError"

    .line 84
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v4, v2, v5, v3}, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->access$000(Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 89
    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u4e4b\u524d\u7684\u6ce8\u518c"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "DinamicXTemplateProvider"

    invoke-static {v1, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 92
    :cond_4
    iget-object v1, p1, Lcom/taobao/android/dinamicx/notification/DXNotificationResult;->finishedTemplateItems:Ljava/util/List;

    .line 93
    iget-object v2, p1, Lcom/taobao/android/dinamicx/notification/DXNotificationResult;->failedTemplateItems:Ljava/util/List;

    .line 94
    iget-object p1, p1, Lcom/taobao/android/dinamicx/notification/DXNotificationResult;->templateUpdateRequestList:Ljava/util/List;

    .line 96
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider$1;->this$0:Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;

    invoke-static {v3}, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->access$100(Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;)Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 97
    new-instance v3, Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadResult;

    invoke-direct {v3}, Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadResult;-><init>()V

    .line 98
    invoke-static {v1}, Lcom/alibaba/android/ultron/vfw/convert/TemplateEntityConvert;->convertToDynamicTemplateList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadResult;->finishedTemplates:Ljava/util/ArrayList;

    .line 99
    invoke-static {v2}, Lcom/alibaba/android/ultron/vfw/convert/TemplateEntityConvert;->convertToDynamicTemplateList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v3, Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadResult;->failedTemplates:Ljava/util/ArrayList;

    .line 100
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider$1;->this$0:Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;

    invoke-static {v2}, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->access$100(Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;)Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadListener;->onFinished(Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadResult;)V

    :cond_5
    const/16 v2, 0x1f

    if-eqz v1, :cond_6

    .line 103
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider$1;->this$0:Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;

    invoke-static {v3}, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->access$200(Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;)Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContainerRefreshType()I

    move-result v3

    if-ne v3, v0, :cond_6

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider$1;->this$0:Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;

    invoke-static {v0, v1}, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->access$300(Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;Ljava/util/List;)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider$1;->this$0:Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->access$200(Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;)Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->rebuild(I)V

    .line 109
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider$1;->this$0:Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->access$200(Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;)Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/util/ConfigUtils;->dxDowngrade2Preset(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider$1;->this$0:Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;

    invoke-static {v0, p1}, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->access$400(Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 112
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider$1;->this$0:Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->access$200(Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;)Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->rebuild(I)V

    :cond_7
    return-void
.end method
